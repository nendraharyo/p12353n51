.class Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;[Z)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->e(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;

    iget-object v1, v1, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;

    iget-object v2, v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->b:Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Intent;)V

    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v0, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->a:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->a:[Z

    aput-boolean v3, v0, v3

    const/4 v0, 0x0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/util/SparseArray;)V

    invoke-static {v2, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(II)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a()V

    goto :goto_0
.end method
