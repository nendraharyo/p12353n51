.class Lcom/github/barteksc/pdfviewer/DragPinchManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private isSwipeEnabled:Z

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private scaling:Z

.field private scrolling:Z

.field private swipeVertical:Z


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lcom/github/barteksc/pdfviewer/AnimationManager;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaling:Z

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->isSwipeEnabled:Z

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->swipeVertical:Z

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p0}, Lcom/github/barteksc/pdfviewer/PDFView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private hideHandle()V
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->shown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->hideDelayed()V

    :cond_0
    return-void
.end method

.method private isPageChange(F)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->swipeVertical:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public enableDoubletap(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method public isZooming()Z
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isZooming()Z

    move-result v0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getMidZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getMidZoom()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(FFF)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getMaxZoom()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomWithAnimation(FFF)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->resetZoomWithAnimation()V

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentXOffset()F

    move-result v0

    float-to-int v1, v0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getCurrentYOffset()F

    move-result v0

    float-to-int v2, v0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageWidth()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    neg-float v3, v0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v0

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    neg-float v0, v0

    move v7, v0

    move v5, v3

    :goto_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->animationManager:Lcom/github/barteksc/pdfviewer/AnimationManager;

    float-to-int v3, p3

    float-to-int v4, p4

    float-to-int v5, v5

    float-to-int v7, v7

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/github/barteksc/pdfviewer/AnimationManager;->startFlingAnimation(IIIIIIII)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->calculateDocLength()F

    move-result v0

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v3}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    neg-float v3, v0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getOptimalPageHeight()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->toCurrentScale(F)F

    move-result v0

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v0, v4

    neg-float v0, v0

    move v7, v0

    move v5, v3

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v1

    mul-float/2addr v1, v0

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MINIMUM_ZOOM:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MINIMUM_ZOOM:F

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v1

    div-float/2addr v0, v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomCenteredRelativeTo(FLandroid/graphics/PointF;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MAXIMUM_ZOOM:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    sget v0, Lcom/github/barteksc/pdfviewer/util/Constants$Pinch;->MAXIMUM_ZOOM:F

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->getZoom()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaling:Z

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->hideHandle()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaling:Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->isZooming()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->isSwipeEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    neg-float v1, p3

    neg-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveRelativeTo(FF)V

    :cond_1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaling:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->doRenderDuringScale()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    :cond_3
    return v3
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->hideHandle()V

    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getOnTapListener()Lcom/github/barteksc/pdfviewer/listener/OnTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/github/barteksc/pdfviewer/listener/OnTapListener;->onTap(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->shown()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->show()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->performClick()Z

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->hide()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-boolean v2, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->scrolling:Z

    invoke-virtual {p0, p2}, Lcom/github/barteksc/pdfviewer/DragPinchManager;->onScrollEnd(Landroid/view/MotionEvent;)V

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setSwipeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->isSwipeEnabled:Z

    return-void
.end method

.method public setSwipeVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/barteksc/pdfviewer/DragPinchManager;->swipeVertical:Z

    return-void
.end method
