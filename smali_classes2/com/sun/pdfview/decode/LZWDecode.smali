.class public Lcom/sun/pdfview/decode/LZWDecode;
.super Ljava/lang/Object;


# static fields
.field static CLEARDICT:I

.field static STOP:I


# instance fields
.field bitpos:I

.field bitspercode:I

.field buf:Lc/a/a/b/b;

.field bytepos:I

.field dict:[[B

.field dictlen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x101

    sput v0, Lcom/sun/pdfview/decode/LZWDecode;->STOP:I

    const/16 v0, 0x100

    sput v0, Lcom/sun/pdfview/decode/LZWDecode;->CLEARDICT:I

    return-void
.end method

.method private constructor <init>(Lc/a/a/b/b;)V
    .locals 5

    const/16 v4, 0x9

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    iput v1, p0, Lcom/sun/pdfview/decode/LZWDecode;->dictlen:I

    iput v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitspercode:I

    move v0, v1

    :goto_0
    const/16 v2, 0x100

    if-lt v0, v2, :cond_0

    const/16 v0, 0x102

    iput v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->dictlen:I

    iput v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitspercode:I

    iput-object p1, p0, Lcom/sun/pdfview/decode/LZWDecode;->buf:Lc/a/a/b/b;

    iput v1, p0, Lcom/sun/pdfview/decode/LZWDecode;->bytepos:I

    iput v1, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitpos:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    const/4 v3, 0x1

    new-array v3, v3, [B

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private decode()Lc/a/a/b/b;
    .locals 7

    const/4 v6, 0x0

    sget v0, Lcom/sun/pdfview/decode/LZWDecode;->CLEARDICT:I

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-direct {p0}, Lcom/sun/pdfview/decode/LZWDecode;->nextCode()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Missed the stop code in LZWDecode!"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget v3, Lcom/sun/pdfview/decode/LZWDecode;->STOP:I

    if-ne v1, v3, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/b;->d([B)Lc/a/a/b/b;

    move-result-object v0

    return-object v0

    :cond_1
    sget v3, Lcom/sun/pdfview/decode/LZWDecode;->CLEARDICT:I

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lcom/sun/pdfview/decode/LZWDecode;->resetDict()V

    move v0, v1

    goto :goto_0

    :cond_2
    sget v3, Lcom/sun/pdfview/decode/LZWDecode;->CLEARDICT:I

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v0, v0, v1

    iget-object v3, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v3, v3, v1

    array-length v3, v3

    invoke-virtual {v2, v0, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/sun/pdfview/decode/LZWDecode;->dictlen:I

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v4, v4, v1

    array-length v4, v4

    invoke-virtual {v2, v3, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v3, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v3, v3, v0

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v5, v5, v0

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v0, v4, v0

    array-length v0, v0

    iget-object v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v4, v4, v1

    aget-byte v4, v4, v6

    aput-byte v4, v3, v0

    iget-object v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    iget v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->dictlen:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/pdfview/decode/LZWDecode;->dictlen:I

    aput-object v3, v0, v4

    :goto_1
    iget v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->dictlen:I

    const/4 v3, 0x1

    iget v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitspercode:I

    shl-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_5

    iget v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitspercode:I

    const/16 v3, 0xc

    if-ge v0, v3, :cond_5

    iget v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitspercode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitspercode:I

    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v3, v3, v0

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [B

    iget-object v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v5, v5, v0

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    aget-object v0, v4, v0

    array-length v0, v0

    aget-byte v4, v3, v6

    aput-byte v4, v3, v0

    array-length v0, v3

    invoke-virtual {v2, v3, v6, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->dict:[[B

    iget v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->dictlen:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sun/pdfview/decode/LZWDecode;->dictlen:I

    aput-object v3, v0, v4

    goto :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method public static decode(Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;
    .locals 3

    new-instance v0, Lcom/sun/pdfview/decode/LZWDecode;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/decode/LZWDecode;-><init>(Lc/a/a/b/b;)V

    invoke-direct {v0}, Lcom/sun/pdfview/decode/LZWDecode;->decode()Lc/a/a/b/b;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Predictor"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/sun/pdfview/decode/Predictor;->getPredictor(Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/decode/Predictor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/decode/Predictor;->unpredict(Lc/a/a/b/b;)Lc/a/a/b/b;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private nextCode()I
    .locals 7

    const/4 v3, 0x0

    iget v1, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitspercode:I

    iget v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->bytepos:I

    iget-object v2, p0, Lcom/sun/pdfview/decode/LZWDecode;->buf:Lc/a/a/b/b;

    invoke-virtual {v2}, Lc/a/a/b/b;->f()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_3

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->buf:Lc/a/a/b/b;

    iget v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->bytepos:I

    invoke-virtual {v0, v4}, Lc/a/a/b/b;->b(I)B

    move-result v4

    iget v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitpos:I

    rsub-int/lit8 v0, v0, 0x8

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget v5, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitpos:I

    rsub-int/lit8 v5, v5, 0x8

    sub-int/2addr v5, v0

    shr-int/2addr v4, v5

    const/16 v5, 0xff

    rsub-int/lit8 v6, v0, 0x8

    shr-int/2addr v5, v6

    and-int/2addr v4, v5

    sub-int v5, v1, v0

    shl-int/2addr v4, v5

    or-int/2addr v2, v4

    sub-int/2addr v1, v0

    iget v4, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitpos:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitpos:I

    iget v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitpos:I

    const/16 v4, 0x8

    if-lt v0, v4, :cond_2

    iput v3, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitpos:I

    iget v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->bytepos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->bytepos:I

    :cond_2
    :goto_1
    if-gtz v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private resetDict()V
    .locals 1

    const/16 v0, 0x102

    iput v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->dictlen:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/sun/pdfview/decode/LZWDecode;->bitspercode:I

    return-void
.end method
