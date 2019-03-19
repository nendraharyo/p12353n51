.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Landroid/content/DialogInterface;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Masukkan akun SSO"

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0b0060

    invoke-virtual {v1, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f09013e

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f090092

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    new-instance v5, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$1;

    invoke-direct {v5, p0, v2, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;[Landroid/content/DialogInterface;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x1040000

    new-instance v5, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$2;

    invoke-direct {v5, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    const/4 v2, -0x1

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v4, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;

    invoke-direct {v4, p0, v1, v3, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1$3;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
