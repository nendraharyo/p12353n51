.class public Lcom/github/barteksc/pdfviewer/PDFView;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/PDFView$Configurator;,
        Lcom/github/barteksc/pdfviewer/PDFView$State;,
        Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_SCALE:F = 3.0f

.field public static final DEFAULT_MID_SCALE:F = 1.75f

.field public static final DEFAULT_MIN_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

.field private annotationRendering:Z

.field private antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private bestQuality:Z

.field cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

.field private currentFilteredPage:I

.field private currentPage:I

.field private currentXOffset:F

.field private currentYOffset:F

.field private debugPaint:Landroid/graphics/Paint;

.field private decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

.field private defaultPage:I

.field private documentPageCount:I

.field private dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

.field private enableAntialiasing:Z

.field private filteredUserPageIndexes:[I

.field private filteredUserPages:[I

.field private isScrollHandleInit:Z

.field private maxZoom:F

.field private midZoom:F

.field private minZoom:F

.field private onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

.field private onDrawPagesNums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

.field private onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

.field private onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

.field private onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

.field private onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

.field private onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

.field private optimalPageHeight:F

.field private optimalPageWidth:F

.field private originalUserPages:[I

.field private pageHeight:I

.field private pageWidth:I

.field private pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

.field private paint:Landroid/graphics/Paint;

.field private pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

.field private recycled:Z

.field private renderDuringScale:Z

.field renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

.field private final renderingHandlerThread:Landroid/os/HandlerThread;

.field private scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

.field private scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

.field private spacingPx:I

.field private state:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field private swipeVertical:Z

.field private zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    const/high16 v0, 0x3fe00000    # 1.75f

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iput v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    iput v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    iput-boolean v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

    iput v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PDF renderer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-direct {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    new-instance v0, Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {v0, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    new-instance v0, Lcom/github/barteksc/pdfviewer/DragPinchManager;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {v0, p0, v1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {v0, p1}, Lcom/shockwave/pdfium/PdfiumCore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnDrawListener(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/github/barteksc/pdfviewer/PDFView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/github/barteksc/pdfviewer/PDFView;)Lcom/github/barteksc/pdfviewer/DragPinchManager;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnDrawAllListener(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnPageChangeListener(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnPageScrollListener(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnRenderListener(Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnTapListener(Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setDefaultPage(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setScrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/github/barteksc/pdfviewer/PDFView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->setSpacing(I)V

    return-void
.end method

.method private calculateCenterOffsetForPage(I)F
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr v1, p1

    int-to-float v1, v1

    add-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr v1, p1

    int-to-float v1, v1

    add-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private calculateOptimalWidthAndHeight()V
    .locals 6

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageWidth:I

    int-to-float v1, v1

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageHeight:I

    int-to-float v3, v3

    div-float v3, v1, v3

    div-float v1, v2, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v1, v4

    cmpl-float v4, v1, v0

    if-lez v4, :cond_2

    mul-float v1, v0, v3

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v1, v2

    :goto_1
    iput v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private calculatePageOffset(I)F
    .locals 2

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr v1, p1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr v1, p1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    goto :goto_0
.end method

.method private determineValidPageNumberFrom(I)I
    .locals 1

    if-gtz p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    add-int/lit8 p1, v0, -0x1

    goto :goto_0
.end method

.method private drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .locals 12

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result v0

    move v2, v1

    :goto_1
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v6

    iget v7, v3, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget v9, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v9, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v3, v9

    invoke-virtual {p0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v3

    new-instance v9, Landroid/graphics/RectF;

    float-to-int v10, v6

    int-to-float v10, v10

    float-to-int v11, v7

    int-to-float v11, v11

    add-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v6, v6

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-direct {v9, v10, v11, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    add-float/2addr v3, v2

    iget v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    add-float/2addr v6, v0

    iget v7, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gez v7, :cond_1

    iget v7, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v7

    cmpg-float v3, v3, v1

    if-lez v3, :cond_1

    iget v3, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v3, v3, v7

    if-gez v3, :cond_1

    iget v3, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v6

    cmpg-float v1, v3, v1

    if-gtz v1, :cond_3

    :cond_1
    neg-float v1, v2

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result v0

    move v2, v0

    move v0, v1

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    sget-boolean v1, Lcom/github/barteksc/pdfviewer/util/Constants;->DEBUG_MODE:Z

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    const/high16 v1, -0x10000

    :goto_2
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    neg-float v1, v2

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0

    :cond_5
    const v1, -0xffff01

    goto :goto_2
.end method

.method private drawWithListener(Landroid/graphics/Canvas;ILcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v3

    invoke-interface {p3, p1, v2, v3, p2}, Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;->onLayerDrawn(Landroid/graphics/Canvas;FFI)V

    neg-float v1, v1

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result v0

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method

.method private load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/github/barteksc/pdfviewer/PDFView;->load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V

    return-void
.end method

.method private load(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;[I)V
    .locals 7

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t call load on a PDF View without recycling it first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p5, :cond_1

    iput-object p5, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/ArrayUtils;->deleteDuplicatedPages([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPages:[I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/ArrayUtils;->calculateIndexesInDuplicateArray([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    :cond_1
    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    aget v5, v0, v6

    :goto_0
    iput-boolean v6, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    new-instance v0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;-><init>(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;I)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    move v5, v6

    goto :goto_0
.end method

.method private setDefaultPage(I)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    return-void
.end method

.method private setOnDrawAllListener(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    return-void
.end method

.method private setOnDrawListener(Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    return-void
.end method

.method private setOnPageChangeListener(Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    return-void
.end method

.method private setOnPageScrollListener(Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    return-void
.end method

.method private setOnRenderListener(Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    return-void
.end method

.method private setOnTapListener(Lcom/github/barteksc/pdfviewer/listener/OnTapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    return-void
.end method

.method private setScrollHandle(Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-void
.end method

.method private setSpacing(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    return-void
.end method


# virtual methods
.method calculateDocLength()F
    .locals 3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->computeFling()V

    return-void
.end method

.method public doRenderDuringScale()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    return v0
.end method

.method public documentFitsView()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    mul-int/2addr v3, v4

    iget-boolean v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v4, :cond_2

    int-to-float v2, v2

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    mul-float/2addr v2, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    int-to-float v2, v2

    iget v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    mul-float/2addr v2, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public enableAnnotationRendering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    return-void
.end method

.method public enableAntialiasing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    return-void
.end method

.method public enableDoubletap(Z)V
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->enableDoubletap(Z)V

    return-void
.end method

.method public enableRenderDuringScale(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderDuringScale:Z

    return-void
.end method

.method public enableSwipe(Z)V
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->dragPinchManager:Lcom/github/barteksc/pdfviewer/DragPinchManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->setSwipeEnabled(Z)V

    return-void
.end method

.method public fitToWidth()V
    .locals 2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView;->TAG:Ljava/lang/String;

    const-string v1, "Cannot fit, document not rendered yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setPositionOffset(F)V

    goto :goto_0
.end method

.method public fitToWidth(I)V
    .locals 2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView;->TAG:Ljava/lang/String;

    const-string v1, "Cannot fit, document not rendered yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->fitToWidth()V

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(I)V

    goto :goto_0
.end method

.method public fromAsset(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 3

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/AssetSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/AssetSource;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromBytes([B)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 3

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/ByteArraySource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/ByteArraySource;-><init>([B)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromFile(Ljava/io/File;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 3

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/FileSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/FileSource;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromSource(Lcom/github/barteksc/pdfviewer/source/DocumentSource;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 2

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromStream(Ljava/io/InputStream;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 3

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/InputStreamSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/InputStreamSource;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public fromUri(Landroid/net/Uri;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;
    .locals 3

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/source/UriSource;

    invoke-direct {v1, p1}, Lcom/github/barteksc/pdfviewer/source/UriSource;-><init>(Landroid/net/Uri;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/source/DocumentSource;Lcom/github/barteksc/pdfviewer/PDFView$1;)V

    return-object v0
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    return v0
.end method

.method public getCurrentXOffset()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    return v0
.end method

.method public getCurrentYOffset()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    return v0
.end method

.method public getDocumentMeta()Lcom/shockwave/pdfium/PdfDocument$Meta;
    .locals 2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/shockwave/pdfium/PdfiumCore;->getDocumentMeta(Lcom/shockwave/pdfium/PdfDocument;)Lcom/shockwave/pdfium/PdfDocument$Meta;

    move-result-object v0

    goto :goto_0
.end method

.method getDocumentPageCount()I
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    return v0
.end method

.method getFilteredUserPageIndexes()[I
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    return-object v0
.end method

.method getFilteredUserPages()[I
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPages:[I

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    return v0
.end method

.method public getMidZoom()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    return v0
.end method

.method public getMinZoom()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    return v0
.end method

.method getOnPageChangeListener()Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    return-object v0
.end method

.method getOnPageScrollListener()Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    return-object v0
.end method

.method getOnRenderListener()Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    return-object v0
.end method

.method getOnTapListener()Lcom/github/barteksc/pdfviewer/listener/OnTapListener;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onTapListener:Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    return-object v0
.end method

.method public getOptimalPageHeight()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    return v0
.end method

.method public getOptimalPageWidth()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    return v0
.end method

.method getOriginalUserPages()[I
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    return-object v0
.end method

.method public getPageAtPositionOffset(F)I
    .locals 2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public getPageCount()I
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    goto :goto_0
.end method

.method public getPositionOffset()F
    .locals 3

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/util/MathUtils;->limit(FFF)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method getScrollDir()Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    return-object v0
.end method

.method getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    return-object v0
.end method

.method getSpacingPx()I
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    return v0
.end method

.method public getTableOfContents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/shockwave/pdfium/PdfiumCore;->getTableOfContents(Lcom/shockwave/pdfium/PdfDocument;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getZoom()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    return v0
.end method

.method public isAnnotationRendering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->annotationRendering:Z

    return v0
.end method

.method public isAntialiasing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    return v0
.end method

.method public isBestQuality()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    return v0
.end method

.method public isSwipeVertical()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return v0
.end method

.method public isZooming()Z
    .locals 2

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpTo(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(IZ)V

    return-void
.end method

.method public jumpTo(IZ)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result v0

    neg-float v0, v0

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {v1, v2, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startYAnimation(FF)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->showPage(I)V

    return-void

    :cond_0
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {p0, v1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {v1, v2, v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startXAnimation(FF)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    goto :goto_0
.end method

.method loadComplete(Lcom/shockwave/pdfium/PdfDocument;II)V
    .locals 3

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v0, p1}, Lcom/shockwave/pdfium/PdfiumCore;->getPageCount(Lcom/shockwave/pdfium/PdfDocument;)I

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageWidth:I

    iput p3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pageHeight:I

    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateOptimalWidthAndHeight()V

    new-instance v0, Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-direct {v0, p0}, Lcom/github/barteksc/pdfviewer/PagesLoader;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    new-instance v0, Lcom/github/barteksc/pdfviewer/RenderingHandler;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;-><init>(Landroid/os/Looper;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->start()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-interface {v0, p0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setupLayout(Lcom/github/barteksc/pdfviewer/PDFView;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onLoadCompleteListener:Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->documentPageCount:I

    invoke-interface {v0, v1}, Lcom/github/barteksc/pdfviewer/listener/OnLoadCompleteListener;->loadComplete(I)V

    :cond_2
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->defaultPage:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->jumpTo(IZ)V

    return-void
.end method

.method loadError(Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onErrorListener:Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;

    invoke-interface {v0, p1}, Lcom/github/barteksc/pdfviewer/listener/OnErrorListener;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "PDFView"

    const-string v1, "load pdf error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method loadPageByOffset()V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->spacingPx:I

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->showPage(I)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    add-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    goto :goto_0
.end method

.method public loadPages()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->makeANewSet()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pagesLoader:Lcom/github/barteksc/pdfviewer/PagesLoader;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PagesLoader;->loadPages()V

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    goto :goto_0
.end method

.method public moveRelativeTo(FF)V
    .locals 2

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    add-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    return-void
.end method

.method public moveTo(FFZ)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v4

    sub-float p1, v2, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_6

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    :cond_1
    :goto_1
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    :goto_2
    move p2, v0

    move v0, p1

    :goto_3
    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iput p2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPositionOffset()F

    move-result v0

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-interface {v1, v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setScroll(F)V

    :cond_2
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageScrollListener:Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentPage()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/github/barteksc/pdfviewer/listener/OnPageScrollListener;->onPageScrolled(IF)V

    :cond_3
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    return-void

    :cond_4
    cmpl-float v2, p1, v0

    if-lez v2, :cond_5

    move p1, v0

    goto :goto_0

    :cond_5
    add-float v2, p1, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float p1, v2, v1

    goto :goto_0

    :cond_6
    cmpl-float v2, p2, v0

    if-gtz v2, :cond_1

    add-float v0, p2, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_12

    neg-float v0, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_8

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->START:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_2

    :cond_8
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto :goto_2

    :cond_9
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-virtual {p0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_c

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    div-float/2addr v1, v4

    sub-float p2, v2, v1

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_e

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    :cond_b
    :goto_5
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_f

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->END:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_3

    :cond_c
    cmpl-float v2, p2, v0

    if-lez v2, :cond_d

    move p2, v0

    goto :goto_4

    :cond_d
    add-float v2, p2, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float p2, v2, v1

    goto :goto_4

    :cond_e
    cmpl-float v2, p1, v0

    if-gtz v2, :cond_b

    add-float v0, p1, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_11

    neg-float v0, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_5

    :cond_f
    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_10

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->START:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_3

    :cond_10
    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;->NONE:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    iput-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollDir:Lcom/github/barteksc/pdfviewer/PDFView$ScrollDir;

    goto/16 :goto_3

    :cond_11
    move v0, p1

    goto :goto_5

    :cond_12
    move v0, p2

    goto/16 :goto_1
.end method

.method public onBitmapRendered(Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .locals 4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onRenderListener:Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageWidth:F

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->optimalPageHeight:F

    invoke-interface {v0, v1, v2, v3}, Lcom/github/barteksc/pdfviewer/listener/OnRenderListener;->onInitiallyRendered(IFF)V

    :cond_0
    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->isThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/CacheManager;->cacheThumbnail(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->redraw()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/CacheManager;->cachePart(Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->recycle()V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->enableAntialiasing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->antialiasFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    :cond_2
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-direct {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->getPageParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-direct {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->drawPart(Landroid/graphics/Canvas;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawAllListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-direct {p0, p1, v0, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->drawWithListener(Landroid/graphics/Canvas;ILcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawPagesNums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onDrawListener:Lcom/github/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-direct {p0, p1, v0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->drawWithListener(Landroid/graphics/Canvas;ILcom/github/barteksc/pdfviewer/listener/OnDrawListener;)V

    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateOptimalWidthAndHeight()V

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    invoke-direct {p0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    :goto_1
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculatePageOffset(I)F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    goto :goto_1
.end method

.method public recycle()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->stop()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    invoke-virtual {v0, v3}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->decodingAsyncTask:Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;

    invoke-virtual {v0, v3}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->cacheManager:Lcom/github/barteksc/pdfviewer/CacheManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->recycle()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->destroyLayout()V

    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    invoke-virtual {v0, v1}, Lcom/shockwave/pdfium/PdfiumCore;->closeDocument(Lcom/shockwave/pdfium/PdfDocument;)V

    :cond_3
    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->renderingHandler:Lcom/github/barteksc/pdfviewer/RenderingHandler;

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->originalUserPages:[I

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPages:[I

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iput-object v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->isScrollHandleInit:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    iput-boolean v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->state:Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-void
.end method

.method redraw()V
    .locals 0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->invalidate()V

    return-void
.end method

.method public resetZoom()V
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    return-void
.end method

.method public resetZoomWithAnimation()V
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(F)V

    return-void
.end method

.method public setMaxZoom(F)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->maxZoom:F

    return-void
.end method

.method public setMidZoom(F)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->midZoom:F

    return-void
.end method

.method public setMinZoom(F)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->minZoom:F

    return-void
.end method

.method public setPositionOffset(F)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->setPositionOffset(FZ)V

    return-void
.end method

.method public setPositionOffset(FZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    :goto_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    invoke-virtual {p0, v0, v1, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FFZ)V

    goto :goto_0
.end method

.method public setSwipeVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->swipeVertical:Z

    return-void
.end method

.method showPage(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->recycled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->determineValidPageNumberFrom(I)I

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->filteredUserPageIndexes:[I

    aget v0, v1, v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentFilteredPage:I

    :cond_2
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->scrollHandle:Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->setPageNum(I)V

    :cond_3
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->onPageChangeListener:Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentPage:I

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/listener/OnPageChangeListener;->onPageChanged(II)V

    goto :goto_0
.end method

.method public stopFling()V
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    return-void
.end method

.method public toCurrentScale(F)F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public toRealScale(F)F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    div-float v0, p1, v0

    return v0
.end method

.method public useBestQuality(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->bestQuality:Z

    return-void
.end method

.method public zoomCenteredRelativeTo(FLandroid/graphics/PointF;)V
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomCenteredTo(FLandroid/graphics/PointF;)V

    return-void
.end method

.method public zoomCenteredTo(FLandroid/graphics/PointF;)V
    .locals 5

    iget v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    div-float v0, p1, v0

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomTo(F)V

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentXOffset:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView;->currentYOffset:F

    mul-float/2addr v2, v0

    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    add-float/2addr v1, v3

    iget v3, p2, Landroid/graphics/PointF;->y:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v4

    sub-float v0, v3, v0

    add-float/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    return-void
.end method

.method public zoomTo(F)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    return-void
.end method

.method public zoomWithAnimation(F)V
    .locals 4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startZoomAnimation(FFFF)V

    return-void
.end method

.method public zoomWithAnimation(FFF)V
    .locals 2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iget v1, p0, Lcom/github/barteksc/pdfviewer/PDFView;->zoom:F

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startZoomAnimation(FFFF)V

    return-void
.end method
