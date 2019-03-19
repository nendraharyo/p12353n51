.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private final g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public declared-synchronized a(I)D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;

    invoke-virtual {v0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->g:I

    return v0
.end method

.method public a(D)I
    .locals 3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized a(DDZ)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDZ)",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    if-eqz p5, :cond_1

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    :cond_1
    :goto_0
    cmpg-double v0, p1, p3

    if-gtz v0, :cond_3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr p3, v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)D
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->i:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;

    invoke-virtual {v0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)D
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->i:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;

    invoke-virtual {v0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized d()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/k;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()D
    .locals 2

    iget-wide v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->c:D

    return-wide v0
.end method

.method public f()D
    .locals 2

    iget-wide v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->e:D

    return-wide v0
.end method

.method public g()D
    .locals 2

    iget-wide v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->d:D

    return-wide v0
.end method

.method public h()D
    .locals 2

    iget-wide v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->f:D

    return-wide v0
.end method
