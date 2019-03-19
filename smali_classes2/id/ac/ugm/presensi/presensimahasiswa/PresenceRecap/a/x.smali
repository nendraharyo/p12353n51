.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;
.super Ljava/lang/Object;

# interfaces
.implements Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/j;


# instance fields
.field private a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Landroid/graphics/RectF;

.field private g:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/m;

.field private h:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

.field private i:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;


# direct methods
.method public constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->f:Landroid/graphics/RectF;

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->i:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->i:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->getZoomRectangle()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->f:Landroid/graphics/RectF;

    instance-of v0, p2, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/m;

    invoke-direct {v0, p2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/m;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->g:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/m;

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p2, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;ZF)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->h:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    :cond_1
    return-void

    :cond_2
    move-object v0, p2

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->a()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    goto :goto_0
.end method

.method private a(FI)V
    .locals 6

    const v0, 0x3f666666    # 0.9f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x3f8ccccd    # 1.1f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->h:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    if-eqz v1, :cond_0

    float-to-double v2, v0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    float-to-double v2, v0

    const-wide v4, 0x3ff199999999999aL    # 1.1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->h:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    invoke-virtual {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;->a(F)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->h:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    invoke-virtual {v0, p2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;->b(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_6

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->d:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-gez v0, :cond_1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->e:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_6

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->C()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float v0, v1, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v5, v2, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->b:F

    iget v7, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->d:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->c:F

    iget v8, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->e:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->c:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->b:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v8, v9

    iget v9, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->e:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->d:F

    sub-float v10, v3, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v9, v10

    float-to-double v10, v8

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_3

    float-to-double v10, v9

    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_3

    div-float/2addr v0, v6

    const/4 v5, 0x1

    invoke-direct {p0, v0, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a(FI)V

    :goto_0
    iput v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->d:F

    iput v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->e:F

    :cond_2
    :goto_1
    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->b:F

    iput v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->c:F

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->i:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->d()V

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_3
    float-to-double v10, v8

    const-wide v12, 0x400dd70a3d70a3d7L    # 3.73

    cmpl-double v8, v10, v12

    if-ltz v8, :cond_4

    float-to-double v8, v9

    const-wide v10, 0x400dd70a3d70a3d7L    # 3.73

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_4

    div-float v0, v5, v7

    const/4 v5, 0x2

    invoke-direct {p0, v0, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a(FI)V

    goto :goto_0

    :cond_4
    iget v8, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->b:F

    sub-float v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->c:F

    sub-float v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_5

    div-float/2addr v0, v6

    :goto_3
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a(FI)V

    goto :goto_0

    :cond_5
    div-float v0, v5, v7

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->g:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/m;

    iget v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->b:F

    iget v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->c:F

    invoke-virtual {v0, v3, v4, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/m;->a(FFFF)V

    const/4 v0, 0x0

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->d:F

    const/4 v0, 0x0

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->e:F

    goto :goto_1

    :cond_7
    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->b:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->c:F

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->C()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->f:Landroid/graphics/RectF;

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->b:F

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->c:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->b:F

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->i:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a()V

    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_8
    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->b:F

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->f:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->i:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b()V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->i:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->c()V

    goto :goto_4

    :cond_a
    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    :cond_b
    const/4 v1, 0x0

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->b:F

    const/4 v1, 0x0

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->c:F

    const/4 v1, 0x0

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->d:F

    const/4 v1, 0x0

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->e:F

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->b:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->c:F

    :cond_c
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->H()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_2
.end method
