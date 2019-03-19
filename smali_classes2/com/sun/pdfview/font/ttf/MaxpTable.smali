.class public Lcom/sun/pdfview/font/ttf/MaxpTable;
.super Lcom/sun/pdfview/font/ttf/TrueTypeTable;


# instance fields
.field private maxComponentContours:I

.field private maxComponentDepth:I

.field private maxComponentElements:I

.field private maxComponentPoints:I

.field private maxContours:I

.field private maxFunctionDefs:I

.field private maxInstructionDefs:I

.field private maxPoints:I

.field private maxSizeOfInstructions:I

.field private maxStackElements:I

.field private maxStorage:I

.field private maxTwilightPoints:I

.field private maxZones:I

.field private numGlyphs:I

.field private version:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x6d617870

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;-><init>(I)V

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setVersion(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setNumGlyphs(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxPoints(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxContours(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxComponentPoints(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxComponentContours(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxZones(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxTwilightPoints(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxStorage(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxFunctionDefs(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxInstructionDefs(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxStackElements(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxSizeOfInstructions(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxComponentElements(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxComponentDepth(I)V

    return-void
.end method


# virtual methods
.method public getData()Lc/a/a/b/b;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getLength()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getNumGlyphs()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxPoints()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxContours()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxComponentPoints()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxComponentContours()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxZones()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxTwilightPoints()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxStorage()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxFunctionDefs()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxInstructionDefs()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxStackElements()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxSizeOfInstructions()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxComponentElements()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxComponentDepth()I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v0}, Lc/a/a/b/b;->j()V

    return-object v0
.end method

.method public getLength()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getMaxComponentContours()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxComponentContours:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaxComponentDepth()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxComponentDepth:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaxComponentElements()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxComponentElements:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaxComponentPoints()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxComponentPoints:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaxContours()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxContours:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaxFunctionDefs()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxFunctionDefs:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaxInstructionDefs()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxInstructionDefs:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaxPoints()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxPoints:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaxSizeOfInstructions()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxSizeOfInstructions:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaxStackElements()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxStackElements:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaxStorage()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxStorage:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaxTwilightPoints()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxTwilightPoints:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getMaxZones()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxZones:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getNumGlyphs()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->numGlyphs:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->version:I

    return v0
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 2

    invoke-virtual {p1}, Lc/a/a/b/b;->c()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad size for Maxp table"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setVersion(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setNumGlyphs(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxPoints(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxContours(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxComponentPoints(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxComponentContours(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxZones(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxTwilightPoints(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxStorage(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxFunctionDefs(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxInstructionDefs(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxStackElements(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxSizeOfInstructions(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxComponentElements(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->setMaxComponentDepth(I)V

    return-void
.end method

.method public setMaxComponentContours(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxComponentContours:I

    return-void
.end method

.method public setMaxComponentDepth(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxComponentDepth:I

    return-void
.end method

.method public setMaxComponentElements(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxComponentElements:I

    return-void
.end method

.method public setMaxComponentPoints(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxComponentPoints:I

    return-void
.end method

.method public setMaxContours(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxContours:I

    return-void
.end method

.method public setMaxFunctionDefs(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxFunctionDefs:I

    return-void
.end method

.method public setMaxInstructionDefs(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxInstructionDefs:I

    return-void
.end method

.method public setMaxPoints(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxPoints:I

    return-void
.end method

.method public setMaxSizeOfInstructions(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxSizeOfInstructions:I

    return-void
.end method

.method public setMaxStackElements(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxStackElements:I

    return-void
.end method

.method public setMaxStorage(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxStorage:I

    return-void
.end method

.method public setMaxTwilightPoints(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxTwilightPoints:I

    return-void
.end method

.method public setMaxZones(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->maxZones:I

    return-void
.end method

.method public setNumGlyphs(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->numGlyphs:I

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/MaxpTable;->version:I

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

    const-string v3, "Version          : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getVersion()I

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

    const-string v3, "NumGlyphs        : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getNumGlyphs()I

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

    const-string v3, "MaxPoints        : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxPoints()I

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

    const-string v3, "MaxContours      : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxContours()I

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

    const-string v3, "MaxCompPoints    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxComponentPoints()I

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

    const-string v3, "MaxCompContours  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxComponentContours()I

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

    const-string v3, "MaxZones         : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxZones()I

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

    const-string v3, "MaxTwilightPoints: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxTwilightPoints()I

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

    const-string v3, "MaxStorage       : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxStorage()I

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

    const-string v3, "MaxFuncDefs      : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxFunctionDefs()I

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

    const-string v3, "MaxInstDefs      : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxInstructionDefs()I

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

    const-string v3, "MaxStackElements : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxStackElements()I

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

    const-string v3, "MaxSizeInst      : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxSizeOfInstructions()I

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

    const-string v3, "MaxCompElements  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxComponentElements()I

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

    const-string v1, "MaxCompDepth     : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getMaxComponentDepth()I

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
