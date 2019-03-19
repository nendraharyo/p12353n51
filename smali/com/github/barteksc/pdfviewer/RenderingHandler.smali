.class Lcom/github/barteksc/pdfviewer/RenderingHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;
    }
.end annotation


# static fields
.field static final MSG_RENDER_TASK:I = 0x1


# instance fields
.field private final openedPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

.field private renderBounds:Landroid/graphics/RectF;

.field private renderMatrix:Landroid/graphics/Matrix;

.field private roundedRenderBounds:Landroid/graphics/Rect;

.field private running:Z


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->openedPages:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    return-void
.end method

.method static synthetic access$000(Lcom/github/barteksc/pdfviewer/RenderingHandler;)Lcom/github/barteksc/pdfviewer/PDFView;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-object v0
.end method

.method private calculateBounds(IILandroid/graphics/RectF;)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v5, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, v5, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->renderBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method private proceed(Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;)Lcom/github/barteksc/pdfviewer/model/PagePart;
    .locals 12

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->openedPages:Ljava/util/Set;

    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->openedPages:Ljava/util/Set;

    iget v1, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v2, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    invoke-virtual {v0, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->openPage(Lcom/shockwave/pdfium/PdfDocument;I)J

    :cond_0
    iget v0, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->width:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v0, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->height:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    :try_start_0
    iget-boolean v0, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bestQuality:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v1, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v0, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bounds:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v3, v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->calculateBounds(IILandroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v3, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->roundedRenderBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-boolean v8, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->annotationRendering:Z

    invoke-virtual/range {v0 .. v8}, Lcom/shockwave/pdfium/PdfiumCore;->renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V

    new-instance v3, Lcom/github/barteksc/pdfviewer/model/PagePart;

    iget v4, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->userPage:I

    iget v5, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    iget v7, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->width:F

    iget v8, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->height:F

    iget-object v9, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bounds:Landroid/graphics/RectF;

    iget-boolean v10, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->thumbnail:Z

    iget v11, p1, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;->cacheOrder:I

    move-object v6, v2

    invoke-direct/range {v3 .. v11}, Lcom/github/barteksc/pdfviewer/model/PagePart;-><init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V

    :goto_1
    return-object v3

    :cond_1
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method addRenderingTask(IIFFLandroid/graphics/RectF;ZIZZ)V
    .locals 11

    new-instance v0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move v5, p1

    move v6, p2

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;-><init>(Lcom/github/barteksc/pdfviewer/RenderingHandler;FFLandroid/graphics/RectF;IIZIZZ)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler;->proceed(Lcom/github/barteksc/pdfviewer/RenderingHandler$RenderingTask;)Lcom/github/barteksc/pdfviewer/model/PagePart;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v2, Lcom/github/barteksc/pdfviewer/RenderingHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/github/barteksc/pdfviewer/RenderingHandler$1;-><init>(Lcom/github/barteksc/pdfviewer/RenderingHandler;Lcom/github/barteksc/pdfviewer/model/PagePart;)V

    invoke-virtual {v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/RenderingHandler;->running:Z

    return-void
.end method
