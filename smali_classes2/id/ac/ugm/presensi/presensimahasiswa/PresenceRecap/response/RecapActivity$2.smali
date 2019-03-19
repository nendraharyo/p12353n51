.class Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;

    invoke-virtual {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
