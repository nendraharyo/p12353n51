.class public Lcom/sun/pdfview/Identity8BitCharsetEncoder;
.super Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    return-void
.end method


# virtual methods
.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v2, :cond_1

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    if-ltz v0, :cond_2

    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_1
.end method

.method public isLegalReplacement([B)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
