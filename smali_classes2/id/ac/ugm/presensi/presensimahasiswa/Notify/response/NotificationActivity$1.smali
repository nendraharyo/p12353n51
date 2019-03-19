.class Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;

    invoke-virtual {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->finish()V

    const/4 v0, 0x0

    return v0
.end method
