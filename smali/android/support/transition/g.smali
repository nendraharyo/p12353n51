.class public Landroid/support/transition/g;
.super Landroid/support/transition/at;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/at;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/support/transition/at;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/transition/g;->a(I)V

    return-void
.end method

.method private static a(Landroid/support/transition/aa;F)F
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v1, "android:fade:transitionAlpha"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :cond_0
    return p1
.end method

.method private a(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 3

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Landroid/support/transition/am;->a(Landroid/view/View;F)V

    sget-object v0, Landroid/support/transition/am;->a:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p3, v1, v2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/support/transition/g$a;

    invoke-direct {v1, p1}, Landroid/support/transition/g$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Landroid/support/transition/g$1;

    invoke-direct {v1, p0, p1}, Landroid/support/transition/g$1;-><init>(Landroid/support/transition/g;Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/support/transition/g;->a(Landroid/support/transition/u$c;)Landroid/support/transition/u;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/animation/Animator;
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroid/support/transition/g;->a(Landroid/support/transition/aa;F)F

    move-result v1

    cmpl-float v2, v1, v3

    if-nez v2, :cond_0

    :goto_0
    invoke-direct {p0, p2, v0, v3}, Landroid/support/transition/g;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/support/transition/aa;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/transition/at;->a(Landroid/support/transition/aa;)V

    iget-object v0, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    const-string v1, "android:fade:transitionAlpha"

    iget-object v2, p1, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-static {v2}, Landroid/support/transition/am;->c(Landroid/view/View;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/animation/Animator;
    .locals 2

    invoke-static {p2}, Landroid/support/transition/am;->d(Landroid/view/View;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, v0}, Landroid/support/transition/g;->a(Landroid/support/transition/aa;F)F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/transition/g;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
