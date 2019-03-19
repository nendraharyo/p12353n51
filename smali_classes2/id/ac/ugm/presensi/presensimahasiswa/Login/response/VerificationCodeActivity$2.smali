.class Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$2;
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

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x1d4c0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-static {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->d(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060081

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Kode verifikasi berhasil dikirim ke email."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
