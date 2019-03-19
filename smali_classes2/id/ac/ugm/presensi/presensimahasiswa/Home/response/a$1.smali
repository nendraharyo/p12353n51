.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "Tidak"

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a$1$1;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a$1$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Ya"

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a$1$2;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a$1$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
