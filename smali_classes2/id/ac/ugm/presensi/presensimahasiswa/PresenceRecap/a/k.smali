.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;
.super Ljava/util/TreeMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TK;>;"
        }
    .end annotation
.end field

.field private b:D


# direct methods
.method private a()V
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->b:D

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->b:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sub-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->b:D

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a()V

    invoke-super {p0}, Ljava/util/TreeMap;->clear()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a()V

    invoke-super {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
