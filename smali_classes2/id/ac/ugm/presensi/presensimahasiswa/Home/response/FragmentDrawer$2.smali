.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$2;
.super Landroid/support/v7/app/ActionBarDrawerToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->a(ILandroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/Toolbar;

.field final synthetic b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;IILandroid/support/v7/widget/Toolbar;)V
    .locals 6

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$2;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    iput-object p7, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$2;->a:Landroid/support/v7/widget/Toolbar;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$2;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->invalidateOptionsMenu()V

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$2;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->invalidateOptionsMenu()V

    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerSlide(Landroid/view/View;F)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$2;->a:Landroid/support/v7/widget/Toolbar;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setAlpha(F)V

    return-void
.end method
