.class Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

.field final synthetic b:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->d(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;)I

    move-result v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->e(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a()I

    move-result v1

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;I)I

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->d(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->f(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7$1;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
