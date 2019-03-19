.class public Lcom/sun/pdfview/PDFImage;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AWTPDF.pdfimage"

.field public static sShowImages:Z


# instance fields
.field private bpc:I

.field private colorKeyMask:[I

.field private colorSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

.field private decode:[F

.field private height:I

.field private imageMask:Z

.field private imageObj:Lcom/sun/pdfview/PDFObject;

.field private sMask:Lcom/sun/pdfview/PDFImage;

.field private width:I


# direct methods
.method protected constructor <init>(Lcom/sun/pdfview/PDFObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/pdfview/PDFImage;->colorKeyMask:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/pdfview/PDFImage;->imageMask:Z

    iput-object p1, p0, Lcom/sun/pdfview/PDFImage;->imageObj:Lcom/sun/pdfview/PDFObject;

    return-void
.end method

.method public static createImage(Lcom/sun/pdfview/PDFObject;Ljava/util/Map;)Lcom/sun/pdfview/PDFImage;
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    new-instance v1, Lcom/sun/pdfview/PDFImage;

    invoke-direct {v1, p0}, Lcom/sun/pdfview/PDFImage;-><init>(Lcom/sun/pdfview/PDFObject;)V

    const-string v2, "Width"

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to read image width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/PDFImage;->setWidth(I)V

    const-string v2, "Height"

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to get image height: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/PDFImage;->setHeight(I)V

    const-string v2, "ImageMask"

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getBooleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sun/pdfview/PDFImage;->setImageMask(Z)V

    :cond_2
    invoke-virtual {v1}, Lcom/sun/pdfview/PDFImage;->isImageMask()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sun/pdfview/PDFImage;->setBitsPerComponent(I)V

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    const-string v3, "Decode"

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    new-array v3, v5, [I

    fill-array-data v3, :array_1

    :cond_3
    invoke-static {v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/pdfview/PDFImage;->setColorSpace(Lcom/sun/pdfview/colorspace/PDFColorSpace;)V

    :goto_0
    const-string v3, "Decode"

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [F

    :goto_1
    array-length v5, v3

    if-lt v0, v5, :cond_a

    invoke-virtual {v1, v4}, Lcom/sun/pdfview/PDFImage;->setDecode([F)V

    :cond_4
    if-nez v2, :cond_6

    const-string v0, "SMask"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "Mask"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_b

    :try_start_0
    invoke-static {v0, p1}, Lcom/sun/pdfview/PDFImage;->createImage(Lcom/sun/pdfview/PDFObject;Ljava/util/Map;)Lcom/sun/pdfview/PDFImage;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFImage;->setSMask(Lcom/sun/pdfview/PDFImage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    return-object v1

    :cond_7
    const-string v3, "BitsPerComponent"

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    if-nez v3, :cond_8

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to get bits per component: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sun/pdfview/PDFImage;->setBitsPerComponent(I)V

    const-string v3, "ColorSpace"

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    if-nez v3, :cond_9

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No ColorSpace for image: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-static {v3, p1}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(Lcom/sun/pdfview/PDFObject;Ljava/util/Map;)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sun/pdfview/PDFImage;->setColorSpace(Lcom/sun/pdfview/colorspace/PDFColorSpace;)V

    goto :goto_0

    :cond_a
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "ERROR: there was a problem parsing the mask for this object"

    invoke-static {v2}, Lcom/sun/pdfview/PDFImage;->p(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sun/pdfview/PDFImage;->dump(Lcom/sun/pdfview/PDFObject;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    :try_start_1
    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFImage;->setColorKeyMask(Lcom/sun/pdfview/PDFObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "ERROR: there was a problem parsing the color mask for this object"

    invoke-static {v2}, Lcom/sun/pdfview/PDFImage;->p(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/sun/pdfview/PDFImage;->dump(Lcom/sun/pdfview/PDFObject;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2

    :array_0
    .array-data 4
        -0x1000000
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1000000
    .end array-data
.end method

.method public static dump(Lcom/sun/pdfview/PDFObject;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dumping PDF object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/pdfview/PDFImage;->p(Ljava/lang/String;)V

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   dict = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/pdfview/PDFImage;->p(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/pdfview/PDFImage;->p(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private normalize([B[FI)[F
    .locals 8

    if-nez p2, :cond_0

    array-length v0, p1

    add-int/2addr v0, p3

    new-array p2, v0, [F

    :cond_0
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getDecode()[F

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    return-object p2

    :cond_1
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getBitsPerComponent()I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v4, v0, 0x2

    aget v4, v1, v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v1, v5

    add-int v6, p3, v0

    int-to-float v2, v2

    const/4 v7, 0x0

    int-to-float v3, v3

    invoke-static {v2, v7, v3, v4, v5}, Lcom/sun/pdfview/function/FunctionType0;->interpolate(FFFFF)F

    move-result v2

    aput v2, p2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static p(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private parseData([B)Landroid/graphics/Bitmap;
    .locals 14

    const/high16 v13, -0x1000000

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v0, "AWTPDF.pdfimage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Creating Image width="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", bpc="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getBitsPerComponent()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",cs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sun/pdfview/PDFImage;->colorSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sun/pdfview/PDFImage;->colorSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "image without colorspace"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFImage;->colorSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-virtual {v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getType()I

    move-result v0

    if-ne v0, v7, :cond_4

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getWidth()I

    move-result v3

    array-length v0, p1

    mul-int/lit8 v1, v3, 0x2

    mul-int/2addr v1, v9

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "AWTPDF.pdfimage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "millis for converting image="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v10

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getHeight()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-array v1, v3, [I

    move v5, v2

    move v4, v2

    :goto_0
    if-ge v5, v9, :cond_1

    move v8, v4

    move v4, v2

    :goto_1
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getWidth()I

    move-result v6

    if-lt v4, v6, :cond_3

    move v4, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_0

    :cond_3
    aget-byte v6, p1, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v12, v8, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v6, v12

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v12, v8, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v6, v12

    or-int/2addr v6, v13

    aput v6, v1, v4

    add-int/lit8 v6, v8, 0x3

    add-int/lit8 v4, v4, 0x1

    move v8, v6

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sun/pdfview/PDFImage;->colorSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-virtual {v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getType()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getWidth()I

    move-result v3

    new-array v1, v3, [I

    move v5, v2

    move v4, v2

    :goto_2
    if-ge v5, v9, :cond_1

    move v8, v4

    move v4, v2

    :goto_3
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getWidth()I

    move-result v6

    if-lt v4, v6, :cond_5

    move v4, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_2

    :cond_5
    aget-byte v6, p1, v8

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v12, v6, 0x8

    or-int/2addr v12, v6

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v6, v12

    or-int/2addr v6, v13

    aput v6, v1, v4

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    move v8, v6

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/sun/pdfview/PDFImage;->colorSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-virtual {v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getWidth()I

    move-result v3

    new-array v1, v3, [I

    new-array v12, v7, [I

    move v5, v2

    move v4, v2

    :goto_4
    if-ge v5, v9, :cond_1

    move v8, v4

    move v4, v2

    :goto_5
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFImage;->getWidth()I

    move-result v6

    if-lt v4, v6, :cond_7

    move v4, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto :goto_4

    :cond_7
    aget-byte v6, p1, v8

    and-int/lit16 v6, v6, 0xff

    aput v6, v12, v2

    iget-object v6, p0, Lcom/sun/pdfview/PDFImage;->colorSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-virtual {v6, v12}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->toColor([I)I

    move-result v6

    aput v6, v1, v4

    add-int/lit8 v6, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    move v8, v6

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "image with unsupported colorspace "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/pdfview/PDFImage;->colorSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setColorKeyMask(Lcom/sun/pdfview/PDFObject;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/pdfview/PDFImage;->colorKeyMask:[I

    array-length v0, v1

    new-array v2, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    iput-object v2, p0, Lcom/sun/pdfview/PDFImage;->colorKeyMask:[I

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getBitsPerComponent()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFImage;->bpc:I

    return v0
.end method

.method protected getColorSpace()Lcom/sun/pdfview/colorspace/PDFColorSpace;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFImage;->colorSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    return-object v0
.end method

.method protected getDecode()[F
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFImage;->decode:[F

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFImage;->height:I

    return v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 15

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFImage;->imageObj:Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sun/pdfview/PDFImage;->sShowImages:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "do not show images"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Error reading image"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sun/pdfview/PDFImage;->imageObj:Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFImage;->parseData([B)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/pdfview/PDFImage;->imageObj:Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v2, v0}, Lcom/sun/pdfview/PDFObject;->setCache(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, "AWTPDF.pdfimage"

    const-string v2, "image too large (OutOfMemoryError)"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xf

    const/16 v13, 0xe

    const/4 v14, 0x6

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v3, v13

    int-to-float v4, v13

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v13

    int-to-float v3, v13

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v7, v14

    int-to-float v9, v14

    int-to-float v10, v13

    move-object v6, v0

    move v8, v1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v2, v14

    int-to-float v3, v13

    int-to-float v4, v14

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object v0, v12

    goto :goto_0
.end method

.method public getSMask()Lcom/sun/pdfview/PDFImage;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFImage;->sMask:Lcom/sun/pdfview/PDFImage;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFImage;->width:I

    return v0
.end method

.method public isImageMask()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/pdfview/PDFImage;->imageMask:Z

    return v0
.end method

.method protected setBitsPerComponent(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFImage;->bpc:I

    return-void
.end method

.method protected setColorSpace(Lcom/sun/pdfview/colorspace/PDFColorSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/PDFImage;->colorSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    return-void
.end method

.method protected setDecode([F)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/PDFImage;->decode:[F

    return-void
.end method

.method protected setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFImage;->height:I

    return-void
.end method

.method public setImageMask(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/pdfview/PDFImage;->imageMask:Z

    return-void
.end method

.method protected setSMask(Lcom/sun/pdfview/PDFImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/PDFImage;->sMask:Lcom/sun/pdfview/PDFImage;

    return-void
.end method

.method protected setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFImage;->width:I

    return-void
.end method
