.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Landroid/widget/EditText;

.field final synthetic d:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->d:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->b:Landroid/app/AlertDialog;

    iput-object p4, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->c:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->a:Landroid/widget/EditText;

    const-string v1, "Password harus diisi."

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->d:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    const-string v1, "manualogout"

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->d:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->d:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->c(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;->d:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)V

    goto :goto_0
.end method
