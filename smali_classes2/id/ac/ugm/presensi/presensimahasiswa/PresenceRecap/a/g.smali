.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final c:Landroid/graphics/Typeface;


# instance fields
.field private A:I

.field private B:[I

.field private C:F

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:F

.field private H:Z

.field private I:F

.field private J:Z

.field private K:I

.field private L:Z

.field private M:Z

.field private N:F

.field private a:Ljava/lang/String;

.field private b:F

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/graphics/Typeface;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:F

.field private q:Z

.field private r:F

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:F

.field private w:Z

.field private x:Z

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;",
            ">;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->c:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const v3, -0x333334

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->a:Ljava/lang/String;

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->b:F

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->d:Ljava/lang/String;

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->e:I

    iput-boolean v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->i:Z

    iput v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->j:I

    iput v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->k:I

    iput-boolean v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->l:Z

    iput-boolean v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->m:Z

    iput-boolean v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->n:Z

    iput v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->o:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->p:F

    iput-boolean v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->q:Z

    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->r:F

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->s:Z

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->t:Z

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->u:Z

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->w:Z

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->x:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->y:Ljava/util/List;

    iput-boolean v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->z:Z

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->A:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->B:[I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->C:F

    iput-boolean v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->D:Z

    iput-boolean v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->E:Z

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->F:Z

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->G:F

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->H:Z

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->C:F

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->I:F

    iput-boolean v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->J:Z

    const/16 v0, 0xf

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->K:I

    const/4 v0, 0x0

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->N:F

    return-void

    nop

    :array_0
    .array-data 4
        0x14
        0x1e
        0xa
        0x14
    .end array-data
.end method


# virtual methods
.method public A()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->C:F

    return v0
.end method

.method public B()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->I:F

    return v0
.end method

.method public C()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->E:Z

    return v0
.end method

.method public D()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->F:Z

    return v0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->H:Z

    return v0
.end method

.method public F()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->G:F

    return v0
.end method

.method public G()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->D:Z

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->J:Z

    return v0
.end method

.method public I()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->K:I

    return v0
.end method

.method public J()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->A:I

    return v0
.end method

.method public K()[I
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->B:[I

    return-object v0
.end method

.method public L()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->M:Z

    return v0
.end method

.method public M()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->N:F

    return v0
.end method

.method public N()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->L:Z

    return v0
.end method

.method public a(I)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->C:F

    return-void
.end method

.method public a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;)V
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->y:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->l:Z

    iput-boolean p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->m:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->l:Z

    iput-boolean p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->m:Z

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->b:F

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->o:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->t:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->u:Z

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->g:I

    return v0
.end method

.method public d(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->b(Z)V

    invoke-virtual {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->c(Z)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->J:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->h:Z

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->j:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->k:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->o:I

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->p:F

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->i:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->l:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->m:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->n:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->t:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->u:Z

    return v0
.end method

.method public q()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->v:F

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->w:Z

    return v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->x:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->q:Z

    return v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->s:Z

    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->e:I

    return v0
.end method

.method public x()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->f:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public y()F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->r:F

    return v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->z:Z

    return v0
.end method
