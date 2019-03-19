.class public Lcom/sun/pdfview/colorspace/RGBColorSpace;
.super Lcom/sun/pdfview/colorspace/PDFColorSpace;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "RGB"

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toColor([F)I
    .locals 4

    const/high16 v3, 0x437f0000    # 255.0f

    const/4 v0, 0x0

    aget v0, p1, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public toColor([I)I
    .locals 3

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method
