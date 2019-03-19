.class public Lcom/sun/pdfview/function/FunctionType2;
.super Lcom/sun/pdfview/function/PDFFunction;


# instance fields
.field private c0:[F

.field private c1:[F

.field private n:F


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/pdfview/function/PDFFunction;-><init>(I)V

    new-array v0, v3, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/sun/pdfview/function/FunctionType2;->c0:[F

    new-array v0, v3, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v2

    iput-object v0, p0, Lcom/sun/pdfview/function/FunctionType2;->c1:[F

    return-void
.end method


# virtual methods
.method protected doFunction([FI[FI)V
    .locals 8

    aget v1, p1, p2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType2;->getNumOutputs()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    add-int v2, v0, p4

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/function/FunctionType2;->getC0(I)F

    move-result v3

    float-to-double v4, v1

    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType2;->getN()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/function/FunctionType2;->getC1(I)F

    move-result v6

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/function/FunctionType2;->getC0(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    add-float/2addr v3, v4

    aput v3, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getC0(I)F
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType2;->c0:[F

    aget v0, v0, p1

    return v0
.end method

.method public getC1(I)F
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType2;->c1:[F

    aget v0, v0, p1

    return v0
.end method

.method public getN()F
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/function/FunctionType2;->n:F

    return v0
.end method

.method protected parse(Lcom/sun/pdfview/PDFObject;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "N"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Exponent required for function type 2!"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/function/FunctionType2;->setN(F)V

    const-string v0, "C0"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    array-length v0, v2

    new-array v3, v0, [F

    move v0, v1

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/function/FunctionType2;->setC0([F)V

    :cond_1
    const-string v0, "C1"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [F

    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/function/FunctionType2;->setC1([F)V

    :cond_2
    return-void

    :cond_3
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected setC0([F)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/function/FunctionType2;->c0:[F

    return-void
.end method

.method protected setC1([F)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/function/FunctionType2;->c1:[F

    return-void
.end method

.method protected setN(F)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/function/FunctionType2;->n:F

    return-void
.end method
