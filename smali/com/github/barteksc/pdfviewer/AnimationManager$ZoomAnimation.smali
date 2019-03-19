.class Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZoomAnimation"
.end annotation


# instance fields
.field private final centerX:F

.field private final centerY:F

.field final synthetic this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/AnimationManager;FF)V
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->centerX:F

    iput p3, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->centerY:F

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->loadPages()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$100(Lcom/github/barteksc/pdfviewer/AnimationManager;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->this$0:Lcom/github/barteksc/pdfviewer/AnimationManager;

    invoke-static {v1}, Lcom/github/barteksc/pdfviewer/AnimationManager;->access$000(Lcom/github/barteksc/pdfviewer/AnimationManager;)Lcom/github/barteksc/pdfviewer/PDFView;

    move-result-object v1

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->centerX:F

    iget v4, p0, Lcom/github/barteksc/pdfviewer/AnimationManager$ZoomAnimation;->centerY:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, v0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->zoomCenteredTo(FLandroid/graphics/PointF;)V

    return-void
.end method
