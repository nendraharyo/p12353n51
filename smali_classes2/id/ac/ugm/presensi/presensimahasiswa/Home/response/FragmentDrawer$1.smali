.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;)Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$b;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->c(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->i(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 0

    return-void
.end method
