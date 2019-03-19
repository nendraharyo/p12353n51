.class public Lcom/sun/pdfview/font/ttf/HmtxTable;
.super Lcom/sun/pdfview/font/ttf/TrueTypeTable;


# instance fields
.field advanceWidths:[S

.field leftSideBearings:[S


# direct methods
.method protected constructor <init>(Lcom/sun/pdfview/font/ttf/TrueTypeFont;)V
    .locals 2

    const v0, 0x686d7478

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;-><init>(I)V

    const-string v0, "maxp"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/MaxpTable;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getNumGlyphs()I

    move-result v1

    const-string v0, "hhea"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/HheaTable;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/HheaTable;->getNumOfLongHorMetrics()I

    move-result v0

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->leftSideBearings:[S

    return-void
.end method


# virtual methods
.method public getAdvance(I)S
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    aget-short v0, v0, p1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-short v0, v0, v1

    goto :goto_0
.end method

.method public getData()Lc/a/a/b/b;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HmtxTable;->getLength()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->leftSideBearings:[S

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Lc/a/a/b/b;->j()V

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Lc/a/a/b/b;->a(S)V

    :cond_1
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->leftSideBearings:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Lc/a/a/b/b;->a(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLeftSideBearing(I)S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->leftSideBearings:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public getLength()I
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->leftSideBearings:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->leftSideBearings:[S

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/b;->s()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v0, v3, v1}, Ljava/util/Arrays;->fill([SIIS)V

    :cond_1
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->leftSideBearings:[S

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->leftSideBearings:[S

    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->leftSideBearings:[S

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v0, v3, v1}, Ljava/util/Arrays;->fill([SIIS)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->advanceWidths:[S

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v3

    aput-short v3, v2, v0

    :cond_4
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/HmtxTable;->leftSideBearings:[S

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v3

    aput-short v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
