.class public Lcom/sun/pdfview/decode/ASCII85Decode;
.super Ljava/lang/Object;


# instance fields
.field private buf:Lc/a/a/b/b;


# direct methods
.method private constructor <init>(Lc/a/a/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/decode/ASCII85Decode;->buf:Lc/a/a/b/b;

    return-void
.end method

.method private decode()Lc/a/a/b/b;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/decode/ASCII85Decode;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->e()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    invoke-direct {p0, v0}, Lcom/sun/pdfview/decode/ASCII85Decode;->decode5(Ljava/io/ByteArrayOutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/b;->d([B)Lc/a/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;
    .locals 1

    new-instance v0, Lcom/sun/pdfview/decode/ASCII85Decode;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/decode/ASCII85Decode;-><init>(Lc/a/a/b/b;)V

    invoke-direct {v0}, Lcom/sun/pdfview/decode/ASCII85Decode;->decode()Lc/a/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method private decode5(Ljava/io/ByteArrayOutputStream;)Z
    .locals 8

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x4

    const/4 v3, 0x0

    new-array v4, v7, [I

    move v0, v3

    :goto_0
    if-lt v0, v7, :cond_2

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    aget v5, v4, v3

    mul-int/lit8 v5, v5, 0x55

    mul-int/lit8 v5, v5, 0x55

    mul-int/lit8 v5, v5, 0x55

    mul-int/lit8 v5, v5, 0x55

    aget v6, v4, v2

    mul-int/lit8 v6, v6, 0x55

    mul-int/lit8 v6, v6, 0x55

    mul-int/lit8 v6, v6, 0x55

    add-int/2addr v5, v6

    const/4 v6, 0x2

    aget v6, v4, v6

    mul-int/lit8 v6, v6, 0x55

    mul-int/lit8 v6, v6, 0x55

    add-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v4, v6

    mul-int/lit8 v6, v6, 0x55

    add-int/2addr v5, v6

    aget v4, v4, v1

    add-int/2addr v5, v4

    move v4, v3

    :goto_1
    if-lt v4, v0, :cond_7

    if-ne v0, v1, :cond_8

    move v0, v2

    :goto_2
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/sun/pdfview/decode/ASCII85Decode;->nextChar()I

    move-result v5

    aput v5, v4, v0

    aget v5, v4, v0

    const/16 v6, 0x7e

    if-ne v5, v6, :cond_3

    invoke-direct {p0}, Lcom/sun/pdfview/decode/ASCII85Decode;->nextChar()I

    move-result v5

    const/16 v6, 0x3e

    if-eq v5, v6, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Bad character in ASCII85Decode: not ~>"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aget v5, v4, v0

    const/16 v6, 0x21

    if-lt v5, v6, :cond_4

    aget v5, v4, v0

    const/16 v6, 0x75

    if-gt v5, v6, :cond_4

    aget v5, v4, v0

    add-int/lit8 v5, v5, -0x21

    aput v5, v4, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    aget v5, v4, v0

    const/16 v6, 0x7a

    if-ne v5, v6, :cond_6

    if-nez v0, :cond_5

    aput v3, v4, v0

    move v0, v1

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Inappropriate \'z\' in ASCII85Decode"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad character in ASCII85Decode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v4, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, v4, v0

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    rsub-int/lit8 v6, v4, 0x3

    mul-int/lit8 v6, v6, 0x8

    shr-int v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    move v0, v3

    goto/16 :goto_2
.end method

.method private nextChar()I
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/decode/ASCII85Decode;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->c()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/decode/ASCII85Decode;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->b()B

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Lcom/sun/pdfview/PDFFile;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method
