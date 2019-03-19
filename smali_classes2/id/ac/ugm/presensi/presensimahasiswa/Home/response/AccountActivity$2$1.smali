.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Landroid/content/DialogInterface;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2;[Landroid/content/DialogInterface;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2$1;->a:[Landroid/content/DialogInterface;

    iput-object p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2$1;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2$1;->a:[Landroid/content/DialogInterface;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2$1;->b:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Password tidak sesuai."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2$1;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2$1;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2;

    iget-object v1, v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2;

    iget-object v1, v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    invoke-virtual {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
