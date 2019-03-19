.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;
.super Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/Paint$Align;

.field private B:[Landroid/graphics/Paint$Align;

.field private C:F

.field private D:F

.field private E:F

.field private F:[Landroid/graphics/Paint$Align;

.field private G:I

.field private H:[I

.field private I:Z

.field private J:Ljava/text/NumberFormat;

.field private K:[Ljava/text/NumberFormat;

.field private L:F

.field private M:D

.field private N:D

.field private a:Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:F

.field private d:[D

.field private e:[D

.field private f:[D

.field private g:[D

.field private h:I

.field private i:I

.field private j:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:D

.field private r:I

.field private s:[D

.field private t:[D

.field private u:F

.field private v:F

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field private x:F

.field private y:[I

.field private z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    const/4 v6, 0x0

    const v5, -0x333334

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->a:Ljava/lang/String;

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->c:F

    const/4 v0, 0x5

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->h:I

    const/4 v0, 0x5

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->i:I

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->j:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->l:Ljava/util/Map;

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->m:Z

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->n:Z

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->o:Z

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->p:Z

    iput-wide v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->q:D

    iput v6, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->r:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->w:Ljava/util/Map;

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->x:F

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->A:Landroid/graphics/Paint$Align;

    iput v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->C:F

    iput v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->D:F

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->E:F

    iput v5, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->G:I

    new-array v0, v1, [I

    aput v5, v0, v6

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->H:[I

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->I:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->L:F

    iput-wide v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->M:D

    iput-wide v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->N:D

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->z:I

    invoke-virtual {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->c(I)V

    return-void
.end method


# virtual methods
.method public C()Z
    .locals 1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->X()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->Y()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public G()Z
    .locals 1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->V()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public O()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->j:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    return-object v0
.end method

.method public P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->e(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public R()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->c:F

    return v0
.end method

.method public S()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->h:I

    return v0
.end method

.method public declared-synchronized T()[Ljava/lang/Double;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public U()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->i:I

    return v0
.end method

.method public V()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->m:Z

    return v0
.end method

.method public W()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->n:Z

    return v0
.end method

.method public X()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->o:Z

    return v0
.end method

.method public Y()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->p:Z

    return v0
.end method

.method public Z()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->r:I

    return v0
.end method

.method public declared-synchronized a(Ljava/lang/Double;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Double;I)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->l:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(DI)V
    .locals 3

    invoke-virtual {p0, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->g(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->w:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->d:[D

    aput-wide p1, v0, p3

    return-void
.end method

.method public a([DI)V
    .locals 2

    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->a(DI)V

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->b(DI)V

    const/4 v0, 0x2

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->c(DI)V

    const/4 v0, 0x3

    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->d(DI)V

    return-void
.end method

.method public aa()[D
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->s:[D

    return-object v0
.end method

.method public ab()[D
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->t:[D

    return-object v0
.end method

.method public ac()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->u:F

    return v0
.end method

.method public ad()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->v:F

    return v0
.end method

.method public ae()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->q(I)Z

    move-result v0

    return v0
.end method

.method public af()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->G:I

    return v0
.end method

.method public ag()Landroid/graphics/Paint$Align;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->A:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public ah()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->C:F

    return v0
.end method

.method public ai()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->D:F

    return v0
.end method

.method public aj()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->E:F

    return v0
.end method

.method public ak()Ljava/text/NumberFormat;
    .locals 1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->al()Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public al()Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->J:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public am()D
    .locals 2

    iget-wide v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->M:D

    return-wide v0
.end method

.method public an()D
    .locals 2

    iget-wide v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->N:D

    return-wide v0
.end method

.method public ao()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->z:I

    return v0
.end method

.method public b(DI)V
    .locals 3

    invoke-virtual {p0, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->i(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->w:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x1

    aput-wide p1, v0, v1

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->e:[D

    aput-wide p1, v0, p3

    return-void
.end method

.method public c(DI)V
    .locals 3

    invoke-virtual {p0, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->k(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->w:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x2

    aput-wide p1, v0, v1

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->f:[D

    aput-wide p1, v0, p3

    return-void
.end method

.method public c(I)V
    .locals 4

    const/16 v3, 0xc8

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->b:[Ljava/lang/String;

    new-array v0, p1, [Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->B:[Landroid/graphics/Paint$Align;

    new-array v0, p1, [Landroid/graphics/Paint$Align;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->F:[Landroid/graphics/Paint$Align;

    new-array v0, p1, [I

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->H:[I

    new-array v0, p1, [Ljava/text/NumberFormat;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->K:[Ljava/text/NumberFormat;

    new-array v0, p1, [D

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->d:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->e:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->f:[D

    new-array v0, p1, [D

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->g:[D

    new-array v0, p1, [I

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->y:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->H:[I

    const v2, -0x333334

    aput v2, v1, v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->K:[Ljava/text/NumberFormat;

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->y:[I

    const/16 v2, 0x4b

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(DI)V
    .locals 3

    invoke-virtual {p0, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->m(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->w:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    const/4 v1, 0x3

    aput-wide p1, v0, v1

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->g:[D

    aput-wide p1, v0, p3

    return-void
.end method

.method public d(I)V
    .locals 6

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide v2, -0x10000000000001L

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->d:[D

    aput-wide v4, v0, p1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->e:[D

    aput-wide v2, v0, p1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->f:[D

    aput-wide v4, v0, p1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->g:[D

    aput-wide v2, v0, p1

    const/4 v0, 0x4

    new-array v0, v0, [D

    const/4 v1, 0x0

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->d:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->e:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->f:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->g:[D

    aget-wide v2, v2, p1

    aput-wide v2, v0, v1

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->w:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->b:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->B:[Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, p1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->F:[Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, p1

    return-void
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->b:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public f(I)D
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->d:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public g(I)Z
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->d:[D

    aget-wide v0, v0, p1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(I)D
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->e:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public i(I)Z
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->e:[D

    aget-wide v0, v0, p1

    const-wide v2, -0x10000000000001L

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j(I)D
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->f:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public k(I)Z
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->f:[D

    aget-wide v0, v0, p1

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l(I)D
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->g:[D

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public m(I)Z
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->g:[D

    aget-wide v0, v0, p1

    const-wide v2, -0x10000000000001L

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized n(I)[Ljava/lang/Double;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->l:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->r:I

    return-void
.end method

.method public p(I)I
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->y:[I

    aget v0, v0, p1

    return v0
.end method

.method public q(I)Z
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->w:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r(I)[D
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->w:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public s(I)I
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->H:[I

    aget v0, v0, p1

    return v0
.end method

.method public t(I)Landroid/graphics/Paint$Align;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->B:[Landroid/graphics/Paint$Align;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public u(I)Landroid/graphics/Paint$Align;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->F:[Landroid/graphics/Paint$Align;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public v(I)Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->K:[Ljava/text/NumberFormat;

    aget-object v0, v0, p1

    return-object v0
.end method
