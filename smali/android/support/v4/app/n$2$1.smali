.class Landroid/support/v4/app/n$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/n$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/n$2;


# direct methods
.method constructor <init>(Landroid/support/v4/app/n$2;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/n$2$1;->a:Landroid/support/v4/app/n$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v4/app/n$2$1;->a:Landroid/support/v4/app/n$2;

    iget-object v0, v0, Landroid/support/v4/app/n$2;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/n$2$1;->a:Landroid/support/v4/app/n$2;

    iget-object v0, v0, Landroid/support/v4/app/n$2;->b:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v4/app/n$2$1;->a:Landroid/support/v4/app/n$2;

    iget-object v0, v0, Landroid/support/v4/app/n$2;->c:Landroid/support/v4/app/n;

    iget-object v1, p0, Landroid/support/v4/app/n$2$1;->a:Landroid/support/v4/app/n$2;

    iget-object v1, v1, Landroid/support/v4/app/n$2;->b:Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Landroid/support/v4/app/n$2$1;->a:Landroid/support/v4/app/n$2;

    iget-object v2, v2, Landroid/support/v4/app/n$2;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    :cond_0
    return-void
.end method
