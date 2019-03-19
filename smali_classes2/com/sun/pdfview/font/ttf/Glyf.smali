.class public Lcom/sun/pdfview/font/ttf/Glyf;
.super Ljava/lang/Object;


# instance fields
.field private isCompound:Z

.field private maxX:S

.field private maxY:S

.field private minX:S

.field private minY:S

.field private numContours:S


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGlyf(Lc/a/a/b/b;)Lcom/sun/pdfview/font/ttf/Glyf;
    .locals 4

    invoke-virtual {p0}, Lc/a/a/b/b;->o()S

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/sun/pdfview/font/ttf/Glyf;

    invoke-direct {v0}, Lcom/sun/pdfview/font/ttf/Glyf;-><init>()V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sun/pdfview/font/ttf/Glyf;->setNumContours(S)V

    invoke-virtual {p0}, Lc/a/a/b/b;->o()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/font/ttf/Glyf;->setMinX(S)V

    invoke-virtual {p0}, Lc/a/a/b/b;->o()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/font/ttf/Glyf;->setMinY(S)V

    invoke-virtual {p0}, Lc/a/a/b/b;->o()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/font/ttf/Glyf;->setMaxX(S)V

    invoke-virtual {p0}, Lc/a/a/b/b;->o()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/font/ttf/Glyf;->setMaxY(S)V

    invoke-virtual {v0, p0}, Lcom/sun/pdfview/font/ttf/Glyf;->setData(Lc/a/a/b/b;)V

    return-object v0

    :cond_0
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    new-instance v0, Lcom/sun/pdfview/font/ttf/GlyfCompound;

    invoke-direct {v0}, Lcom/sun/pdfview/font/ttf/GlyfCompound;-><init>()V

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    new-instance v0, Lcom/sun/pdfview/font/ttf/GlyfSimple;

    invoke-direct {v0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown glyf type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getData()Lc/a/a/b/b;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/Glyf;->getLength()S

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/Glyf;->getNumContours()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/Glyf;->getMinX()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/Glyf;->getMinY()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/Glyf;->getMaxX()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/Glyf;->getMaxY()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    return-object v0
.end method

.method public getLength()S
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getMaxX()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/Glyf;->maxX:S

    return v0
.end method

.method public getMaxY()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/Glyf;->maxY:S

    return v0
.end method

.method public getMinX()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/Glyf;->minX:S

    return v0
.end method

.method public getMinY()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/Glyf;->minY:S

    return v0
.end method

.method public getNumContours()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/Glyf;->numContours:S

    return v0
.end method

.method public isCompound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/pdfview/font/ttf/Glyf;->isCompound:Z

    return v0
.end method

.method protected setCompound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/pdfview/font/ttf/Glyf;->isCompound:Z

    return-void
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 0

    return-void
.end method

.method protected setMaxX(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/Glyf;->maxX:S

    return-void
.end method

.method protected setMaxY(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/Glyf;->maxY:S

    return-void
.end method

.method protected setMinX(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/Glyf;->minX:S

    return-void
.end method

.method protected setMinY(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/Glyf;->minY:S

    return-void
.end method

.method protected setNumContours(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/Glyf;->numContours:S

    return-void
.end method
