.class Lcom/github/barteksc/pdfviewer/AnimationManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;,
        Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;,
        Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;
    }
.end annotation


# instance fields
.field private animation:Landroid/animation/ValueAnimator;

.field private flinging:Z

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private scroller:Landroid/widget/OverScroller;


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    return-void
.end method

.method static synthetic access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/barteksc/pdfviewer/AnimationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->hideHandle()V

    return-void
.end method

.method private hideHandle()V
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getScrollHandle()Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;->hideDelayed()V

    :cond_0
    return-void
.end method


# virtual methods
.method computeFling()V
    .locals 3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->moveTo(FF)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPageByOffset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->hideHandle()V

    goto :goto_0
.end method

.method public startFlingAnimation(IIIIIIII)V
    .locals 9

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    return-void
.end method

.method public startXAnimation(FF)V
    .locals 4

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;

    invoke-direct {v1, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager$XAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startYAnimation(FF)V
    .locals 4

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;

    invoke-direct {v1, p0}, Lcom/github/barteksc/pdfviewer/AnimationManager$YAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startZoomAnimation(FFFF)V
    .locals 4

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopAll()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    aput p4, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;

    invoke-direct {v0, p0, p1, p2}, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;-><init>(Lcom/github/barteksc/pdfviewer/AnimationManager;FF)V

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public stopAll()V
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->animation:Landroid/animation/ValueAnimator;

    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->stopFling()V

    return-void
.end method

.method public stopFling()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->flinging:Z

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager;->scroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    return-void
.end method
