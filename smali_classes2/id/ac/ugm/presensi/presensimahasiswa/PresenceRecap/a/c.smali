.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;

.field public static final b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;

.field public static final c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;


# instance fields
.field private d:Landroid/graphics/Paint$Cap;

.field private e:Landroid/graphics/Paint$Join;

.field private f:F

.field private g:[F

.field private h:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;-><init>(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    const/high16 v3, 0x41200000    # 10.0f

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;-><init>(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    const/high16 v3, 0x40a00000    # 5.0f

    new-array v4, v7, [F

    fill-array-data v4, :array_1

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;-><init>(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;

    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data

    :array_1
    .array-data 4
        0x40000000    # 2.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->d:Landroid/graphics/Paint$Cap;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->e:Landroid/graphics/Paint$Join;

    iput p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->f:F

    iput-object p4, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->g:[F

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Paint$Cap;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->d:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method public b()Landroid/graphics/Paint$Join;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->e:Landroid/graphics/Paint$Join;

    return-object v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->f:F

    return v0
.end method

.method public d()[F
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->g:[F

    return-object v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->h:F

    return v0
.end method
