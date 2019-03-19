.class public Lcom/sun/pdfview/font/ttf/HeadTable;
.super Lcom/sun/pdfview/font/ttf/TrueTypeTable;


# instance fields
.field private checksumAdjustment:I

.field private created:J

.field private flags:S

.field private fontDirectionHint:S

.field private fontRevision:I

.field private glyphDataFormat:S

.field private indexToLocFormat:S

.field private lowestRecPPem:S

.field private macStyle:S

.field private magicNumber:I

.field private modified:J

.field private unitsPerEm:S

.field private version:I

.field private xMax:S

.field private xMin:S

.field private yMax:S

.field private yMin:S


# direct methods
.method protected constructor <init>()V
    .locals 4

    const/high16 v1, 0x10000

    const/16 v3, 0x7fff

    const/4 v2, 0x0

    const v0, 0x68656164

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/HeadTable;->setVersion(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/HeadTable;->setFontRevision(I)V

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/HeadTable;->setChecksumAdjustment(I)V

    const v0, 0x5f0f3cf5

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setMagicNumber(I)V

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/HeadTable;->setFlags(S)V

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setUnitsPerEm(S)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/pdfview/font/ttf/HeadTable;->setCreated(J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/pdfview/font/ttf/HeadTable;->setModified(J)V

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/HeadTable;->setXMin(S)V

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/font/ttf/HeadTable;->setXMax(S)V

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/HeadTable;->setYMin(S)V

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/font/ttf/HeadTable;->setYMax(S)V

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/HeadTable;->setMacStyle(S)V

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/HeadTable;->setLowestRecPPem(S)V

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/HeadTable;->setFontDirectionHint(S)V

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/HeadTable;->setIndexToLocFormat(S)V

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/HeadTable;->setGlyphDataFormat(S)V

    return-void
.end method


# virtual methods
.method public getChecksumAdjustment()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->checksumAdjustment:I

    return v0
.end method

.method public getCreated()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->created:J

    return-wide v0
.end method

.method public getData()Lc/a/a/b/b;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getLength()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getFontRevision()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getChecksumAdjustment()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getMagicNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getFlags()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getUnitsPerEm()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getCreated()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc/a/a/b/b;->a(J)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc/a/a/b/b;->a(J)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getXMin()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getXMax()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getYMin()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getYMax()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getMacStyle()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getLowestRecPPem()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getFontDirectionHint()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getIndexToLocFormat()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getGlyphDataFormat()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v0}, Lc/a/a/b/b;->j()V

    return-object v0
.end method

.method public getFlags()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->flags:S

    return v0
.end method

.method public getFontDirectionHint()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->fontDirectionHint:S

    return v0
.end method

.method public getFontRevision()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->fontRevision:I

    return v0
.end method

.method public getGlyphDataFormat()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->glyphDataFormat:S

    return v0
.end method

.method public getIndexToLocFormat()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->indexToLocFormat:S

    return v0
.end method

.method public getLength()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method public getLowestRecPPem()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->lowestRecPPem:S

    return v0
.end method

.method public getMacStyle()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->macStyle:S

    return v0
.end method

.method public getMagicNumber()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->magicNumber:I

    return v0
.end method

.method public getModified()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->modified:J

    return-wide v0
.end method

.method public getUnitsPerEm()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->unitsPerEm:S

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->version:I

    return v0
.end method

.method public getXMax()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->xMax:S

    return v0
.end method

.method public getXMin()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->xMin:S

    return v0
.end method

.method public getYMax()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->yMax:S

    return v0
.end method

.method public getYMin()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->yMin:S

    return v0
.end method

.method public setChecksumAdjustment(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->checksumAdjustment:I

    return-void
.end method

.method public setCreated(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->created:J

    return-void
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 2

    invoke-virtual {p1}, Lc/a/a/b/b;->c()I

    move-result v0

    const/16 v1, 0x36

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad Head table size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setVersion(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setFontRevision(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setChecksumAdjustment(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setMagicNumber(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setFlags(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setUnitsPerEm(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->m()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/pdfview/font/ttf/HeadTable;->setCreated(J)V

    invoke-virtual {p1}, Lc/a/a/b/b;->m()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sun/pdfview/font/ttf/HeadTable;->setModified(J)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setXMin(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setXMax(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setYMin(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setYMax(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setMacStyle(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setLowestRecPPem(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setFontDirectionHint(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setIndexToLocFormat(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->setGlyphDataFormat(S)V

    return-void
.end method

.method public setFlags(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->flags:S

    return-void
.end method

.method public setFontDirectionHint(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->fontDirectionHint:S

    return-void
.end method

.method public setFontRevision(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->fontRevision:I

    return-void
.end method

.method public setGlyphDataFormat(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->glyphDataFormat:S

    return-void
.end method

.method public setIndexToLocFormat(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->indexToLocFormat:S

    return-void
.end method

.method public setLowestRecPPem(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->lowestRecPPem:S

    return-void
.end method

.method public setMacStyle(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->macStyle:S

    return-void
.end method

.method public setMagicNumber(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->magicNumber:I

    return-void
.end method

.method public setModified(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->modified:J

    return-void
.end method

.method public setUnitsPerEm(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->unitsPerEm:S

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->version:I

    return-void
.end method

.method public setXMax(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->xMax:S

    return-void
.end method

.method public setXMin(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->xMin:S

    return-void
.end method

.method public setYMax(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->yMax:S

    return-void
.end method

.method public setYMin(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/HeadTable;->yMin:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "    "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Version          : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getVersion()I

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

    const-string v3, "Revision         : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getFontRevision()I

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

    const-string v3, "ChecksumAdj      : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getChecksumAdjustment()I

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

    const-string v3, "MagicNumber      : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getMagicNumber()I

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

    const-string v3, "Flags            : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getFlags()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

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

    const-string v3, "UnitsPerEm       : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getUnitsPerEm()S

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

    const-string v3, "Created          : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getCreated()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v3, "Modified         : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getModified()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    const-string v3, "XMin             : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getXMin()S

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

    const-string v3, "XMax             : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getXMax()S

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

    const-string v3, "YMin             : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getYMin()S

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

    const-string v3, "YMax             : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getYMax()S

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

    const-string v3, "MacStyle         : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getMacStyle()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

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

    const-string v3, "LowestPPem       : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getLowestRecPPem()S

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

    const-string v3, "FontDirectionHint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getFontDirectionHint()S

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

    const-string v3, "IndexToLocFormat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getIndexToLocFormat()S

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

    const-string v1, "GlyphDataFormat  : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getGlyphDataFormat()S

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
