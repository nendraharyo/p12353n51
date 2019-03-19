.class Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

.field final synthetic c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;ILid/ac/ugm/presensi/presensimahasiswa/Home/a/f;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    iput p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->a:I

    iput-object p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;->c:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "Tidak"

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$1;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Ya"

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
