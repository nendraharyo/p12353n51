.class Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$2;
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

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "Info DSSDI"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "How to reset password? contact DSSDI..., free text\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n ...free text..."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string v1, "OK"

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$2$1;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$2$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/ManualActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
