.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->a:F

    iput p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->b:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->a:F

    return v0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->b:F

    return v0
.end method
