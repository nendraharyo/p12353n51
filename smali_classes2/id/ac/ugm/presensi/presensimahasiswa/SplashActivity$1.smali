.class Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-wide/16 v0, 0x535

    :try_start_0
    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "geofence"

    invoke-static {v0, v1, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "all_permission"

    invoke-static {v0, v1, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->finish()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "geofence"

    invoke-static {v0, v1, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "all_permission"

    invoke-static {v0, v1, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "geofence"

    invoke-static {v1, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "all_permission"

    invoke-static {v1, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-virtual {v3}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/SplashActivity;->finish()V

    throw v0
.end method
