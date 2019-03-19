.class Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    iput-object p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v2, v6, [Z

    aput-boolean v5, v2, v5

    move v0, v1

    :cond_0
    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v3}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)I

    move-result v3

    iget-object v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v4}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->d(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v3, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;I)I

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v3}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)I

    move-result v3

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v3}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    iget-object v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a()I

    move-result v4

    invoke-static {v3, v4}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;I)I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v3}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v3}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->e(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    aput-boolean v6, v2, v5

    :cond_4
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->b(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;

    invoke-direct {v1, p0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;[Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
