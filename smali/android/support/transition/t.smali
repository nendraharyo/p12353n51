.class public Landroid/support/transition/t;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Ljava/lang/Runnable;


# direct methods
.method static a(Landroid/view/View;)Landroid/support/transition/t;
    .locals 1

    sget v0, Landroid/support/transition/r$a;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/t;

    return-object v0
.end method

.method static a(Landroid/view/View;Landroid/support/transition/t;)V
    .locals 1

    sget v0, Landroid/support/transition/r$a;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Landroid/support/transition/t;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroid/support/transition/t;->a(Landroid/view/View;)Landroid/support/transition/t;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Landroid/support/transition/t;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/t;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
