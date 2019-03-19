.class Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$3;
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

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->getCurrentSeriesAndPoint()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, v1

    :goto_1
    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->b(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;->a()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    move-result-object v2

    invoke-virtual {v2, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->a(I)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;

    move-result-object v4

    invoke-virtual {v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;->a()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->d()V

    goto :goto_0
.end method
