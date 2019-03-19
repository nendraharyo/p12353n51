.class Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;

    invoke-direct {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;-><init>()V

    invoke-static {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-static {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->b(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-direct {v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)V

    invoke-static {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-static {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->b(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;

    invoke-direct {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;-><init>()V

    invoke-static {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-static {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->b(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0900ba
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
