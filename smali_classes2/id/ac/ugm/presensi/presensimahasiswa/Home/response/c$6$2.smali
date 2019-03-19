.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->onSuccess(I[Lb/a/a/a/e;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;

    iget-object v2, v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    const-class v3, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "mk_finished"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;

    iget-object v1, v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;

    iget-object v1, v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
