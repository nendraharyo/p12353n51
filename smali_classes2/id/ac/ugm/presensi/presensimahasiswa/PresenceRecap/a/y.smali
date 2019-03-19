.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;
.super Ljava/lang/Object;

# interfaces
.implements Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/j;


# instance fields
.field private a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

.field private b:F

.field private c:F

.field private d:Landroid/graphics/RectF;

.field private e:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/m;

.field private f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;


# direct methods
.method public constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->d:Landroid/graphics/RectF;

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->getZoomRectangle()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->d:Landroid/graphics/RectF;

    instance-of v0, p2, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/m;

    invoke-direct {v0, p2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/m;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->e:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/m;

    :cond_0
    return-void

    :cond_1
    move-object v0, p2

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->a()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 6

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->b:F

    cmpl-float v1, v1, v3

    if-gez v1, :cond_0

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->c:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_7

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->G()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->e:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/m;

    iget v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->b:F

    iget v5, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->c:F

    invoke-virtual {v3, v4, v5, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/m;->a(FFFF)V

    :cond_1
    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->b:F

    iput v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->c:F

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->d()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-nez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->b:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->c:F

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->C()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->d:Landroid/graphics/RectF;

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->b:F

    iget v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->c:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->b:F

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->d:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a()V

    goto :goto_0

    :cond_4
    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->b:F

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->d:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->d:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->f:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->c()V

    goto :goto_0

    :cond_6
    if-ne v1, v0, :cond_7

    iput v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->b:F

    iput v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->c:F

    :cond_7
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->H()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0
.end method
