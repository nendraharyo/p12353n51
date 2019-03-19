.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/view/GestureDetector;

.field private b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c$1;

    invoke-direct {v1, p0, p2, p3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;Landroid/support/v7/widget/RecyclerView;Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;->a:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;->a:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;->a(Landroid/view/View;I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
