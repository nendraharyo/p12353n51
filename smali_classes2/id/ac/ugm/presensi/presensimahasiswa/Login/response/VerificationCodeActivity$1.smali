.class Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->b(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "data_local"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "user_login"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-virtual {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
