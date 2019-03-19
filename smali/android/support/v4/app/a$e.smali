.class Landroid/support/v4/app/a$e;
.super Landroid/support/v4/app/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/app/ab;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/app/a$d;-><init>(Landroid/support/v4/app/ab;)V

    return-void
.end method


# virtual methods
.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/a$e;->a:Landroid/support/v4/app/ab;

    new-instance v1, Landroid/support/v4/app/a$e$1;

    invoke-direct {v1, p0, p3}, Landroid/support/v4/app/a$e$1;-><init>(Landroid/support/v4/app/a$e;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/ab;->a(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/ab$a;)V

    return-void
.end method
