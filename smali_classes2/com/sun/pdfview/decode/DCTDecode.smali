.class public Lcom/sun/pdfview/decode/DCTDecode;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decode(Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;
    .locals 5

    invoke-virtual {p1}, Lc/a/a/b/b;->e()V

    invoke-virtual {p1}, Lc/a/a/b/b;->c()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lc/a/a/b/b;->a([B)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "could not decode image of compressed size "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const-string v0, "ANDPDF.dctdecode"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "decoded image type"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    :cond_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-static {v0}, Lc/a/a/b/b;->a(Ljava/nio/ByteBuffer;)Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/b/b;->e()V

    return-object v0
.end method
