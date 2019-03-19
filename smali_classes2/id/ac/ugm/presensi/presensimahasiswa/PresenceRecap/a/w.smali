.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:I

.field private b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;

.field private c:Z

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0xffff01

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->c:Z

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->f:Z

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->h:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->a:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->g:Z

    return-void
.end method

.method public b()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->c:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->e:I

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->h:Z

    return v0
.end method

.method public i()Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->i:Ljava/text/NumberFormat;

    return-object v0
.end method
