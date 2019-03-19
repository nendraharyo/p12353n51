.class Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-virtual {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->e:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
