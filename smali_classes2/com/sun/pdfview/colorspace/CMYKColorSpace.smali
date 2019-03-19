.class public Lcom/sun/pdfview/colorspace/CMYKColorSpace;
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

    const-string v0, "CMYK"

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public toColor([F)I
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v0, 0x3

    aget v0, p1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    sub-float v0, v4, v0

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    aget v1, p1, v1

    sub-float v1, v4, v1

    mul-float/2addr v1, v0

    const/4 v2, 0x1

    aget v2, p1, v2

    sub-float v2, v4, v2

    mul-float/2addr v2, v0

    const/4 v3, 0x2

    aget v3, p1, v3

    sub-float v3, v4, v3

    mul-float/2addr v0, v3

    float-to-int v1, v1

    float-to-int v2, v2

    float-to-int v0, v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public toColor([I)I
    .locals 4

    const/4 v0, 0x3

    aget v0, p1, v0

    rsub-int v0, v0, 0xff

    const/4 v1, 0x0

    aget v1, p1, v1

    rsub-int v1, v1, 0xff

    mul-int/2addr v1, v0

    div-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget v2, p1, v2

    rsub-int v2, v2, 0xff

    mul-int/2addr v2, v0

    div-int/lit16 v2, v2, 0xff

    const/4 v3, 0x2

    aget v3, p1, v3

    rsub-int v3, v3, 0xff

    mul-int/2addr v0, v3

    div-int/lit16 v0, v0, 0xff

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method
