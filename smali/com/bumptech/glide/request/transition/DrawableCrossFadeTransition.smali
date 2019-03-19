.class public Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/transition/Transition;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/Transition",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final duration:I

.field private final isCrossFadeEnabled:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;->duration:I

    iput-boolean p2, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;->isCrossFadeEnabled:Z

    return-void
.end method


# virtual methods
.method public transition(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-direct {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;->isCrossFadeEnabled:Z

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget v0, p0, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;->duration:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    invoke-interface {p2, v1}, Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return v4
.end method

.method public bridge synthetic transition(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/request/transition/DrawableCrossFadeTransition;->transition(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/request/transition/Transition$ViewAdapter;)Z

    move-result v0

    return v0
.end method
