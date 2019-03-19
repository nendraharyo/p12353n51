.class public abstract Lcom/sun/pdfview/colorspace/PDFColorSpace;
.super Ljava/lang/Object;


# static fields
.field public static final COLORSPACE_ALTERNATE:I = 0x5

.field public static final COLORSPACE_CMYK:I = 0x2

.field public static final COLORSPACE_GRAY:I = 0x0

.field public static final COLORSPACE_INDEXED:I = 0x4

.field public static final COLORSPACE_PATTERN:I = 0x3

.field public static final COLORSPACE_RGB:I = 0x1

.field private static cmykSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

.field private static graySpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

.field private static patternSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

.field private static rgbSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/colorspace/RGBColorSpace;

    invoke-direct {v0}, Lcom/sun/pdfview/colorspace/RGBColorSpace;-><init>()V

    sput-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->rgbSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    new-instance v0, Lcom/sun/pdfview/colorspace/CMYKColorSpace;

    invoke-direct {v0}, Lcom/sun/pdfview/colorspace/CMYKColorSpace;-><init>()V

    sput-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->cmykSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    new-instance v0, Lcom/sun/pdfview/colorspace/RGBColorSpace;

    invoke-direct {v0}, Lcom/sun/pdfview/colorspace/RGBColorSpace;-><init>()V

    sput-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->patternSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    new-instance v0, Lcom/sun/pdfview/colorspace/GrayColorSpace;

    invoke-direct {v0}, Lcom/sun/pdfview/colorspace/GrayColorSpace;-><init>()V

    sput-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->graySpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Color Space name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->graySpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->rgbSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->cmykSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->patternSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getColorSpace(Lcom/sun/pdfview/PDFObject;Ljava/util/Map;)Lcom/sun/pdfview/colorspace/PDFColorSpace;
    .locals 8

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz p1, :cond_13

    const-string v0, "ColorSpace"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    :goto_0
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceGray"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {v7}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-string v3, "DeviceRGB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "RGB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {v5}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v3, "DeviceCMYK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "CMYK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-static {v4}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v3, "Pattern"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v6}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object p0

    :cond_7
    if-nez p0, :cond_8

    move-object v0, v1

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getCache()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    aget-object v0, v1, v7

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CalGray"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->graySpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->setCache(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    const-string v2, "CalRGB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->rgbSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    goto :goto_2

    :cond_b
    const-string v2, "Lab"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->rgbSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    goto :goto_2

    :cond_c
    const-string v2, "ICCBased"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->rgbSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    goto :goto_2

    :cond_d
    const-string v2, "Separation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "DeviceN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    aget-object v0, v1, v4

    invoke-static {v0, p1}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(Lcom/sun/pdfview/PDFObject;Ljava/util/Map;)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v2

    aget-object v0, v1, v6

    invoke-static {v0}, Lcom/sun/pdfview/function/PDFFunction;->getFunction(Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/function/PDFFunction;

    move-result-object v1

    new-instance v0, Lcom/sun/pdfview/colorspace/AlternateColorSpace;

    invoke-direct {v0, v2, v1}, Lcom/sun/pdfview/colorspace/AlternateColorSpace;-><init>(Lcom/sun/pdfview/colorspace/PDFColorSpace;Lcom/sun/pdfview/function/PDFFunction;)V

    goto :goto_2

    :cond_f
    const-string v2, "Indexed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "I"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    aget-object v0, v1, v5

    invoke-static {v0, p1}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(Lcom/sun/pdfview/PDFObject;Ljava/util/Map;)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v2

    aget-object v0, v1, v4

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v3

    new-instance v0, Lcom/sun/pdfview/colorspace/IndexedColor;

    aget-object v1, v1, v6

    invoke-direct {v0, v2, v3, v1}, Lcom/sun/pdfview/colorspace/IndexedColor;-><init>(Lcom/sun/pdfview/colorspace/PDFColorSpace;ILcom/sun/pdfview/PDFObject;)V

    goto :goto_2

    :cond_11
    const-string v2, "Pattern"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v0, Lcom/sun/pdfview/colorspace/PDFColorSpace;->rgbSpace:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    goto/16 :goto_1

    :cond_12
    new-instance v2, Lcom/sun/pdfview/PDFParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown color space: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " with "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public getFillPaint([F)Lcom/sun/pdfview/PDFPaint;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->toColor([F)I

    move-result v0

    invoke-static {v0}, Lcom/sun/pdfview/PDFPaint;->getPaint(I)Lcom/sun/pdfview/PDFPaint;

    move-result-object v0

    return-object v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumComponents()I
.end method

.method public getPaint([F)Lcom/sun/pdfview/PDFPaint;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->toColor([F)I

    move-result v0

    invoke-static {v0}, Lcom/sun/pdfview/PDFPaint;->getColorPaint(I)Lcom/sun/pdfview/PDFPaint;

    move-result-object v0

    return-object v0
.end method

.method public abstract getType()I
.end method

.method public abstract toColor([F)I
.end method

.method public abstract toColor([I)I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ColorSpace["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
