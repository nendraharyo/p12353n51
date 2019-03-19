.class public Lid/ac/ugm/presensi/presensimahasiswa/utils/BottomNavigationBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$b",
        "<",
        "Landroid/support/design/widget/BottomNavigationView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/support/design/widget/BottomNavigationView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/design/widget/BottomNavigationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/design/widget/BottomNavigationView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private b(Landroid/support/design/widget/BottomNavigationView;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/design/widget/BottomNavigationView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/BottomNavigationView;Landroid/view/View;II[I)V
    .locals 0

    if-gez p5, :cond_1

    invoke-direct {p0, p2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/BottomNavigationBehavior;->b(Landroid/support/design/widget/BottomNavigationView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p5, :cond_0

    invoke-direct {p0, p2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/BottomNavigationBehavior;->a(Landroid/support/design/widget/BottomNavigationView;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/BottomNavigationView;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/BottomNavigationBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/BottomNavigationView;Landroid/view/View;II[I)V

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/BottomNavigationView;Landroid/view/View;)Z
    .locals 1

    instance-of v0, p3, Landroid/widget/FrameLayout;

    return v0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/BottomNavigationView;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    check-cast p2, Landroid/support/design/widget/BottomNavigationView;

    invoke-virtual {p0, p1, p2, p3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/BottomNavigationBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/BottomNavigationView;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/BottomNavigationView;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lid/ac/ugm/presensi/presensimahasiswa/utils/BottomNavigationBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/BottomNavigationView;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
