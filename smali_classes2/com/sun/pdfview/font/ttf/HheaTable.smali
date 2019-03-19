.class public Lcom/sun/pdfview/font/ttf/HheaTable;
.super Lcom/sun/pdfview/font/ttf/TrueTypeTable;


# instance fields
.field private advanceWidthMax:S

.field private ascent:S

.field private caretOffset:S

.field private caretSlopeRise:S

.field private caretSlopeRun:S

.field private descent:S

.field private lineGap:S

.field private metricDataFormat:S

.field private minLeftSideBearing:S

.field private minRightSideBearing:S

.field private numOfLongHorMetrics:S

.field private version:I

.field private xMaxExtent:S


# direct methods
.method protected constructor <init>()V
    .locals 1

    const v0, 0x68656164

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;-><init>(I)V

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setVersion(I)V

    return-void
.end method


# virtual methods
.method public getAdvanceWidthMax()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->advanceWidthMax:S

    return v0
.end method

.method public getAscent()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->ascent:S

    return v0
.end method

.method public getCaretOffset()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->caretOffset:S

    return v0
.end method

.method public getCaretSlopeRise()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->caretSlopeRise:S

    return v0
.end method

.method public getCaretSlopeRun()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->caretSlopeRun:S

    return v0
.end method

.method public getData()Lc/a/a/b/b;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getLength()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getAscent()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getDescent()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getLineGap()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getAdvanceWidthMax()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getMinLeftSideBearing()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getMinRightSideBearing()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getXMaxExtent()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getCaretSlopeRise()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getCaretSlopeRun()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getCaretOffset()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v0, v2}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v0, v2}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v0, v2}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v0, v2}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getMetricDataFormat()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getNumOfLongHorMetrics()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v0}, Lc/a/a/b/b;->j()V

    return-object v0
.end method

.method public getDescent()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->descent:S

    return v0
.end method

.method public getLength()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public getLineGap()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->lineGap:S

    return v0
.end method

.method public getMetricDataFormat()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->metricDataFormat:S

    return v0
.end method

.method public getMinLeftSideBearing()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->minLeftSideBearing:S

    return v0
.end method

.method public getMinRightSideBearing()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->minRightSideBearing:S

    return v0
.end method

.method public getNumOfLongHorMetrics()I
    .locals 2

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->numOfLongHorMetrics:S

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->version:I

    return v0
.end method

.method public getXMaxExtent()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->xMaxExtent:S

    return v0
.end method

.method public setAdvanceWidthMax(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->advanceWidthMax:S

    return-void
.end method

.method public setAscent(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->ascent:S

    return-void
.end method

.method public setCaretOffset(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->caretOffset:S

    return-void
.end method

.method public setCaretSlopeRise(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->caretSlopeRise:S

    return-void
.end method

.method public setCaretSlopeRun(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->caretSlopeRun:S

    return-void
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 2

    invoke-virtual {p1}, Lc/a/a/b/b;->c()I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad Head table size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setVersion(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setAscent(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setDescent(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setLineGap(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setAdvanceWidthMax(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setMinLeftSideBearing(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setMinRightSideBearing(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setXMaxExtent(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setCaretSlopeRise(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setCaretSlopeRun(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setCaretOffset(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setMetricDataFormat(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->setNumOfLongHorMetrics(S)V

    return-void
.end method

.method public setDescent(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->descent:S

    return-void
.end method

.method public setLineGap(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->lineGap:S

    return-void
.end method

.method public setMetricDataFormat(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->metricDataFormat:S

    return-void
.end method

.method public setMinLeftSideBearing(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->minLeftSideBearing:S

    return-void
.end method

.method public setMinRightSideBearing(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->minRightSideBearing:S

    return-void
.end method

.method public setNumOfLongHorMetrics(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->numOfLongHorMetrics:S

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->version:I

    return-void
.end method

.method public setXMaxExtent(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HheaTable;->xMaxExtent:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "    "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Version             : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Ascent              : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getAscent()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Descent             : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getDescent()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "LineGap             : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getLineGap()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "AdvanceWidthMax     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getAdvanceWidthMax()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MinLSB              : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getMinLeftSideBearing()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MinRSB              : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getMinRightSideBearing()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MaxExtent           : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getXMaxExtent()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "CaretSlopeRise      : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getCaretSlopeRise()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "CaretSlopeRun       : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getCaretSlopeRun()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "CaretOffset         : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getCaretOffset()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MetricDataFormat    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getMetricDataFormat()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "NumOfLongHorMetrics : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getNumOfLongHorMetrics()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
