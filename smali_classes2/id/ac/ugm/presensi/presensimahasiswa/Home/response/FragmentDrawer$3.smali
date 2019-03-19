.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->a(ILandroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;)V
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

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->d(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;)Landroid/support/v7/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    return-void
.end method
