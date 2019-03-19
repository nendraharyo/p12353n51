.class Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
