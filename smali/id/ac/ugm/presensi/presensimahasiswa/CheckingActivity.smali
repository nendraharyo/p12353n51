.class public Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;
.super Lid/ac/ugm/presensi/presensimahasiswa/b;

# interfaces
.implements Lpub/devrel/easypermissions/b$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;-><init>()V

    const-string v0, "CheckingSystemActivity"

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->c:Landroid/content/Intent;

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x0

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "gps"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0f00b9

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f00ba

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f003b

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$8;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$8;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$7;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$7;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    const v3, 0x10008000

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/nfc/NfcAdapter;)V

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->e()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->e()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->b:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->f()V

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user_login"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->finish()V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->finish()V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f00b7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0041

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$3;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$3;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f003b

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$2;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->b:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation runtime Lpub/devrel/easypermissions/a;
        a = 0x7d
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/b;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "all_permission"

    invoke-static {v0, v1, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->d()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "all_permission"

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const/16 v1, 0x7d

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Grant Permission"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, ""

    const/16 v0, 0x7c

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f006a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "Setting Permission"

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$1;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f006b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f006c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b()V
    .locals 4
    .annotation runtime Lpub/devrel/easypermissions/a;
        a = 0x7c
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/b;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->setFinishOnTouchOutside(Z)V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->a()V

    :cond_0
    invoke-direct {p0, p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->c()V

    :cond_1
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->c()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->a()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "all_permission"

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    const/16 v1, 0x7c

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public b(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lpub/devrel/easypermissions/b;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Status"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Grant all permissions needed to access Tolkita?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "No"

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$5;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$5;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Yes"

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$4;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$4;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public c()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "GPS tidak aktif."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Silahkan aktifkan GPS terlabih dahulu."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "Tutup"

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$6;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$6;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->b()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onBackPressed()V

    invoke-static {p0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->b()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2, p3, v0}, Lpub/devrel/easypermissions/b;->a(I[Ljava/lang/String;[I[Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onResume()V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "all_permission"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->d()V

    :cond_0
    return-void
.end method
