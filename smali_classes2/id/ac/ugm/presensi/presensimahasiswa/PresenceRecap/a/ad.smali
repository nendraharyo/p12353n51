.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;
.super Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/s;

.field private d:F

.field private e:F

.field private f:Z

.field private g:I

.field private h:F

.field private i:Landroid/graphics/Paint$Align;

.field private j:F

.field private k:F

.field private l:Landroid/graphics/Paint$Align;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->a:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->b:Ljava/util/List;

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/s;->f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/s;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/s;

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->d:F

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->e:F

    const/16 v0, 0x64

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->g:I

    iput v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->h:F

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->i:Landroid/graphics/Paint$Align;

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->j:F

    iput v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->k:F

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->l:Landroid/graphics/Paint$Align;

    const v0, -0x333334

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->m:I

    return-void
.end method


# virtual methods
.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->a:Z

    return v0
.end method

.method public k()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/s;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/s;

    return-object v0
.end method

.method public l()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->d:F

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->f:Z

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->g:I

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->h:F

    return v0
.end method

.method public p()Landroid/graphics/Paint$Align;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->i:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->j:F

    return v0
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->k:F

    return v0
.end method

.method public s()Landroid/graphics/Paint$Align;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->l:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public t()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->m:I

    return v0
.end method
