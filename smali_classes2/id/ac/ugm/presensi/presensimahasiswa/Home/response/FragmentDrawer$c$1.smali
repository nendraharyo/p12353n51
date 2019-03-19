.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;

.field final synthetic b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;

.field final synthetic c:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;Landroid/support/v7/widget/RecyclerView;Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c$1;->a:Landroid/support/v7/widget/RecyclerView;

    iput-object p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c$1;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;->b(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
