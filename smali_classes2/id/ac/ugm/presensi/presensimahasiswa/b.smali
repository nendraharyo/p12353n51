.class public Lid/ac/ugm/presensi/presensimahasiswa/b;
.super Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/content/Intent;Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    invoke-static {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    invoke-static {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/app/Activity;)V

    return-void
.end method
