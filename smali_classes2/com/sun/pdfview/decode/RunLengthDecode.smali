.class public Lcom/sun/pdfview/decode/RunLengthDecode;
.super Ljava/lang/Object;


# static fields
.field private static final RUN_LENGTH_EOD:I = 0x80


# instance fields
.field private buf:Lc/a/a/b/b;


# direct methods
.method private constructor <init>(Lc/a/a/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/decode/RunLengthDecode;->buf:Lc/a/a/b/b;

    return-void
.end method

.method private decode()Lc/a/a/b/b;
    .locals 8

    const/16 v7, 0x80

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/decode/RunLengthDecode;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->e()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v3, v7, [B

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/decode/RunLengthDecode;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->b()B

    move-result v4

    const/4 v0, -0x1

    if-eq v4, v0, :cond_1

    if-ne v4, v7, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/b;->d([B)Lc/a/a/b/b;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v0, 0x7f

    if-gt v4, v0, :cond_3

    add-int/lit8 v0, v4, 0x1

    :goto_0
    if-lez v0, :cond_0

    iget-object v4, p0, Lcom/sun/pdfview/decode/RunLengthDecode;->buf:Lc/a/a/b/b;

    invoke-virtual {v4, v3, v1, v0}, Lc/a/a/b/b;->a([BII)V

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/pdfview/decode/RunLengthDecode;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->b()B

    move-result v5

    move v0, v1

    :goto_1
    and-int/lit16 v6, v4, 0xff

    rsub-int v6, v6, 0x101

    if-ge v0, v6, :cond_0

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static decode(Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;
    .locals 1

    new-instance v0, Lcom/sun/pdfview/decode/RunLengthDecode;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/decode/RunLengthDecode;-><init>(Lc/a/a/b/b;)V

    invoke-direct {v0}, Lcom/sun/pdfview/decode/RunLengthDecode;->decode()Lc/a/a/b/b;

    move-result-object v0

    return-object v0
.end method
