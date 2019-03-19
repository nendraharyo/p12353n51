.class public Lcom/sun/pdfview/font/ttf/GlyfCompound;
.super Lcom/sun/pdfview/font/ttf/Glyf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;
    }
.end annotation


# static fields
.field private static final ARGS_ARE_XY_VALUES:I = 0x2

.field private static final ARG_1_AND_2_ARE_WORDS:I = 0x1

.field private static final MORE_COMPONENTS:I = 0x20

.field private static final OVERLAP_COMPOUND:I = 0x400

.field private static final ROUND_XY_TO_GRID:I = 0x4

.field private static final USE_MY_METRICS:I = 0x200

.field private static final WE_HAVE_AN_X_AND_Y_SCALE:I = 0x40

.field private static final WE_HAVE_A_SCALE:I = 0x8

.field private static final WE_HAVE_A_TWO_BY_TWO:I = 0x80

.field private static final WE_HAVE_INSTRUCTIONS:I = 0x100


# instance fields
.field private components:[Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;

.field private instructions:[B


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/pdfview/font/ttf/Glyf;-><init>()V

    return-void
.end method


# virtual methods
.method public argsAreWords(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getFlag(I)S

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public argsAreXYValues(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getFlag(I)S

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComponentPoint(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound;->components:[Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->componentPoint:I

    return v0
.end method

.method public getCompoundPoint(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound;->components:[Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->compoundPoint:I

    return v0
.end method

.method public getData()Lc/a/a/b/b;
    .locals 1

    invoke-super {p0}, Lcom/sun/pdfview/font/ttf/Glyf;->getData()Lc/a/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method public getFlag(I)S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound;->components:[Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;

    aget-object v0, v0, p1

    iget-short v0, v0, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    return v0
.end method

.method public getGlyphIndex(I)S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound;->components:[Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;

    aget-object v0, v0, p1

    iget-short v0, v0, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->glyphIndex:S

    return v0
.end method

.method public getInstruction(I)B
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound;->instructions:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getLength()S
    .locals 1

    invoke-super {p0}, Lcom/sun/pdfview/font/ttf/Glyf;->getLength()S

    move-result v0

    return v0
.end method

.method public getNumComponents()I
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound;->components:[Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;

    array-length v0, v0

    return v0
.end method

.method public getNumInstructions()S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound;->instructions:[B

    array-length v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getTransform(I)[F
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound;->components:[Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;

    aget-object v2, v0, p1

    iget v0, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->b:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->a:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->c:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_0

    mul-float/2addr v0, v6

    :cond_0
    iget v1, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->c:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->d:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->c:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->d:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    mul-float/2addr v1, v6

    :cond_1
    iget v3, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->e:F

    mul-float/2addr v0, v3

    iget v3, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->f:F

    mul-float/2addr v1, v3

    const/4 v3, 0x6

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget v5, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->a:F

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->b:F

    aput v5, v3, v4

    const/4 v4, 0x2

    iget v5, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->c:F

    aput v5, v3, v4

    const/4 v4, 0x3

    iget v2, v2, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->d:F

    aput v2, v3, v4

    const/4 v2, 0x4

    aput v0, v3, v2

    const/4 v0, 0x5

    aput v1, v3, v0

    return-object v3
.end method

.method public hasAScale(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getFlag(I)S

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasInstructions(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getFlag(I)S

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasTwoByTwo(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getFlag(I)S

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasXYScale(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getFlag(I)S

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected moreComponents(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getFlag(I)S

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public overlapCompound(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getFlag(I)S

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public roundXYToGrid(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getFlag(I)S

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setComponents([Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound;->components:[Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;

    return-void
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 6

    const/4 v2, 0x0

    const/high16 v5, 0x46800000    # 16384.0f

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_0
    new-instance v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;

    invoke-direct {v4, p0}, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;-><init>(Lcom/sun/pdfview/font/ttf/GlyfCompound;)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    iput-short v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    iput-short v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->glyphIndex:S

    iget-short v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-short v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    int-to-float v1, v1

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->e:F

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    int-to-float v1, v1

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->f:F

    :goto_1
    iget-short v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->a:F

    iget v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->a:F

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->d:F

    :cond_0
    :goto_2
    iget-short v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    move v1, v0

    :goto_3
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-short v0, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->setComponents([Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;)V

    const/4 v0, 0x0

    check-cast v0, [B

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    new-array v0, v0, [B

    :goto_4
    array-length v1, v0

    if-lt v2, v1, :cond_6

    :goto_5
    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->setInstructions([B)V

    return-void

    :cond_1
    iget-short v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    iget-short v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v1

    int-to-float v1, v1

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->e:F

    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v1

    int-to-float v1, v1

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->f:F

    goto :goto_1

    :cond_2
    iget-short v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-short v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->compoundPoint:I

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->componentPoint:I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v1

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->compoundPoint:I

    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v1

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->componentPoint:I

    goto/16 :goto_1

    :cond_4
    iget-short v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->a:F

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->d:F

    goto/16 :goto_2

    :cond_5
    iget-short v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->flags:S

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->a:F

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->b:F

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->c:F

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iput v1, v4, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->d:F

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v1

    aput-byte v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_7
    new-array v0, v2, [B

    goto/16 :goto_5

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v1, v0

    goto/16 :goto_3
.end method

.method protected setInstructions([B)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound;->instructions:[B

    return-void
.end method

.method public useMetrics(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfCompound;->getFlag(I)S

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
