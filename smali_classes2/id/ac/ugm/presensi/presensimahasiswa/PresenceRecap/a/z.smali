.class public abstract Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;
.super Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;


# instance fields
.field protected a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;

.field protected b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

.field protected transient c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;

.field private g:Landroid/graphics/Rect;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/f;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->i:Ljava/util/Map;

    return-void
.end method

.method private a(Landroid/graphics/Paint$Align;)I
    .locals 2

    const/4 v0, 0x4

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne p1, v1, :cond_0

    neg-int v0, v0

    :cond_0
    return v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->isNaN()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private a(Landroid/graphics/Canvas;FZ)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p3, :cond_0

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->d:F

    div-float v0, v2, v0

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->d:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->e:F

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->e:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    neg-float v0, p2

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->a()F

    move-result v1

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->b()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->a()F

    move-result v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->b()F

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->e:F

    neg-float v0, v0

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->e:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->d:F

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->d:F

    div-float v1, v2, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V
    .locals 0

    invoke-virtual {p6, p1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p6, p2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {p6, p3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p6, p5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {p6, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public a()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    return-object v0
.end method

.method public a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;
    .locals 8

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->i:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_2

    const/4 v3, 0x0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->i:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->i:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/f;->a()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->a()F

    move-result v5

    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;->b()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/f;->b()D

    move-result-wide v4

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/f;->c()D

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;-><init>(IIDD)V

    :goto_2
    return-object v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;

    move-result-object v1

    goto :goto_2
.end method

.method protected a(DDI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/l;->a(DDI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected a([D[DI)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D[DI)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->U()I

    move-result v3

    invoke-static {v4, v5, v6, v7, v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/l;->a(DDI)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 53

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->z()Z

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    div-int/lit8 v5, p5, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->R()F

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;IF)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->K()[I

    move-result-object v40

    const/4 v4, 0x1

    aget v4, v40, v4

    add-int v8, p2, v4

    const/4 v4, 0x0

    aget v4, v40, v4

    add-int v41, p3, v4

    add-int v4, p2, p4

    const/4 v5, 0x3

    aget v5, v40, v5

    sub-int v9, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;->a()I

    move-result v28

    move/from16 v0, v28

    new-array v7, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    move/from16 v0, v28

    if-ge v4, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;

    invoke-virtual {v5, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;->a(I)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;

    move-result-object v5

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->u()Z

    move-result v4

    if-eqz v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->t()Z

    move-result v4

    if-eqz v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    const/4 v15, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v14, p6

    invoke-virtual/range {v4 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move-result v13

    move/from16 v37, v13

    :goto_1
    add-int v4, p3, p5

    const/4 v5, 0x2

    aget v5, v40, v5

    sub-int/2addr v4, v5

    sub-int v4, v4, v37

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->g:Landroid/graphics/Rect;

    if-nez v5, :cond_1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->g:Landroid/graphics/Rect;

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->g:Landroid/graphics/Rect;

    move/from16 v0, v41

    invoke-virtual {v5, v8, v0, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v10, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    invoke-virtual/range {v10 .. v19}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->x()Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->x()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->v()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Typeface;->getStyle()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->w()I

    move-result v6

    if-eq v5, v6, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->x()Landroid/graphics/Typeface;

    move-result-object v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->x()Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->O()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-result-object v26

    sget-object v5, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-object/from16 v0, v26

    if-ne v0, v5, :cond_3e

    sub-int v9, v9, v37

    add-int/lit8 v5, v37, -0x14

    add-int v17, v4, v5

    move/from16 v38, v9

    :goto_3
    invoke-virtual/range {v26 .. v26}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->a()I

    move-result v42

    const/16 v4, 0x5a

    move/from16 v0, v42

    if-ne v0, v4, :cond_8

    const/4 v4, 0x1

    move/from16 v39, v4

    :goto_4
    move/from16 v0, p5

    int-to-float v4, v0

    move/from16 v0, p4

    int-to-float v5, v0

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->d:F

    sub-int v4, p4, p5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->e:F

    move-object/from16 v0, p0

    iget v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->d:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->e:F

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->e:F

    :cond_5
    new-instance v4, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;

    add-int v5, p2, p4

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int v6, p3, p5

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;-><init>(FF)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;

    if-eqz v39, :cond_6

    move/from16 v0, v42

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;FZ)V

    :cond_6
    const v5, -0x7fffffff

    const/4 v4, 0x0

    :goto_5
    move/from16 v0, v28

    if-ge v4, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;

    invoke-virtual {v6, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;->a(I)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;

    move-result-object v6

    invoke-virtual {v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->a()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->v()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->w()I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_2

    :cond_8
    const/4 v4, 0x0

    move/from16 v39, v4

    goto/16 :goto_4

    :cond_9
    add-int/lit8 v43, v5, 0x1

    if-gez v43, :cond_b

    :cond_a
    :goto_6
    return-void

    :cond_b
    move/from16 v0, v43

    new-array v0, v0, [D

    move-object/from16 v44, v0

    move/from16 v0, v43

    new-array v0, v0, [D

    move-object/from16 v45, v0

    move/from16 v0, v43

    new-array v0, v0, [D

    move-object/from16 v46, v0

    move/from16 v0, v43

    new-array v0, v0, [D

    move-object/from16 v47, v0

    move/from16 v0, v43

    new-array v6, v0, [Z

    move/from16 v0, v43

    new-array v9, v0, [Z

    move/from16 v0, v43

    new-array v10, v0, [Z

    move/from16 v0, v43

    new-array v11, v0, [Z

    const/4 v4, 0x0

    :goto_7
    move/from16 v0, v43

    if-ge v4, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->f(I)D

    move-result-wide v12

    aput-wide v12, v44, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->h(I)D

    move-result-wide v12

    aput-wide v12, v45, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->j(I)D

    move-result-wide v12

    aput-wide v12, v46, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->l(I)D

    move-result-wide v12

    aput-wide v12, v47, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->g(I)Z

    move-result v5

    aput-boolean v5, v6, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->i(I)Z

    move-result v5

    aput-boolean v5, v9, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->k(I)Z

    move-result v5

    aput-boolean v5, v10, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->m(I)Z

    move-result v5

    aput-boolean v5, v11, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->h:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v5, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->h:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x4

    new-array v13, v13, [D

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    move/from16 v0, v43

    new-array v0, v0, [D

    move-object/from16 v48, v0

    move/from16 v0, v43

    new-array v0, v0, [D

    move-object/from16 v49, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_8
    move/from16 v0, v28

    if-ge v5, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;

    invoke-virtual {v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;->a(I)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;

    move-result-object v12

    invoke-virtual {v12}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->a()I

    move-result v13

    invoke-virtual {v12}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->d()I

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    :goto_9
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_8

    :cond_f
    aget-boolean v4, v6, v13

    if-nez v4, :cond_10

    invoke-virtual {v12}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->e()D

    move-result-wide v14

    aget-wide v18, v44, v13

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    aput-wide v14, v44, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->h:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v14, 0x0

    aget-wide v18, v44, v13

    aput-wide v18, v4, v14

    :cond_10
    aget-boolean v4, v9, v13

    if-nez v4, :cond_11

    invoke-virtual {v12}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->g()D

    move-result-wide v14

    aget-wide v18, v45, v13

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    aput-wide v14, v45, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->h:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v14, 0x1

    aget-wide v18, v45, v13

    aput-wide v18, v4, v14

    :cond_11
    aget-boolean v4, v10, v13

    if-nez v4, :cond_12

    invoke-virtual {v12}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->f()D

    move-result-wide v14

    aget-wide v18, v46, v13

    double-to-float v4, v14

    float-to-double v14, v4

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    aput-wide v14, v46, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->h:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v14, 0x2

    aget-wide v18, v46, v13

    aput-wide v18, v4, v14

    :cond_12
    aget-boolean v4, v11, v13

    if-nez v4, :cond_e

    invoke-virtual {v12}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->h()D

    move-result-wide v14

    aget-wide v18, v47, v13

    double-to-float v4, v14

    float-to-double v14, v4

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    aput-wide v14, v47, v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->h:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v12, 0x3

    aget-wide v14, v47, v13

    aput-wide v14, v4, v12

    goto/16 :goto_9

    :cond_13
    const/4 v4, 0x0

    :goto_a
    move/from16 v0, v43

    if-ge v4, v0, :cond_17

    aget-wide v10, v45, v4

    aget-wide v12, v44, v4

    sub-double/2addr v10, v12

    const-wide/16 v12, 0x0

    cmpl-double v5, v10, v12

    if-eqz v5, :cond_14

    sub-int v5, v38, v8

    int-to-double v10, v5

    aget-wide v12, v45, v4

    aget-wide v14, v44, v4

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    aput-wide v10, v48, v4

    :cond_14
    aget-wide v10, v47, v4

    aget-wide v12, v46, v4

    sub-double/2addr v10, v12

    const-wide/16 v12, 0x0

    cmpl-double v5, v10, v12

    if-eqz v5, :cond_15

    sub-int v5, v17, v41

    int-to-double v10, v5

    aget-wide v12, v47, v4

    aget-wide v14, v46, v4

    sub-double/2addr v12, v14

    div-double/2addr v10, v12

    double-to-float v5, v10

    float-to-double v10, v5

    aput-wide v10, v49, v4

    :cond_15
    if-lez v4, :cond_16

    const/4 v5, 0x0

    aget-wide v10, v48, v5

    aput-wide v10, v48, v4

    const/4 v5, 0x0

    aget-wide v10, v44, v5

    aput-wide v10, v44, v4

    const/4 v5, 0x0

    aget-wide v10, v45, v5

    aput-wide v10, v45, v4

    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_17
    const/4 v5, 0x0

    const/4 v4, 0x0

    move/from16 v52, v4

    move v4, v5

    move/from16 v5, v52

    :goto_b
    move/from16 v0, v28

    if-ge v5, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;

    invoke-virtual {v6, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;->a(I)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;

    move-result-object v6

    invoke-virtual {v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->d()I

    move-result v6

    if-nez v6, :cond_18

    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_18
    const/4 v4, 0x1

    goto :goto_c

    :cond_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->k()Z

    move-result v5

    if-eqz v5, :cond_1d

    if-eqz v4, :cond_1d

    const/4 v4, 0x1

    move v6, v4

    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->o()Z

    move-result v50

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->p()Z

    move-result v51

    if-nez v50, :cond_1a

    if-eqz v51, :cond_1c

    :cond_1a
    const/4 v4, 0x0

    aget-wide v10, v44, v4

    const/4 v4, 0x0

    aget-wide v12, v45, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->S()I

    move-result v14

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(DDI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a([D[DI)Ljava/util/Map;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->l()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->m()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->a(Z)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c:Landroid/graphics/Paint;

    if-nez v10, :cond_1b

    new-instance v10, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c:Landroid/graphics/Paint;

    :cond_1b
    move-object/from16 v0, p0

    iget-object v10, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v10}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->T()[Ljava/lang/Double;

    move-result-object v12

    const/4 v10, 0x0

    aget-wide v18, v48, v10

    const/4 v10, 0x0

    aget-wide v20, v44, v10

    const/4 v10, 0x0

    aget-wide v22, v45, v10

    move-object/from16 v10, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p6

    move v15, v8

    move/from16 v16, v41

    invoke-virtual/range {v10 .. v23}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move/from16 v14, v43

    move v15, v8

    move/from16 v16, v38

    move-object/from16 v18, v49

    move-object/from16 v19, v46

    invoke-virtual/range {v10 .. v19}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4, v5, v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->a(ZZ)V

    :cond_1c
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->i:Ljava/util/Map;

    const/16 v25, 0x0

    :goto_e
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;->a(I)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;

    move-result-object v9

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->a()I

    move-result v16

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->d()I

    move-result v4

    if-nez v4, :cond_1e

    :goto_f
    add-int/lit8 v25, v25, 0x1

    goto :goto_e

    :cond_1d
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_d

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->a(I)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;

    move-result-object v23

    check-cast v23, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v17

    int-to-double v10, v0

    aget-wide v12, v49, v16

    aget-wide v14, v46, v16

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v5, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v24

    new-instance v30, Ljava/util/LinkedList;

    invoke-direct/range {v30 .. v30}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->i:Ljava/util/Map;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    aget-wide v10, v44, v16

    aget-wide v12, v45, v16

    invoke-virtual/range {v23 .. v23}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->h()Z

    move-result v14

    invoke-virtual/range {v9 .. v14}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->a(DDZ)Ljava/util/SortedMap;

    move-result-object v4

    const/16 v27, -0x1

    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_10
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    if-gez v27, :cond_20

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(D)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c()Z

    move-result v5

    if-eqz v5, :cond_20

    :cond_1f
    invoke-virtual {v9, v10, v11}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->a(D)I

    move-result v27

    :cond_20
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(D)Z

    move-result v4

    if-nez v4, :cond_21

    int-to-double v4, v8

    aget-wide v14, v48, v16

    aget-wide v18, v44, v16

    sub-double v10, v10, v18

    mul-double/2addr v10, v14

    add-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v17

    int-to-double v4, v0

    aget-wide v10, v49, v16

    aget-wide v14, v46, v16

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    sub-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :catchall_0
    move-exception v4

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_21
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c()Z

    move-result v4

    if-eqz v4, :cond_22

    int-to-double v4, v8

    aget-wide v12, v48, v16

    aget-wide v14, v44, v16

    sub-double/2addr v10, v14

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v17

    int-to-double v4, v0

    aget-wide v10, v49, v16

    aget-wide v12, v46, v16

    neg-double v12, v12

    mul-double/2addr v10, v12

    sub-double/2addr v4, v10

    double-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_22
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_23

    move-object/from16 v18, p0

    move-object/from16 v19, v9

    move-object/from16 v20, p1

    move-object/from16 v21, p6

    invoke-virtual/range {v18 .. v27}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;FILid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;I)V

    move-object/from16 v10, p0

    move-object/from16 v11, v22

    move-object/from16 v12, v29

    move/from16 v13, v24

    move/from16 v14, v25

    move/from16 v15, v27

    invoke-virtual/range {v10 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/util/List;Ljava/util/List;FII)[Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/f;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->clear()V

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    const/16 v27, -0x1

    :cond_23
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10

    :cond_24
    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->c()I

    move-result v5

    if-lez v5, :cond_26

    invoke-virtual/range {v23 .. v23}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->t()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v23 .. v23}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->r()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual/range {v23 .. v23}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->s()Landroid/graphics/Paint$Align;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v5, :cond_26

    int-to-double v10, v8

    aget-wide v12, v48, v16

    invoke-virtual {v9, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->b(I)D

    move-result-wide v14

    aget-wide v20, v44, v16

    sub-double v14, v14, v20

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-float v13, v10

    move/from16 v0, v17

    int-to-double v10, v0

    aget-wide v14, v49, v16

    invoke-virtual {v9, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->c(I)D

    move-result-wide v20

    aget-wide v32, v46, v16

    sub-double v20, v20, v32

    mul-double v14, v14, v20

    sub-double/2addr v10, v14

    double-to-float v14, v10

    invoke-virtual {v9, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->d(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->d(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p6

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v11, v12, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v13

    cmpg-float v10, v13, v10

    if-gez v10, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v10, v14, v10

    if-gez v10, :cond_25

    invoke-virtual {v9, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->d(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_26
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_27

    move-object/from16 v18, p0

    move-object/from16 v19, v9

    move-object/from16 v20, p1

    move-object/from16 v21, p6

    invoke-virtual/range {v18 .. v27}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;FILid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;I)V

    move-object/from16 v10, p0

    move-object/from16 v11, v22

    move-object/from16 v12, v29

    move/from16 v13, v24

    move/from16 v14, v25

    move/from16 v15, v27

    invoke-virtual/range {v10 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/util/List;Ljava/util/List;FII)[Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/f;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_27
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_f

    :cond_28
    move-object/from16 v0, p0

    iget-object v14, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    sub-int v19, p5, v17

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->Z()I

    move-result v22

    move-object/from16 v13, p0

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v18, p4

    move-object/from16 v20, p6

    invoke-virtual/range {v13 .. v22}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move-object/from16 v28, v0

    const/4 v4, 0x0

    aget v33, v40, v4

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->Z()I

    move-result v36

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move/from16 v30, p2

    move/from16 v31, p3

    move/from16 v32, p4

    move-object/from16 v34, p6

    invoke-virtual/range {v27 .. v36}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    sget-object v4, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move-object/from16 v28, v0

    sub-int v32, v8, p2

    sub-int v33, p5, p3

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->Z()I

    move-result v36

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move/from16 v30, p2

    move/from16 v31, p3

    move-object/from16 v34, p6

    invoke-virtual/range {v27 .. v36}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move-object/from16 v28, v0

    const/4 v4, 0x3

    aget v32, v40, v4

    sub-int v33, p5, p3

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->Z()I

    move-result v36

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move/from16 v30, v38

    move/from16 v31, p3

    move-object/from16 v34, p6

    invoke-virtual/range {v27 .. v36}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    :cond_29
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->n()Z

    move-result v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->s()Z

    move-result v27

    if-eqz v6, :cond_36

    const/4 v4, 0x0

    aget-wide v10, v44, v4

    const/4 v4, 0x0

    aget-wide v12, v45, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->S()I

    move-result v14

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(DDI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a([D[DI)Ljava/util/Map;

    move-result-object v4

    if-eqz v6, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->af()I

    move-result v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->i()F

    move-result v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ag()Landroid/graphics/Paint$Align;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->d(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->T()[Ljava/lang/Double;

    move-result-object v12

    const/4 v5, 0x0

    aget-wide v18, v48, v5

    const/4 v5, 0x0

    aget-wide v20, v44, v5

    const/4 v5, 0x0

    aget-wide v22, v45, v5

    move-object/from16 v10, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p6

    move v15, v8

    move/from16 v16, v41

    invoke-virtual/range {v10 .. v23}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move/from16 v14, v43

    move v15, v8

    move/from16 v16, v38

    move-object/from16 v18, v49

    move-object/from16 v19, v46

    invoke-virtual/range {v10 .. v19}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move/from16 v0, v50

    invoke-virtual {v4, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->b(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move/from16 v0, v51

    invoke-virtual {v4, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->c(Z)V

    if-eqz v6, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->h()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    move/from16 v0, v43

    if-ge v5, v0, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->u(I)Landroid/graphics/Paint$Align;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->n(I)[Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v28, v0

    const/4 v4, 0x0

    :goto_14
    move/from16 v0, v28

    if-ge v4, v0, :cond_32

    aget-object v9, v16, v4

    aget-wide v10, v46, v5

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_2c

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    aget-wide v12, v47, v5

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_2c

    move/from16 v0, v17

    int-to-double v10, v0

    aget-wide v12, v49, v5

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    aget-wide v20, v46, v5

    sub-double v18, v18, v20

    mul-double v12, v12, v18

    sub-double/2addr v10, v12

    double-to-float v11, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v10, v9, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->a(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v9, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v9, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->s(I)I

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v9, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->t(I)Landroid/graphics/Paint$Align;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v9, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-object/from16 v0, v26

    if-ne v0, v9, :cond_30

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v15, v9, :cond_2e

    if-eqz v25, :cond_2b

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Paint$Align;)I

    move-result v9

    add-int/2addr v9, v8

    int-to-float v10, v9

    int-to-float v12, v8

    move-object/from16 v9, p1

    move v13, v11

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2b
    int-to-float v9, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v10}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ai()F

    move-result v10

    sub-float v21, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->aj()F

    move-result v9

    sub-float v22, v11, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ad()F

    move-result v24

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v23, p6

    invoke-virtual/range {v18 .. v24}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    :goto_15
    if-eqz v27, :cond_2c

    move-object/from16 v0, p0

    iget-object v9, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v9, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->p(I)I

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v10, v8

    move/from16 v0, v38

    int-to-float v12, v0

    move-object/from16 v9, p1

    move v13, v11

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2c
    :goto_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14

    :cond_2d
    sget-object v4, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move-object/from16 v28, v0

    sub-int v32, p4, v38

    sub-int v33, p5, p3

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->Z()I

    move-result v36

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move/from16 v30, v38

    move/from16 v31, p3

    move-object/from16 v34, p6

    invoke-virtual/range {v27 .. v36}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move-object/from16 v28, v0

    sub-int v32, v8, p2

    sub-int v33, p5, p3

    const/16 v35, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->Z()I

    move-result v36

    move-object/from16 v27, p0

    move-object/from16 v29, p1

    move/from16 v30, p2

    move/from16 v31, p3

    move-object/from16 v34, p6

    invoke-virtual/range {v27 .. v36}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;ZI)V

    goto/16 :goto_12

    :cond_2e
    if-eqz v25, :cond_2f

    move/from16 v0, v38

    int-to-float v10, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Paint$Align;)I

    move-result v9

    add-int v9, v9, v38

    int-to-float v12, v9

    move-object/from16 v9, p1

    move v13, v11

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2f
    move/from16 v0, v38

    int-to-float v9, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v10}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ai()F

    move-result v10

    sub-float v21, v9, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->aj()F

    move-result v9

    sub-float v22, v11, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ad()F

    move-result v24

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v23, p6

    invoke-virtual/range {v18 .. v24}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_15

    :cond_30
    if-eqz v25, :cond_31

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Paint$Align;)I

    move-result v9

    sub-int v9, v38, v9

    int-to-float v10, v9

    move/from16 v0, v38

    int-to-float v12, v0

    move-object/from16 v9, p1

    move v13, v11

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_31
    add-int/lit8 v9, v38, 0xa

    int-to-float v0, v9

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->aj()F

    move-result v9

    sub-float v22, v11, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ad()F

    move-result v24

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v23, p6

    invoke-virtual/range {v18 .. v24}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    if-eqz v27, :cond_2c

    move-object/from16 v0, p0

    iget-object v9, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v9, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->p(I)I

    move-result v9

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, v38

    int-to-float v10, v0

    int-to-float v12, v8

    move-object/from16 v9, p1

    move v13, v11

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_16

    :cond_32
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_13

    :cond_33
    if-eqz v6, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->h()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->R()F

    move-result v5

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v4, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->P()Ljava/lang/String;

    move-result-object v11

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v12, v4

    move/from16 v0, v17

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->i()F

    move-result v6

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v6, v9

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v6, v9

    add-float/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ah()F

    move-result v6

    add-float/2addr v4, v6

    add-float v13, v4, v5

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    const/4 v4, 0x0

    :goto_17
    move/from16 v0, v43

    if-ge v4, v0, :cond_35

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v6, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->u(I)Landroid/graphics/Paint$Align;

    move-result-object v6

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v6, v9, :cond_34

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v6, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->e(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p2

    int-to-float v6, v0

    add-float v12, v6, v5

    div-int/lit8 v6, p5, 0x2

    add-int v6, v6, p3

    int-to-float v13, v6

    const/high16 v15, -0x3d4c0000    # -90.0f

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    :goto_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_34
    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v6, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->e(I)Ljava/lang/String;

    move-result-object v11

    add-int v6, p2, p4

    int-to-float v12, v6

    div-int/lit8 v6, p5, 0x2

    add-int v6, v6, p3

    int-to-float v13, v6

    const/high16 v15, -0x3d4c0000    # -90.0f

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_18

    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->b()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->a()Ljava/lang/String;

    move-result-object v11

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v12, v4

    move/from16 v0, p3

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->b()F

    move-result v5

    add-float v13, v4, v5

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    :cond_36
    :goto_19
    sget-object v4, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_39

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ah()F

    move-result v4

    float-to-int v4, v4

    add-int v10, p3, v4

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, v38

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, v37

    move-object/from16 v14, p6

    invoke-virtual/range {v4 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    :cond_37
    :goto_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->j()Z

    move-result v4

    if-eqz v4, :cond_3c

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->g()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v10, v8

    move/from16 v0, v17

    int-to-float v11, v0

    move/from16 v0, v38

    int-to-float v12, v0

    move/from16 v0, v17

    int-to-float v13, v0

    move-object/from16 v9, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->f()I

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v10, v5

    move v5, v4

    :goto_1b
    move/from16 v0, v43

    if-ge v5, v0, :cond_3b

    if-nez v10, :cond_3b

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->u(I)Landroid/graphics/Paint$Align;

    move-result-object v4

    sget-object v6, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    if-ne v4, v6, :cond_3a

    const/4 v4, 0x1

    :goto_1c
    add-int/lit8 v5, v5, 0x1

    move v10, v4

    goto :goto_1b

    :cond_38
    sget-object v4, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_36

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->P()Ljava/lang/String;

    move-result-object v11

    div-int/lit8 v4, p4, 0x2

    add-int v4, v4, p2

    int-to-float v12, v4

    add-int v4, p3, p5

    int-to-float v4, v4

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ah()F

    move-result v6

    add-float v13, v4, v6

    const/high16 v15, -0x3d4c0000    # -90.0f

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->Q()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v4, v38, 0x14

    int-to-float v12, v4

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, p3

    int-to-float v13, v4

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->b()F

    move-result v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->a()Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p2

    int-to-float v4, v0

    add-float v12, v4, v5

    div-int/lit8 v4, p5, 0x2

    add-int v4, v4, v41

    int-to-float v13, v4

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto/16 :goto_19

    :cond_39
    sget-object v4, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_37

    move/from16 v0, v42

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;FZ)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ah()F

    move-result v4

    float-to-int v4, v4

    add-int v10, p3, v4

    const/4 v15, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, v38

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, v37

    move-object/from16 v14, p6

    invoke-virtual/range {v4 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;[Ljava/lang/String;IIIIIILandroid/graphics/Paint;Z)I

    move/from16 v0, v42

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_1a

    :cond_3a
    const/4 v4, 0x0

    goto/16 :goto_1c

    :cond_3b
    sget-object v4, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_3d

    int-to-float v5, v8

    move/from16 v0, v41

    int-to-float v6, v0

    int-to-float v7, v8

    move/from16 v0, v17

    int-to-float v8, v0

    move-object/from16 v4, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    if-eqz v10, :cond_3c

    move/from16 v0, v38

    int-to-float v5, v0

    move/from16 v0, v41

    int-to-float v6, v0

    move/from16 v0, v38

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    move-object/from16 v4, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3c
    :goto_1d
    if-eqz v39, :cond_a

    move/from16 v0, v42

    int-to-float v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_6

    :cond_3d
    sget-object v4, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_3c

    move/from16 v0, v38

    int-to-float v5, v0

    move/from16 v0, v41

    int-to-float v6, v0

    move/from16 v0, v38

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    move-object/from16 v4, p1

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_1d

    :cond_3e
    move/from16 v17, v4

    move/from16 v38, v9

    goto/16 :goto_3

    :cond_3f
    move/from16 v37, v13

    goto/16 :goto_1
.end method

.method public abstract a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;FII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;",
            "FII)V"
        }
    .end annotation
.end method

.method protected a(Landroid/graphics/Canvas;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;Landroid/graphics/Paint;Ljava/util/List;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;",
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;II)V"
        }
    .end annotation

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v0, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    const/4 v0, 0x2

    if-ne v7, v0, :cond_2

    const/4 v0, 0x2

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v0, 0x0

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->n()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v0, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->n()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    :cond_0
    invoke-virtual {p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->i()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p2, p7}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->a(I)D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v0, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->q()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    invoke-virtual {p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->i()Ljava/text/NumberFormat;

    move-result-object v0

    add-int/lit8 v1, p7, 0x1

    invoke-virtual {p2, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->a(I)D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x2

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v0, 0x3

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->q()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    const/4 v0, 0x2

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v0, 0x3

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x2

    if-le v7, v0, :cond_1

    invoke-interface {p5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->n()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_3

    add-int/lit8 v0, v7, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->n()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    :cond_3
    invoke-virtual {p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->i()Ljava/text/NumberFormat;

    move-result-object v0

    div-int/lit8 v1, v7, 0x2

    add-int/2addr v1, p7

    invoke-virtual {p2, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->a(I)D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-int/lit8 v0, v7, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->q()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    invoke-interface {p5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-int/lit8 v0, v7, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    move v7, v0

    :goto_2
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    invoke-virtual {p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->i()Ljava/text/NumberFormat;

    move-result-object v0

    div-int/lit8 v1, v7, 0x2

    add-int/2addr v1, p7

    invoke-virtual {p2, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;->a(I)D

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-int/lit8 v0, v7, 0x1

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->q()F

    move-result v1

    sub-float v4, v0, v1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    add-int/lit8 v0, v7, 0x2

    move v7, v0

    goto :goto_2

    :cond_5
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->O()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-result-object v0

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->a()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr v0, p6

    cmpl-float v1, v0, v2

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_0
    invoke-virtual/range {p0 .. p5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    neg-float v0, v0

    invoke-virtual {p1, v0, p3, p4}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_1
    return-void
.end method

.method protected a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;FILid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;",
            "FI",
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;",
            "I)V"
        }
    .end annotation

    invoke-virtual/range {p5 .. p5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->b()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v14

    if-eqz v9, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->d()[F

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v6, Landroid/graphics/DashPathEffect;

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->d()[F

    move-result-object v1

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->e()F

    move-result v2

    invoke-direct {v6, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    :cond_0
    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->a()Landroid/graphics/Paint$Cap;

    move-result-object v2

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->b()Landroid/graphics/Paint$Join;

    move-result-object v3

    invoke-virtual {v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/c;->c()F

    move-result v4

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object v1, p0

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    :cond_1
    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-virtual/range {v1 .. v8}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;FII)V

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-virtual/range {v1 .. v8}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;FII)V

    invoke-virtual/range {p5 .. p5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->o()F

    move-result v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-object/from16 v0, p8

    if-ne v0, v1, :cond_4

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    :goto_0
    invoke-virtual/range {p5 .. p5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p5 .. p5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;->p()Landroid/graphics/Paint$Align;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p9

    invoke-virtual/range {v1 .. v8}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ac;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;Landroid/graphics/Paint;Ljava/util/List;II)V

    :cond_2
    if-eqz v9, :cond_3

    move-object v1, p0

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v14

    move-object v6, v13

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLandroid/graphics/Paint$Style;Landroid/graphics/PathEffect;Landroid/graphics/Paint;)V

    :cond_3
    return-void

    :cond_4
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/List;[Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIDDD)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;[",
            "Ljava/lang/Double;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "IIIDDD)V"
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->l()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->p()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->q()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->n()Z

    move-result v15

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v12, :cond_4

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move/from16 v0, p5

    int-to-double v2, v0

    sub-double v4, v8, p10

    mul-double v4, v4, p8

    add-double/2addr v2, v4

    double-to-float v3, v2

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->af()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v15, :cond_1

    move/from16 v0, p7

    int-to-float v4, v0

    move/from16 v0, p7

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->i()F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    add-float v6, v2, v5

    move-object/from16 v2, p3

    move v5, v3

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->al()Ljava/text/NumberFormat;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p7

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->i()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ah()F

    move-result v4

    add-float v8, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ac()F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move v7, v3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    :cond_2
    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->p(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, p7

    int-to-float v4, v0

    move/from16 v0, p6

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p3

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_0

    :cond_4
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move v6, v13

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-virtual/range {v2 .. v15}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V

    return-void
.end method

.method protected a(Ljava/util/Map;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII[D[D)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;>;",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "IIII[D[D)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->O()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->o()Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->q()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->m()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->n()Z

    move-result v18

    const/4 v2, 0x0

    move v14, v2

    :goto_0
    move/from16 v0, p4

    if-ge v14, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2, v14}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->t(I)Landroid/graphics/Paint$Align;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    const/4 v2, 0x0

    move v13, v2

    :goto_1
    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2, v14}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->u(I)Landroid/graphics/Paint$Align;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3, v14}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->a(Ljava/lang/Double;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    move/from16 v0, p7

    int-to-double v6, v0

    aget-wide v10, p8, v14

    aget-wide v20, p9, v14

    sub-double v20, v8, v20

    mul-double v10, v10, v20

    sub-double/2addr v6, v10

    double-to-float v4, v6

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    if-ne v15, v3, :cond_7

    if-eqz v17, :cond_2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2, v14}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->s(I)I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    if-ne v5, v2, :cond_5

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Paint$Align;)I

    move-result v2

    add-int v2, v2, p5

    int-to-float v3, v2

    move/from16 v0, p5

    int-to-float v5, v0

    move-object/from16 v2, p2

    move v6, v4

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2, v14}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->v(I)Ljava/text/NumberFormat;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p5

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ai()F

    move-result v3

    sub-float v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->aj()F

    move-result v2

    sub-float v9, v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ad()F

    move-result v11

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    :cond_2
    :goto_3
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v3, v14}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->p(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, p5

    int-to-float v3, v0

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_3
    :goto_4
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_5
    if-eqz v18, :cond_6

    move/from16 v0, p6

    int-to-float v3, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Paint$Align;)I

    move-result v2

    add-int v2, v2, p6

    int-to-float v5, v2

    move-object/from16 v2, p2

    move v6, v4

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2, v14}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->v(I)Ljava/text/NumberFormat;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p6

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ai()F

    move-result v3

    add-float v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->aj()F

    move-result v2

    sub-float v9, v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ad()F

    move-result v11

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    goto :goto_3

    :cond_7
    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab$a;

    if-ne v15, v3, :cond_3

    if-eqz v17, :cond_9

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2, v14}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->s(I)I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Paint$Align;)I

    move-result v2

    sub-int v2, p6, v2

    int-to-float v3, v2

    move/from16 v0, p6

    int-to-float v5, v0

    move-object/from16 v2, p2

    move v6, v4

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ak()Ljava/text/NumberFormat;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8, v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Ljava/text/NumberFormat;D)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v2, p6, 0xa

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ai()F

    move-result v3

    add-float v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->aj()F

    move-result v2

    sub-float v9, v4, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ad()F

    move-result v11

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v10, p3

    invoke-virtual/range {v5 .. v11}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    :cond_9
    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v3, v14}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->p(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v18, :cond_3

    move/from16 v0, p6

    int-to-float v3, v0

    move/from16 v0, p5

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->c:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method protected a([Ljava/lang/Double;Landroid/graphics/Canvas;Landroid/graphics/Paint;ZIIIDDD)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->r()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->n()Z

    move-result v13

    if-eqz p4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->af()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v14, :cond_2

    aget-object v8, p1, v11

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, p10, v2

    if-gtz v2, :cond_1

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, v2, p12

    if-gtz v2, :cond_1

    move/from16 v0, p5

    int-to-double v2, v0

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    sub-double v4, v4, p10

    mul-double v4, v4, p8

    add-double/2addr v2, v4

    double-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->af()I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v13, :cond_0

    move/from16 v0, p7

    int-to-float v4, v0

    move/from16 v0, p7

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->i()F

    move-result v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    add-float v6, v2, v5

    move-object/from16 v2, p2

    move v5, v3

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2, v8}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v6

    move/from16 v0, p7

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->i()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ah()F

    move-result v4

    add-float v8, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->ac()F

    move-result v10

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move v7, v3

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v10}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;F)V

    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->p(I)I

    move-result v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, p7

    int-to-float v4, v0

    move/from16 v0, p6

    int-to-float v6, v0

    move-object/from16 v2, p2

    move v5, v3

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(FFI)[D
    .locals 12

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v0, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->f(I)D

    move-result-wide v6

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v0, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->h(I)D

    move-result-wide v4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v0, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->j(I)D

    move-result-wide v2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v0, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->l(I)D

    move-result-wide v0

    iget-object v8, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v8, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->g(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v8, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->i(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v8, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->k(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v8, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->m(I)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual {p0, p3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->b(I)[D

    move-result-object v8

    if-eqz v8, :cond_1

    const/4 v0, 0x0

    aget-wide v6, v8, v0

    const/4 v0, 0x1

    aget-wide v4, v8, v0

    const/4 v0, 0x2

    aget-wide v2, v8, v0

    const/4 v0, 0x3

    aget-wide v0, v8, v0

    :cond_1
    iget-object v8, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->g:Landroid/graphics/Rect;

    if-eqz v8, :cond_2

    const/4 v8, 0x2

    new-array v8, v8, [D

    const/4 v9, 0x0

    iget-object v10, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->g:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float v10, p1, v10

    float-to-double v10, v10

    sub-double/2addr v4, v6

    mul-double/2addr v4, v10

    iget-object v10, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->g:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v4, v10

    add-double/2addr v4, v6

    aput-wide v4, v8, v9

    const/4 v4, 0x1

    iget-object v5, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->g:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->g:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    sub-float/2addr v5, p2

    float-to-double v6, v5

    sub-double/2addr v0, v2

    mul-double/2addr v0, v6

    iget-object v5, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->g:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v6, v5

    div-double/2addr v0, v6

    add-double/2addr v0, v2

    aput-wide v0, v8, v4

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    float-to-double v2, p1

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    float-to-double v2, p2

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/List;Ljava/util/List;FII)[Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;FII)[",
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/f;"
        }
    .end annotation
.end method

.method public b()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/aa;

    return-object v0
.end method

.method protected b(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;FII)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Paint;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;",
            "FII)V"
        }
    .end annotation

    invoke-virtual {p0, p4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->d()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/u;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/u;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/util/List;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ad;FII)V

    :cond_0
    return-void
.end method

.method public b(I)[D
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/u;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
