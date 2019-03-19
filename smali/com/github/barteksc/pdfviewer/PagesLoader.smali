.class Lcom/github/barteksc/pdfviewer/PagesLoader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;
    }
.end annotation


# instance fields
.field private cacheOrder:I

.field private colWidth:F

.field private colsRows:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pageRelativePartHeight:F

.field private pageRelativePartWidth:F

.field private partRenderHeight:F

.field private partRenderWidth:F

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private rowHeight:F

.field private scaledHeight:F

.field private scaledSpacingPx:F

.field private scaledWidth:F

.field private thumbnailHeight:I

.field private final thumbnailRect:Landroid/graphics/RectF;

.field private thumbnailWidth:I

.field private xOffset:F

.field private yOffset:F


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-void
.end method

.method private documentPage(I)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getOriginalUserPages()[I

    move-result-object v1

    if-eqz v1, :cond_2

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getOriginalUserPages()[I

    move-result-object v1

    array-length v1, v1

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getOriginalUserPages()[I

    move-result-object v1

    aget v1, v1, p1

    :goto_1
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getDocumentPageCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v1, p1

    goto :goto_1
.end method

.method private getPageAndCoordsByOffset(FZ)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;
    .locals 4

    new-instance v2, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;-><init>(Lcom/github/barteksc/pdfviewer/PagesLoader;Lcom/github/barteksc/pdfviewer/PagesLoader$1;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    add-float/2addr v1, v3

    div-float v1, v0, v1

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v1

    iput v1, v2, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    add-float/2addr v1, v3

    iget v3, v2, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float v1, v0, v1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr v0, v3

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v1

    iput v1, v2, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v0

    iput v0, v2, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    :goto_1
    return-object v2

    :cond_0
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    add-float/2addr v1, v3

    div-float v1, v0, v1

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v1

    iput v1, v2, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    add-float/2addr v1, v3

    iget v3, v2, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr v1, v3

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v1

    iput v1, v2, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v0

    iput v0, v2, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    goto :goto_1
.end method

.method private getPageColsRows()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v0

    div-float v0, v3, v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v1

    div-float v1, v3, v1

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v2

    div-float/2addr v1, v2

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v2

    div-float/2addr v0, v2

    div-float v1, v3, v1

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v1

    div-float v0, v3, v0

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v0

    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method private loadCell(IIIIFF)Z
    .locals 10

    int-to-float v0, p4

    mul-float/2addr v0, p5

    int-to-float v1, p3

    mul-float v1, v1, p6

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderWidth:F

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderHeight:F

    add-float v3, v0, p5

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float p5, v3, v0

    :cond_0
    add-float v3, v1, p6

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float p6, v3, v1

    :cond_1
    mul-float v3, v2, p5

    mul-float v4, v4, p6

    new-instance v5, Landroid/graphics/RectF;

    add-float v2, v0, p5

    add-float v6, v1, p6

    invoke-direct {v5, v0, v1, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    cmpl-float v0, v4, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    iget v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/github/barteksc/pdfviewer/CacheManager;->upPartIfContained(IIFFLandroid/graphics/RectF;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    const/4 v6, 0x0

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isBestQuality()Z

    move-result v8

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isAnnotationRendering()Z

    move-result v9

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v9}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->addRenderingTask(IIFFLandroid/graphics/RectF;ZIZZ)V

    :cond_2
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadRelative(IIZ)I
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    int-to-float v2, p1

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v3

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    sub-float v0, v3, v0

    sub-float/2addr v0, v2

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(FZ)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v8

    iget v0, v8, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->documentPage(I)I

    move-result v2

    if-gez v2, :cond_4

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    int-to-float v2, p1

    mul-float/2addr v2, v0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v3

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    :goto_3
    int-to-float v0, v0

    sub-float v0, v3, v0

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    iget v0, v8, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    invoke-direct {p0, v0, v2}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(II)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr v0, v3

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->min(II)I

    move-result v4

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    div-float/2addr v0, v3

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(II)I

    move-result v9

    move v7, v1

    :goto_4
    if-gt v4, v9, :cond_5

    iget v1, v8, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v3, v8, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    iget v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    iget v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadCell(IIIIFF)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v1, v7, 0x1

    :goto_5
    if-ge v1, p2, :cond_0

    add-int/lit8 v4, v4, 0x1

    move v7, v1

    goto :goto_4

    :cond_5
    move v0, v7

    :goto_6
    move v1, v0

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr v0, v3

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->floor(F)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v1}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->min(II)I

    move-result v3

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    div-float/2addr v0, v4

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->ceil(F)I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v0}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(II)I

    move-result v9

    move v7, v1

    :goto_7
    if-gt v3, v9, :cond_8

    iget v1, v8, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v4, v8, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    iget v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    iget v6, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadCell(IIIIFF)Z

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v1, v7, 0x1

    :goto_8
    if-ge v1, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v7, v1

    goto :goto_7

    :cond_7
    move v1, v7

    goto :goto_8

    :cond_8
    move v0, v7

    goto :goto_6

    :cond_9
    move v1, v7

    goto :goto_5
.end method

.method private loadThumbnail(II)V
    .locals 10

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailWidth:I

    int-to-float v3, v1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailHeight:I

    int-to-float v4, v1

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/github/barteksc/pdfviewer/CacheManager;->containsThumbnail(IIFFLandroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailWidth:I

    int-to-float v3, v1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailHeight:I

    int-to-float v4, v1

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailRect:Landroid/graphics/RectF;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isBestQuality()Z

    move-result v8

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isAnnotationRendering()Z

    move-result v9

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v9}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->addRenderingTask(IIFFLandroid/graphics/RectF;ZIZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public loadPages()V
    .locals 7

    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v0

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants;->THUMBNAIL_RATIO:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailWidth:I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v0

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants;->THUMBNAIL_RATIO:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->thumbnailHeight:I

    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageColsRows()Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v0

    invoke-static {v0, v3}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->xOffset:F

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v0

    invoke-static {v0, v3}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->max(FF)F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->yOffset:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledHeight:F

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->rowHeight:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledWidth:F

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colWidth:F

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartWidth:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderWidth:F

    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants;->PART_SIZE:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pageRelativePartHeight:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->partRenderHeight:F

    iput v5, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->cacheOrder:I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getSpacingPx()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->scaledSpacingPx:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadVisible()I

    move-result v0

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v2}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollDir()Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    move-result-object v2

    sget-object v3, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    invoke-virtual {v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants;->PRELOAD_COUNT:I

    if-ge v0, v2, :cond_1

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v1, v2, :cond_1

    invoke-direct {p0, v0, v1, v5}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    move v0, v1

    :goto_1
    sget v3, Lcom/github/barteksc/pdfviewer/util/Constants;->PRELOAD_COUNT:I

    neg-int v3, v3

    if-le v0, v3, :cond_1

    sget v3, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v2, v3, :cond_1

    invoke-direct {p0, v0, v2, v1}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public loadVisible()I
    .locals 6

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(FZ)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-direct {p0, v0, v5}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(FZ)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v5

    iget v0, v3, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v1, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ne v0, v1, :cond_0

    iget v0, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    iget v1, v3, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_0
    move v2, v4

    move v1, v4

    :goto_1
    if-ge v2, v0, :cond_2

    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v1, v5, :cond_2

    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    sub-int/2addr v5, v1

    invoke-direct {p0, v2, v5, v4}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v5

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, v3, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    sub-int/2addr v0, v1

    add-int v1, v4, v0

    iget v0, v3, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    :goto_2
    iget v0, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    iget v0, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->row:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_3
    iget v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/github/barteksc/pdfviewer/PagesLoader;->documentPage(I)I

    move-result v2

    if-ltz v2, :cond_3

    iget v3, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3, v2}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(II)V

    :cond_3
    iget v2, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/github/barteksc/pdfviewer/PagesLoader;->documentPage(I)I

    move-result v2

    if-ltz v2, :cond_4

    iget v0, v0, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadThumbnail(II)V

    :cond_4
    return v1

    :cond_5
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(FZ)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-direct {p0, v0, v5}, Lcom/github/barteksc/pdfviewer/PagesLoader;->getPageAndCoordsByOffset(FZ)Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;

    move-result-object v5

    iget v0, v3, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    iget v1, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ne v0, v1, :cond_6

    iget v0, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    iget v1, v3, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    :goto_4
    move v2, v4

    move v1, v4

    :goto_5
    if-ge v2, v0, :cond_8

    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-ge v1, v5, :cond_8

    sget v5, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    sub-int/2addr v5, v1

    invoke-direct {p0, v2, v5, v4}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadRelative(IIZ)I

    move-result v5

    add-int/2addr v5, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v5

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, v3, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    sub-int/2addr v0, v1

    add-int v1, v4, v0

    iget v0, v3, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    :goto_6
    iget v0, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->page:I

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PagesLoader;->colsRows:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_7
    iget v0, v5, Lcom/github/barteksc/pdfviewer/PagesLoader$Holder;->col:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    goto :goto_4

    :cond_8
    move-object v0, v3

    goto/16 :goto_3
.end method
