.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;)D
    .locals 4

    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->a()F

    move-result v0

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->c:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->b()F

    move-result v2

    iget v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->d:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v0, v2, v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public a(IFFF)V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->a:Ljava/util/List;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/q;

    invoke-direct {v1, p1, p2, p3, p4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/q;-><init>(IFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(III)V
    .locals 0

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->b:I

    iput p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->c:I

    iput p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->d:I

    return-void
.end method

.method public a(I)Z
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;)Z
    .locals 6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->c:I

    int-to-float v0, v0

    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->a()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->d:I

    int-to-float v2, v2

    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->b()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->b:I

    iget v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->b:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;
    .locals 8

    invoke-virtual {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->b(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;)D

    move-result-wide v2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/p;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/q;

    invoke-virtual {v0, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/q;->a(D)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/q;->a()I

    move-result v3

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/q;->b()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/q;->b()F

    move-result v0

    float-to-double v6, v0

    invoke-direct/range {v1 .. v7}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;-><init>(IIDD)V

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
