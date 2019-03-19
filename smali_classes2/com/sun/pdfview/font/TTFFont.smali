.class public Lcom/sun/pdfview/font/TTFFont;
.super Lcom/sun/pdfview/font/OutlineFont;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/font/TTFFont$PointRec;,
        Lcom/sun/pdfview/font/TTFFont$RenderState;
    }
.end annotation


# instance fields
.field private font:Lcom/sun/pdfview/font/ttf/TrueTypeFont;

.field private unitsPerEm:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/pdfview/font/OutlineFont;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    invoke-virtual {p3}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getFontName()Ljava/lang/String;

    invoke-virtual {p3}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getFontFile2()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStreamBuffer()Lc/a/a/b/b;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->parseFont(Lc/a/a/b/b;)Lcom/sun/pdfview/font/ttf/TrueTypeFont;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/TTFFont;->font:Lcom/sun/pdfview/font/ttf/TrueTypeFont;

    iget-object v0, p0, Lcom/sun/pdfview/font/TTFFont;->font:Lcom/sun/pdfview/font/ttf/TrueTypeFont;

    const-string v1, "head"

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/HeadTable;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getUnitsPerEm()S

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sun/pdfview/font/TTFFont;->unitsPerEm:F

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/pdfview/font/TTFFont;->font:Lcom/sun/pdfview/font/ttf/TrueTypeFont;

    goto :goto_0
.end method

.method private addOffCurvePoint(Lcom/sun/pdfview/font/TTFFont$PointRec;Lcom/sun/pdfview/font/TTFFont$RenderState;)V
    .locals 4

    iget-object v0, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->prevOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sun/pdfview/font/TTFFont$PointRec;

    iget v1, p1, Lcom/sun/pdfview/font/TTFFont$PointRec;->x:I

    iget-object v2, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->prevOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    iget v2, v2, Lcom/sun/pdfview/font/TTFFont$PointRec;->x:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Lcom/sun/pdfview/font/TTFFont$PointRec;->y:I

    iget-object v3, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->prevOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    iget v3, v3, Lcom/sun/pdfview/font/TTFFont$PointRec;->y:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sun/pdfview/font/TTFFont$PointRec;-><init>(Lcom/sun/pdfview/font/TTFFont;IIZ)V

    invoke-direct {p0, v0, p2}, Lcom/sun/pdfview/font/TTFFont;->addOnCurvePoint(Lcom/sun/pdfview/font/TTFFont$PointRec;Lcom/sun/pdfview/font/TTFFont$RenderState;)V

    :cond_0
    :goto_0
    iput-object p1, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->prevOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    return-void

    :cond_1
    iget-object v0, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->firstOn:Lcom/sun/pdfview/font/TTFFont$PointRec;

    if-nez v0, :cond_0

    iput-object p1, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->firstOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    goto :goto_0
.end method

