.class Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget-object v2, v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget-object v2, v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "data_history"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "kode_mk"

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget v2, v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->a:I

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "presence"

    const/16 v2, 0x3e9

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "at_current_mk"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "username"

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget-object v2, v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->b()V

    :cond_0
    return-void
.end method
