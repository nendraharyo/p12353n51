.class Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;JJ)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    new-instance v1, Lcom/loopj/android/http/PersistentCookieStore;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    invoke-direct {v1, v2}, Lcom/loopj/android/http/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;Lcom/loopj/android/http/PersistentCookieStore;)Lcom/loopj/android/http/PersistentCookieStore;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mk_finished"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    const-string v1, "data_local"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;)Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    iput-object v0, v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->b(Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    invoke-virtual {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->a:Landroid/content/Intent;

    const-string v1, "countdown"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    iget-object v1, v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
