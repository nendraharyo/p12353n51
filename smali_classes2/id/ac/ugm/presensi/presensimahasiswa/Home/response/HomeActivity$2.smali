.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "finish"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "user_login"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    invoke-virtual {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->finish()V

    return-void
.end method
