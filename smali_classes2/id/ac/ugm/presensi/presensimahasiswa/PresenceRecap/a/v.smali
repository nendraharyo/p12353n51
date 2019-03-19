.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>(IIDD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;->a:I

    iput p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;->b:I

    iput-wide p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;->c:D

    iput-wide p5, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;->d:D

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;->b:I

    return v0
.end method
