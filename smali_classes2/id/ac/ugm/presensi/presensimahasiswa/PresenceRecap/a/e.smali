.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/content/Context;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;
    .locals 2

    invoke-static {p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/e;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;)V

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/o;

    invoke-direct {v0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/o;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;)V

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-direct {v1, p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;-><init>(Landroid/content/Context;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;)V

    return-object v1
.end method

.method private static a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;->a()I

    move-result v0

    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->c()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dataset and renderer should be not null and the dataset number of items should be equal to the number of series renderers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
