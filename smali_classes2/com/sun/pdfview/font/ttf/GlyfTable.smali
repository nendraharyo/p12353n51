.class public Lcom/sun/pdfview/font/ttf/GlyfTable;
.super Lcom/sun/pdfview/font/ttf/TrueTypeTable;


# instance fields
.field private glyphs:[Ljava/lang/Object;

.field private loca:Lcom/sun/pdfview/font/ttf/LocaTable;


# direct methods
.method protected constructor <init>(Lcom/sun/pdfview/font/ttf/TrueTypeFont;)V
    .locals 1

    const v0, 0x676c7966

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;-><init>(I)V

    const-string v0, "loca"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/LocaTable;

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->loca:Lcom/sun/pdfview/font/ttf/LocaTable;

    const-string v0, "maxp"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/MaxpTable;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getNumGlyphs()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->glyphs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Lc/a/a/b/b;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfTable;->getLength()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->glyphs:[Ljava/lang/Object;

    array-length v0, v0

    if-lt v1, v0, :cond_0

    invoke-virtual {v2}, Lc/a/a/b/b;->j()V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->glyphs:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    instance-of v3, v0, Lc/a/a/b/b;

    if-eqz v3, :cond_2

    check-cast v0, Lc/a/a/b/b;

    :goto_2
    invoke-virtual {v0}, Lc/a/a/b/b;->e()V

    invoke-virtual {v2, v0}, Lc/a/a/b/b;->a(Lc/a/a/b/b;)V

    invoke-virtual {v0}, Lc/a/a/b/b;->j()V

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/sun/pdfview/font/ttf/Glyf;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/Glyf;->getData()Lc/a/a/b/b;

    move-result-object v0

    goto :goto_2
.end method

.method public getGlyph(I)Lcom/sun/pdfview/font/ttf/Glyf;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->glyphs:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lc/a/a/b/b;

    if-eqz v1, :cond_1

    check-cast v0, Lc/a/a/b/b;

    invoke-static {v0}, Lcom/sun/pdfview/font/ttf/Glyf;->getGlyf(Lc/a/a/b/b;)Lcom/sun/pdfview/font/ttf/Glyf;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->glyphs:[Ljava/lang/Object;

    aput-object v0, v1, p1

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/sun/pdfview/font/ttf/Glyf;

    goto :goto_0
.end method

.method public getLength()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->glyphs:[Ljava/lang/Object;

    array-length v0, v0

    if-lt v1, v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->glyphs:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    instance-of v3, v0, Lc/a/a/b/b;

    if-eqz v3, :cond_2

    check-cast v0, Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->c()I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/sun/pdfview/font/ttf/Glyf;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/Glyf;->getLength()S

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->glyphs:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->loca:Lcom/sun/pdfview/font/ttf/LocaTable;

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/font/ttf/LocaTable;->getOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->loca:Lcom/sun/pdfview/font/ttf/LocaTable;

    invoke-virtual {v2, v0}, Lcom/sun/pdfview/font/ttf/LocaTable;->getSize(I)I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lc/a/a/b/b;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->d()Lc/a/a/b/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lc/a/a/b/b;->d(I)V

    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->glyphs:[Ljava/lang/Object;

    aput-object v1, v2, v0

    goto :goto_1
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

    const-string v3, "Glyf Table: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/GlyfTable;->glyphs:[Ljava/lang/Object;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " glyphs)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "  Glyf 0: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/GlyfTable;->getGlyph(I)Lcom/sun/pdfview/font/ttf/Glyf;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
