.class public abstract Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;
.super Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;


# instance fields
.field protected a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

.field protected b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

.field protected c:I

.field protected d:I


# direct methods
.method public constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;-><init>()V

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->c:I

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->d:I

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public a()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;)V
    .locals 6

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->h()I

    move-result v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->b()F

    move-result v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->a()Ljava/lang/String;

    move-result-object v2

    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    int-to-float v3, v0

    int-to-float v0, p3

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->b()F

    move-result v1

    add-float v4, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;FFILandroid/graphics/Paint;)V
    .locals 6

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float v2, p4, v1

    const/high16 v0, 0x41200000    # 10.0f

    add-float v3, p3, v0

    add-float v4, p4, v1

    move-object v0, p1

    move v1, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->c:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->c:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->d:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->d:I

    return-void
.end method