.method private addOnCurvePoint(Lcom/sun/pdfview/font/TTFFont$PointRec;Lcom/sun/pdfview/font/TTFFont$RenderState;)V
    .locals 5

    iget-object v0, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->firstOn:Lcom/sun/pdfview/font/TTFFont$PointRec;

    if-nez v0, :cond_0

    iput-object p1, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->firstOn:Lcom/sun/pdfview/font/TTFFont$PointRec;

    iget-object v0, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->gp:Landroid/graphics/Path;

    iget v1, p1, Lcom/sun/pdfview/font/TTFFont$PointRec;->x:I

    int-to-float v1, v1

    iget v2, p1, Lcom/sun/pdfview/font/TTFFont$PointRec;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->prevOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->gp:Landroid/graphics/Path;

    iget-object v1, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->prevOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    iget v1, v1, Lcom/sun/pdfview/font/TTFFont$PointRec;->x:I

    int-to-float v1, v1

    iget-object v2, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->prevOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    iget v2, v2, Lcom/sun/pdfview/font/TTFFont$PointRec;->y:I

    int-to-float v2, v2

    iget v3, p1, Lcom/sun/pdfview/font/TTFFont$PointRec;->x:I

    int-to-float v3, v3

    iget v4, p1, Lcom/sun/pdfview/font/TTFFont$PointRec;->y:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    const/4 v0, 0x0

    iput-object v0, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->prevOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/sun/pdfview/font/TTFFont$RenderState;->gp:Landroid/graphics/Path;

    iget v1, p1, Lcom/sun/pdfview/font/TTFFont$PointRec;->x:I

    int-to-float v1, v1

    iget v2, p1, Lcom/sun/pdfview/font/TTFFont$PointRec;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized getOutline(CF)Landroid/graphics/Path;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/pdfview/font/TTFFont;->font:Lcom/sun/pdfview/font/ttf/TrueTypeFont;

    const-string v2, "cmap"

    invoke-virtual {v0, v2}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CmapTable;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sun/pdfview/font/TTFFont;->getOutline(IF)Landroid/graphics/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/CmapTable;->getCMaps()[Lcom/sun/pdfview/font/ttf/CMap;

    move-result-object v2

    move v0, v1

    :goto_1
    array-length v1, v2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/sun/pdfview/font/TTFFont;->getOutline(IF)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-object v1, v2, v0

    invoke-virtual {v1, p1}, Lcom/sun/pdfview/font/ttf/CMap;->map(C)C

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1, p2}, Lcom/sun/pdfview/font/TTFFont;->getOutline(IF)Landroid/graphics/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getOutline(IF)Landroid/graphics/Path;
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sun/pdfview/font/TTFFont;->font:Lcom/sun/pdfview/font/ttf/TrueTypeFont;

    const-string v2, "glyf"

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v1

    check-cast v1, Lcom/sun/pdfview/font/ttf/GlyfTable;

    invoke-virtual {v1, p1}, Lcom/sun/pdfview/font/ttf/GlyfTable;->getGlyph(I)Lcom/sun/pdfview/font/ttf/Glyf;

    move-result-object v2

    instance-of v3, v2, Lcom/sun/pdfview/font/ttf/GlyfSimple;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/sun/pdfview/font/ttf/GlyfSimple;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/TTFFont;->renderSimpleGlyph(Lcom/sun/pdfview/font/ttf/GlyfSimple;)Landroid/graphics/Path;

    move-result-object v1

    move-object v2, v1

    :goto_0
    iget-object v1, p0, Lcom/sun/pdfview/font/TTFFont;->font:Lcom/sun/pdfview/font/ttf/TrueTypeFont;

    const-string v3, "hmtx"

    invoke-virtual {v1, v3}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v1

    check-cast v1, Lcom/sun/pdfview/font/ttf/HmtxTable;

    invoke-virtual {v1, p1}, Lcom/sun/pdfview/font/ttf/HmtxTable;->getAdvance(I)S

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/sun/pdfview/font/TTFFont;->unitsPerEm:F

    div-float/2addr v1, v3

    div-float v1, p2, v1

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v4, p0, Lcom/sun/pdfview/font/TTFFont;->unitsPerEm:F

    div-float v4, v6, v4

    iget v5, p0, Lcom/sun/pdfview/font/TTFFont;->unitsPerEm:F

    div-float v5, v6, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    instance-of v3, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/sun/pdfview/font/ttf/GlyfCompound;

    invoke-virtual {p0, v1, v2}, Lcom/sun/pdfview/font/TTFFont;->renderCompoundGlyph(Lcom/sun/pdfview/font/ttf/GlyfTable;Lcom/sun/pdfview/font/ttf/GlyfCompound;)Landroid/graphics/Path;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized getOutline(Ljava/lang/String;F)Landroid/graphics/Path;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/pdfview/font/TTFFont;->font:Lcom/sun/pdfview/font/ttf/TrueTypeFont;

    const-string v2, "post"

    invoke-virtual {v0, v2}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/PostTable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/sun/pdfview/font/ttf/PostTable;->getGlyphNameIndex(Ljava/lang/String;)S

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/sun/pdfview/font/TTFFont;->getOutline(IF)Landroid/graphics/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->getGlyphNameIndex(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/pdfview/font/TTFFont;->getOutlineFromCMaps(CF)Landroid/graphics/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getOutlineFromCMaps(CF)Landroid/graphics/Path;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/pdfview/font/TTFFont;->font:Lcom/sun/pdfview/font/ttf/TrueTypeFont;

    const-string v2, "cmap"

    invoke-virtual {v0, v2}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CmapTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v0, v2, v3}, Lcom/sun/pdfview/font/ttf/CmapTable;->getCMap(SS)Lcom/sun/pdfview/font/ttf/CMap;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sun/pdfview/font/ttf/CmapTable;->getCMap(SS)Lcom/sun/pdfview/font/ttf/CMap;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/sun/pdfview/font/ttf/CMap;->map(C)C

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p2}, Lcom/sun/pdfview/font/TTFFont;->getOutline(IF)Landroid/graphics/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method protected renderCompoundGlyph(Lcom/sun/pdfview/font/ttf/GlyfTable;Lcom/sun/pdfview/font/ttf/GlyfCompound;)Landroid/graphics/Path;
    .locals 5

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getNumComponents()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p2, v1}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getGlyphIndex(I)S

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/font/ttf/GlyfTable;->getGlyph(I)Lcom/sun/pdfview/font/ttf/Glyf;

    move-result-object v0

    instance-of v3, v0, Lcom/sun/pdfview/font/ttf/GlyfSimple;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/sun/pdfview/font/ttf/GlyfSimple;

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/TTFFont;->renderSimpleGlyph(Lcom/sun/pdfview/font/ttf/GlyfSimple;)Landroid/graphics/Path;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, v1}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getTransform(I)[F

    move-result-object v3

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v4, v3}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;[F)V

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    instance-of v3, v0, Lcom/sun/pdfview/font/ttf/GlyfCompound;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/sun/pdfview/font/ttf/GlyfCompound;

    invoke-virtual {p0, p1, v0}, Lcom/sun/pdfview/font/TTFFont;->renderCompoundGlyph(Lcom/sun/pdfview/font/ttf/GlyfTable;Lcom/sun/pdfview/font/ttf/GlyfCompound;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported glyph type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected renderSimpleGlyph(Lcom/sun/pdfview/font/ttf/GlyfSimple;)Landroid/graphics/Path;
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/sun/pdfview/font/TTFFont$RenderState;

    invoke-direct {v2, p0}, Lcom/sun/pdfview/font/TTFFont$RenderState;-><init>(Lcom/sun/pdfview/font/TTFFont;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v2, Lcom/sun/pdfview/font/TTFFont$RenderState;->gp:Landroid/graphics/Path;

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumPoints()S

    move-result v3

    if-lt v0, v3, :cond_0

    iget-object v0, v2, Lcom/sun/pdfview/font/TTFFont$RenderState;->gp:Landroid/graphics/Path;

    return-object v0

    :cond_0
    new-instance v3, Lcom/sun/pdfview/font/TTFFont$PointRec;

    invoke-direct {v3, p0, p1, v0}, Lcom/sun/pdfview/font/TTFFont$PointRec;-><init>(Lcom/sun/pdfview/font/TTFFont;Lcom/sun/pdfview/font/ttf/GlyfSimple;I)V

    iget-boolean v4, v3, Lcom/sun/pdfview/font/TTFFont$PointRec;->onCurve:Z

    if-eqz v4, :cond_4

    invoke-direct {p0, v3, v2}, Lcom/sun/pdfview/font/TTFFont;->addOnCurvePoint(Lcom/sun/pdfview/font/TTFFont$PointRec;Lcom/sun/pdfview/font/TTFFont$RenderState;)V

    :goto_1
    invoke-virtual {p1, v1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getContourEndPoint(I)S

    move-result v3

    if-ne v0, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    iget-object v3, v2, Lcom/sun/pdfview/font/TTFFont$RenderState;->firstOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/sun/pdfview/font/TTFFont$RenderState;->firstOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    invoke-direct {p0, v3, v2}, Lcom/sun/pdfview/font/TTFFont;->addOffCurvePoint(Lcom/sun/pdfview/font/TTFFont$PointRec;Lcom/sun/pdfview/font/TTFFont$RenderState;)V

    :cond_1
    iget-object v3, v2, Lcom/sun/pdfview/font/TTFFont$RenderState;->firstOn:Lcom/sun/pdfview/font/TTFFont$PointRec;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/sun/pdfview/font/TTFFont$RenderState;->firstOn:Lcom/sun/pdfview/font/TTFFont$PointRec;

    invoke-direct {p0, v3, v2}, Lcom/sun/pdfview/font/TTFFont;->addOnCurvePoint(Lcom/sun/pdfview/font/TTFFont$PointRec;Lcom/sun/pdfview/font/TTFFont$RenderState;)V

    :cond_2
    iput-object v5, v2, Lcom/sun/pdfview/font/TTFFont$RenderState;->firstOn:Lcom/sun/pdfview/font/TTFFont$PointRec;

    iput-object v5, v2, Lcom/sun/pdfview/font/TTFFont$RenderState;->firstOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    iput-object v5, v2, Lcom/sun/pdfview/font/TTFFont$RenderState;->prevOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0, v3, v2}, Lcom/sun/pdfview/font/TTFFont;->addOffCurvePoint(Lcom/sun/pdfview/font/TTFFont$PointRec;Lcom/sun/pdfview/font/TTFFont$RenderState;)V

    goto :goto_1
.end method
