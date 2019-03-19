.class public Lcom/sun/pdfview/PDFTextFormat;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final cur:Landroid/graphics/Matrix;

.field private font:Lcom/sun/pdfview/font/PDFFont;

.field private fsize:F

.field private inuse:Z

.field private line:Landroid/graphics/Matrix;

.field private final prevEnd:Landroid/graphics/PointF;

.field private tc:F

.field private th:F

.field private tk:F

.field private tl:F

.field private tm:I

.field private tr:F

.field private tw:F

.field private word:Ljava/lang/StringBuffer;

.field private wordStart:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x3d380000    # -100.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sun/pdfview/PDFTextFormat;->tc:F

    iput v1, p0, Lcom/sun/pdfview/PDFTextFormat;->tw:F

    iput v3, p0, Lcom/sun/pdfview/PDFTextFormat;->th:F

    iput v1, p0, Lcom/sun/pdfview/PDFTextFormat;->tl:F

    iput v1, p0, Lcom/sun/pdfview/PDFTextFormat;->tr:F

    iput v4, p0, Lcom/sun/pdfview/PDFTextFormat;->tm:I

    iput v1, p0, Lcom/sun/pdfview/PDFTextFormat;->tk:F

    iput v3, p0, Lcom/sun/pdfview/PDFTextFormat;->fsize:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/pdfview/PDFTextFormat;->inuse:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->word:Ljava/lang/StringBuffer;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->cur:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->line:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->wordStart:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->prevEnd:Landroid/graphics/PointF;

    iput v1, p0, Lcom/sun/pdfview/PDFTextFormat;->tk:F

    iput v1, p0, Lcom/sun/pdfview/PDFTextFormat;->tr:F

    iput v1, p0, Lcom/sun/pdfview/PDFTextFormat;->tw:F

    iput v1, p0, Lcom/sun/pdfview/PDFTextFormat;->tc:F

    iput v4, p0, Lcom/sun/pdfview/PDFTextFormat;->tm:I

    iput v3, p0, Lcom/sun/pdfview/PDFTextFormat;->th:F

    return-void
.end method

