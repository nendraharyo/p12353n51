.class public Lcom/sun/pdfview/decode/ASCIIHexDecode;
.super Ljava/lang/Object;


# instance fields
.field private buf:Lc/a/a/b/b;


# direct methods
.method private constructor <init>(Lc/a/a/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/decode/ASCIIHexDecode;->buf:Lc/a/a/b/b;

    return-void
.end method

.method private decode()Lc/a/a/b/b;
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/sun/pdfview/decode/ASCIIHexDecode;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->e()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-direct {p0}, Lcom/sun/pdfview/decode/ASCIIHexDecode;->readHexDigit()I

    move-result v1

    invoke-direct {p0}, Lcom/sun/pdfview/decode/ASCIIHexDecode;->readHexDigit()I

    move-result v2

    if-ne v1, v3, :cond_0

    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/b;->d([B)Lc/a/a/b/b;

    move-result-object v0

    return-object v0

    :cond_0
    if-ne v2, v3, :cond_1

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    shl-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public static decode(Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;
    .locals 1

    new-instance v0, Lcom/sun/pdfview/decode/ASCIIHexDecode;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/decode/ASCIIHexDecode;-><init>(Lc/a/a/b/b;)V

    invoke-direct {v0}, Lcom/sun/pdfview/decode/ASCIIHexDecode;->decode()Lc/a/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method private readHexDigit()I
    .locals 4

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/decode/ASCIIHexDecode;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->c()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Short stream in ASCIIHex decode"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/decode/ASCIIHexDecode;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->b()B

    move-result v0

    int-to-char v1, v0

    invoke-static {v1}, Lcom/sun/pdfview/PDFFile;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_2

    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x30

    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x61

    if-lt v0, v1, :cond_3

    const/16 v1, 0x66

    if-gt v0, v1, :cond_3

    add-int/lit8 v0, v0, -0x57

    goto :goto_0

    :cond_3
    const/16 v1, 0x41

    if-lt v0, v1, :cond_4

    const/16 v1, 0x46

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x37

    goto :goto_0

    :cond_4
    const/16 v1, 0x3e

    if-ne v0, v1, :cond_5

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad character "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "in ASCIIHex decode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
