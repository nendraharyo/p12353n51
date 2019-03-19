.class Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;->d:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
