.class public Lcom/sun/pdfview/colorspace/AlternateColorSpace;
.super Lcom/sun/pdfview/colorspace/PDFColorSpace;


# instance fields
.field private alternate:Lcom/sun/pdfview/colorspace/PDFColorSpace;

.field private function:Lcom/sun/pdfview/function/PDFFunction;


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/colorspace/PDFColorSpace;Lcom/sun/pdfview/function/PDFFunction;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/colorspace/AlternateColorSpace;->alternate:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iput-object p2, p0, Lcom/sun/pdfview/colorspace/AlternateColorSpace;->function:Lcom/sun/pdfview/function/PDFFunction;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ALTERNATE"

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/colorspace/AlternateColorSpace;->function:Lcom/sun/pdfview/function/PDFFunction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/colorspace/AlternateColorSpace;->function:Lcom/sun/pdfview/function/PDFFunction;

    invoke-virtual {v0}, Lcom/sun/pdfview/function/PDFFunction;->getNumInputs()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/colorspace/AlternateColorSpace;->alternate:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-virtual {v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getNumComponents()I

    move-result v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public toColor([F)I
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sun/pdfview/colorspace/AlternateColorSpace;->function:Lcom/sun/pdfview/function/PDFFunction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/colorspace/AlternateColorSpace;->function:Lcom/sun/pdfview/function/PDFFunction;

    invoke-virtual {v0, p1}, Lcom/sun/pdfview/function/PDFFunction;->calculate([F)[F

    move-result-object p1

    :cond_0
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
    .locals 3

    array-length v0, p1

    new-array v1, v0, [F

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/colorspace/AlternateColorSpace;->toColor([F)I

    move-result v0

    return v0

    :cond_0
    aget v2, p1, v0

    div-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