.method private doTextFontSubst(Lcom/sun/pdfview/PDFPage;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    new-instance v8, Landroid/graphics/PointF;

    invoke-direct {v8}, Landroid/graphics/PointF;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/sun/pdfview/PDFTextFormat;->fsize:F

    iget v3, p0, Lcom/sun/pdfview/PDFTextFormat;->fsize:F

    iget v4, p0, Lcom/sun/pdfview/PDFTextFormat;->th:F

    mul-float/2addr v4, v3

    iget v6, p0, Lcom/sun/pdfview/PDFTextFormat;->tr:F

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;FFFFFF)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v3, p0, Lcom/sun/pdfview/PDFTextFormat;->cur:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    new-instance v0, Lcom/sun/pdfview/PDFNativeTextCmd;

    invoke-direct {v0, p2, v1}, Lcom/sun/pdfview/PDFNativeTextCmd;-><init>(Ljava/lang/String;Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    move v1, v7

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, v8, Landroid/graphics/PointF;->x:F

    aput v1, v0, v7

    iget v1, v8, Landroid/graphics/PointF;->y:F

    aput v1, v0, v9

    array-length v1, v0

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/sun/pdfview/PDFTextFormat;->cur:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->prevEnd:Landroid/graphics/PointF;

    aget v2, v1, v7

    aget v1, v1, v9

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    :cond_0
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v0, 0x3f19999a    # 0.6f

    iget-object v4, p0, Lcom/sun/pdfview/PDFTextFormat;->font:Lcom/sun/pdfview/font/PDFFont;

    instance-of v4, v4, Lcom/sun/pdfview/font/OutlineFont;

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->font:Lcom/sun/pdfview/font/PDFFont;

    check-cast v0, Lcom/sun/pdfview/font/OutlineFont;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/sun/pdfview/font/OutlineFont;->getWidth(CLjava/lang/String;)F

    move-result v0

    :cond_1
    iget v4, p0, Lcom/sun/pdfview/PDFTextFormat;->fsize:F

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/sun/pdfview/PDFTextFormat;->tc:F

    add-float/2addr v0, v4

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/sun/pdfview/PDFTextFormat;->tw:F

    add-float/2addr v0, v3

    :cond_2
    iget v3, p0, Lcom/sun/pdfview/PDFTextFormat;->th:F

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/sun/pdfview/PDFTextFormat;->cur:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private doTextNormal(Lcom/sun/pdfview/PDFPage;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/sun/pdfview/PDFTextFormat;->fsize:F

    iget v3, p0, Lcom/sun/pdfview/PDFTextFormat;->fsize:F

    iget v4, p0, Lcom/sun/pdfview/PDFTextFormat;->th:F

    mul-float/2addr v4, v3

    iget v6, p0, Lcom/sun/pdfview/PDFTextFormat;->tr:F

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;FFFFFF)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/sun/pdfview/PDFTextFormat;->font:Lcom/sun/pdfview/font/PDFFont;

    invoke-virtual {v1, p2}, Lcom/sun/pdfview/font/PDFFont;->getGlyphs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, v7, Landroid/graphics/PointF;->x:F

    aput v1, v0, v8

    iget v1, v7, Landroid/graphics/PointF;->y:F

    aput v1, v0, v9

    array-length v1, v0

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/sun/pdfview/PDFTextFormat;->cur:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->prevEnd:Landroid/graphics/PointF;

    aget v2, v1, v8

    aget v1, v1, v9

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/pdfview/font/PDFGlyph;

    iget-object v2, p0, Lcom/sun/pdfview/PDFTextFormat;->cur:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget v2, p0, Lcom/sun/pdfview/PDFTextFormat;->tm:I

    invoke-virtual {v1, p1, v3, v2}, Lcom/sun/pdfview/font/PDFGlyph;->addCommands(Lcom/sun/pdfview/PDFPage;Landroid/graphics/Matrix;I)Landroid/graphics/PointF;

    move-result-object v5

    iget v2, v5, Landroid/graphics/PointF;->x:F

    iget v6, p0, Lcom/sun/pdfview/PDFTextFormat;->fsize:F

    mul-float/2addr v2, v6

    iget v6, p0, Lcom/sun/pdfview/PDFTextFormat;->tc:F

    add-float/2addr v2, v6

    invoke-virtual {v1}, Lcom/sun/pdfview/font/PDFGlyph;->getChar()C

    move-result v1

    const/16 v6, 0x20

    if-ne v1, v6, :cond_1

    iget v1, p0, Lcom/sun/pdfview/PDFTextFormat;->tw:F

    add-float/2addr v1, v2

    :goto_1
    iget v2, p0, Lcom/sun/pdfview/PDFTextFormat;->th:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/sun/pdfview/PDFTextFormat;->cur:Landroid/graphics/Matrix;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public carriageReturn()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sun/pdfview/PDFTextFormat;->tl:F

    neg-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->carriageReturn(FF)V

    return-void
.end method

.method public carriageReturn(FF)V
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFTextFormat;->line:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->cur:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sun/pdfview/PDFTextFormat;->line:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/sun/pdfview/PDFTextFormat;

    invoke-direct {v0}, Lcom/sun/pdfview/PDFTextFormat;-><init>()V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFTextFormat;->getCharSpacing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setCharSpacing(F)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFTextFormat;->getWordSpacing()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setWordSpacing(F)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFTextFormat;->getHorizontalScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setHorizontalScale(F)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFTextFormat;->getLeading()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setLeading(F)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFTextFormat;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setTextFormatMode(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFTextFormat;->getRise()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setRise(F)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFTextFormat;->getFont()Lcom/sun/pdfview/font/PDFFont;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFTextFormat;->getFontSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFTextFormat;->setFont(Lcom/sun/pdfview/font/PDFFont;F)V

    return-object v0
.end method

.method public doText(Lcom/sun/pdfview/PDFPage;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/sun/pdfview/font/PDFFont;->sUseFontSubstitution:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/PDFTextFormat;->doTextFontSubst(Lcom/sun/pdfview/PDFPage;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/PDFTextFormat;->doTextNormal(Lcom/sun/pdfview/PDFPage;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doText(Lcom/sun/pdfview/PDFPage;[Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    array-length v2, p2

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sun/pdfview/PDFTextFormat;->doText(Lcom/sun/pdfview/PDFPage;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/lang/Double;

    if-eqz v0, :cond_2

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/sun/pdfview/PDFTextFormat;->cur:Landroid/graphics/Matrix;

    neg-float v0, v0

    iget v4, p0, Lcom/sun/pdfview/PDFTextFormat;->fsize:F

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/sun/pdfview/PDFTextFormat;->th:F

    mul-float/2addr v0, v4

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Bad element in TJ array"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/pdfview/PDFTextFormat;->inuse:Z

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public getCharSpacing()F
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFTextFormat;->tc:F

    return v0
.end method

.method public getFont()Lcom/sun/pdfview/font/PDFFont;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->font:Lcom/sun/pdfview/font/PDFFont;

    return-object v0
.end method

.method public getFontSize()F
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFTextFormat;->fsize:F

    return v0
.end method

.method public getHorizontalScale()F
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/PDFTextFormat;->th:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getLeading()F
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFTextFormat;->tl:F

    return v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFTextFormat;->tm:I

    return v0
.end method

.method public getRise()F
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFTextFormat;->tr:F

    return v0
.end method

.method public getTransform()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->cur:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getWordSpacing()F
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFTextFormat;->tw:F

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->cur:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->line:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/pdfview/PDFTextFormat;->inuse:Z

    iget-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->word:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method public setCharSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFTextFormat;->tc:F

    return-void
.end method

.method public setFont(Lcom/sun/pdfview/font/PDFFont;F)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/PDFTextFormat;->font:Lcom/sun/pdfview/font/PDFFont;

    iput p2, p0, Lcom/sun/pdfview/PDFTextFormat;->fsize:F

    return-void
.end method

.method public setHorizontalScale(F)V
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float v0, p1, v0

    iput v0, p0, Lcom/sun/pdfview/PDFTextFormat;->th:F

    return-void
.end method

.method public setLeading(F)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFTextFormat;->tl:F

    return-void
.end method

.method public setMatrix([F)V
    .locals 2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->line:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->line:Landroid/graphics/Matrix;

    invoke-static {v0, p1}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;[F)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFTextFormat;->cur:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sun/pdfview/PDFTextFormat;->line:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setMode(I)V
    .locals 3

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    and-int/lit8 v1, p1, 0x1

    and-int/lit8 v2, p1, 0x2

    shr-int/lit8 v2, v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    iput v0, p0, Lcom/sun/pdfview/PDFTextFormat;->tm:I

    return-void
.end method

.method public setRise(F)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFTextFormat;->tr:F

    return-void
.end method

.method public setTextFormatMode(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFTextFormat;->tm:I

    return-void
.end method

.method public setWordSpacing(F)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFTextFormat;->tw:F

    return-void
.end method
