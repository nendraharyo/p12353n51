.class Lcom/sun/pdfview/PDFChangeStrokeCmd;
.super Lcom/sun/pdfview/PDFCmd;


# instance fields
.field ary:[F

.field cap:Landroid/graphics/Paint$Cap;

.field join:Landroid/graphics/Paint$Join;

.field limit:F

.field phase:F

.field w:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, -0x3b860000    # -1000.0f

    invoke-direct {p0}, Lcom/sun/pdfview/PDFCmd;-><init>()V

    iput v1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->w:F

    sget-object v0, Lcom/sun/pdfview/PDFRenderer;->NOCAP:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->cap:Landroid/graphics/Paint$Cap;

    sget-object v0, Lcom/sun/pdfview/PDFRenderer;->NOJOIN:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->join:Landroid/graphics/Paint$Join;

    iput v1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->limit:F

    sget-object v0, Lcom/sun/pdfview/PDFRenderer;->NODASH:[F

    iput-object v0, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->ary:[F

    iput v1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->phase:F

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/pdfview/PDFRenderer;)Landroid/graphics/RectF;
    .locals 7

    iget v1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->w:F

    iget-object v2, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->cap:Landroid/graphics/Paint$Cap;

    iget-object v3, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->join:Landroid/graphics/Paint$Join;

    iget v4, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->limit:F

    iget-object v5, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->ary:[F

    iget v6, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->phase:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sun/pdfview/PDFRenderer;->setStrokeParts(FLandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setDash([FF)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_1
    iput-object p1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->ary:[F

    iput p2, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->phase:F

    return-void

    :cond_1
    aget v1, p1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    const v1, 0x3727c5ac    # 1.0E-5f

    aput v1, p1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public setEndCap(Landroid/graphics/Paint$Cap;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->cap:Landroid/graphics/Paint$Cap;

    return-void
.end method

.method public setLineJoin(Landroid/graphics/Paint$Join;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->join:Landroid/graphics/Paint$Join;

    return-void
.end method

.method public setMiterLimit(F)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->limit:F

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->w:F

    return-void
.end method

.method public toString(Lcom/sun/pdfview/PDFRenderer;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STROKE: w="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->cap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " join="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->join:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->limit:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->ary:[F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sun/pdfview/PDFChangeStrokeCmd;->phase:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
