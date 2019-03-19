.class public Landroid/support/v4/app/ad;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/arch/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ad$a;
    }
.end annotation


# instance fields
.field private mExtraDataMap:Landroid/support/v4/h/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/m",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/ad$a;",
            ">;",
            "Landroid/support/v4/app/ad$a;",
            ">;"
        }
    .end annotation
.end field

.field private mLifecycleRegistry:Landroid/arch/lifecycle/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/support/v4/h/m;

    invoke-direct {v0}, Landroid/support/v4/h/m;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ad;->mExtraDataMap:Landroid/support/v4/h/m;

    new-instance v0, Landroid/arch/lifecycle/f;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/f;-><init>(Landroid/arch/lifecycle/e;)V

    iput-object v0, p0, Landroid/support/v4/app/ad;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    return-void
.end method


# virtual methods
.method public getExtraData(Ljava/lang/Class;)Landroid/support/v4/app/ad$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/ad$a;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/ad;->mExtraDataMap:Landroid/support/v4/h/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ad$a;

    return-object v0
.end method

.method public getLifecycle()Landroid/arch/lifecycle/c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ad;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/arch/lifecycle/m;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/ad;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$b;->c:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$b;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public putExtraData(Landroid/support/v4/app/ad$a;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/ad;->mExtraDataMap:Landroid/support/v4/h/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/h/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
