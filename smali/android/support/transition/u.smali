.class public abstract Landroid/support/transition/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/u$b;,
        Landroid/support/transition/u$a;,
        Landroid/support/transition/u$c;
    }
.end annotation


# static fields
.field private static final g:[I

.field private static final h:Landroid/support/transition/l;

.field private static z:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/u$a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/view/ViewGroup;

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/u$c;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private H:Landroid/support/transition/u$b;

.field private I:Landroid/support/v4/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/a",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private J:Landroid/support/transition/l;

.field a:J

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/support/transition/y;

.field e:Z

.field f:Landroid/support/transition/x;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:Landroid/animation/TimeInterpolator;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/support/transition/ab;

.field private v:Landroid/support/transition/ab;

.field private w:[I

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/aa;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/aa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/transition/u;->g:[I

    new-instance v0, Landroid/support/transition/u$1;

    invoke-direct {v0}, Landroid/support/transition/u$1;-><init>()V

    sput-object v0, Landroid/support/transition/u;->h:Landroid/support/transition/l;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/transition/u;->z:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/transition/u;->i:Ljava/lang/String;

    iput-wide v4, p0, Landroid/support/transition/u;->j:J

    iput-wide v4, p0, Landroid/support/transition/u;->a:J

    iput-object v1, p0, Landroid/support/transition/u;->k:Landroid/animation/TimeInterpolator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->n:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->o:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->q:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->r:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->s:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/support/transition/u;->t:Ljava/util/ArrayList;

    new-instance v0, Landroid/support/transition/ab;

    invoke-direct {v0}, Landroid/support/transition/ab;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    new-instance v0, Landroid/support/transition/ab;

    invoke-direct {v0}, Landroid/support/transition/ab;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iput-object v1, p0, Landroid/support/transition/u;->d:Landroid/support/transition/y;

    sget-object v0, Landroid/support/transition/u;->g:[I

    iput-object v0, p0, Landroid/support/transition/u;->w:[I

    iput-object v1, p0, Landroid/support/transition/u;->A:Landroid/view/ViewGroup;

    iput-boolean v2, p0, Landroid/support/transition/u;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->B:Ljava/util/ArrayList;

    iput v2, p0, Landroid/support/transition/u;->C:I

    iput-boolean v2, p0, Landroid/support/transition/u;->D:Z

    iput-boolean v2, p0, Landroid/support/transition/u;->E:Z

    iput-object v1, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    sget-object v0, Landroid/support/transition/u;->h:Landroid/support/transition/l;

    iput-object v0, p0, Landroid/support/transition/u;->J:Landroid/support/transition/l;

    return-void
.end method

.method static synthetic a(Landroid/support/transition/u;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Landroid/animation/Animator;Landroid/support/v4/h/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/u$a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/transition/u$2;

    invoke-direct {v0, p0, p2}, Landroid/support/transition/u$2;-><init>(Landroid/support/transition/u;Landroid/support/v4/h/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1}, Landroid/support/transition/u;->a(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/support/transition/ab;Landroid/support/transition/ab;)V
    .locals 5

    new-instance v1, Landroid/support/v4/h/a;

    iget-object v0, p1, Landroid/support/transition/ab;->a:Landroid/support/v4/h/a;

    invoke-direct {v1, v0}, Landroid/support/v4/h/a;-><init>(Landroid/support/v4/h/m;)V

    new-instance v2, Landroid/support/v4/h/a;

    iget-object v0, p2, Landroid/support/transition/ab;->a:Landroid/support/v4/h/a;

    invoke-direct {v2, v0}, Landroid/support/v4/h/a;-><init>(Landroid/support/v4/h/m;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/support/transition/u;->w:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Landroid/support/transition/u;->w:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1, v2}, Landroid/support/transition/u;->a(Landroid/support/v4/h/a;Landroid/support/v4/h/a;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p1, Landroid/support/transition/ab;->d:Landroid/support/v4/h/a;

    iget-object v4, p2, Landroid/support/transition/ab;->d:Landroid/support/v4/h/a;

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/support/transition/u;->a(Landroid/support/v4/h/a;Landroid/support/v4/h/a;Landroid/support/v4/h/a;Landroid/support/v4/h/a;)V

    goto :goto_1

    :pswitch_2
    iget-object v3, p1, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/support/transition/u;->a(Landroid/support/v4/h/a;Landroid/support/v4/h/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    :pswitch_3
    iget-object v3, p1, Landroid/support/transition/ab;->c:Landroid/support/v4/h/f;

    iget-object v4, p2, Landroid/support/transition/ab;->c:Landroid/support/v4/h/f;

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/support/transition/u;->a(Landroid/support/v4/h/a;Landroid/support/v4/h/a;Landroid/support/v4/h/f;Landroid/support/v4/h/f;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1, v2}, Landroid/support/transition/u;->b(Landroid/support/v4/h/a;Landroid/support/v4/h/a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/transition/ab;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/h/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/support/v4/view/r;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/transition/ab;->d:Landroid/support/v4/h/a;

    invoke-virtual {v1, v0}, Landroid/support/v4/h/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/transition/ab;->d:Landroid/support/v4/h/a;

    invoke-virtual {v1, v0, v4}, Landroid/support/v4/h/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ListView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    iget-object v0, p0, Landroid/support/transition/ab;->c:Landroid/support/v4/h/f;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/h/f;->c(J)I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Landroid/support/transition/ab;->c:Landroid/support/v4/h/f;

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/h/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/r;->a(Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/support/transition/ab;->c:Landroid/support/v4/h/f;

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/h/f;->b(JLjava/lang/Object;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/support/transition/ab;->d:Landroid/support/v4/h/a;

    invoke-virtual {v1, v0, p1}, Landroid/support/v4/h/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/r;->a(Landroid/view/View;Z)V

    iget-object v0, p0, Landroid/support/transition/ab;->c:Landroid/support/v4/h/f;

    invoke-virtual {v0, v2, v3, p1}, Landroid/support/v4/h/f;->b(JLjava/lang/Object;)V

    goto :goto_2
.end method

.method private a(Landroid/support/v4/h/a;Landroid/support/v4/h/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/h/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p1, v2}, Landroid/support/v4/h/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Landroid/support/v4/h/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/aa;

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/support/transition/aa;->b:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/support/v4/h/a;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/aa;

    iget-object v3, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/h/a;Landroid/support/v4/h/a;Landroid/support/v4/h/a;Landroid/support/v4/h/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/h/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/h/a",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/support/v4/h/a;->size()I

    move-result v5

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    invoke-virtual {p3, v4}, Landroid/support/v4/h/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v4}, Landroid/support/v4/h/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/aa;

    invoke-virtual {p2, v1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/aa;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v1}, Landroid/support/v4/h/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/h/a;Landroid/support/v4/h/a;Landroid/support/v4/h/f;Landroid/support/v4/h/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/h/f",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/support/v4/h/f",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/support/v4/h/f;->b()I

    move-result v5

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    invoke-virtual {p3, v4}, Landroid/support/v4/h/f;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v4}, Landroid/support/v4/h/f;->b(I)J

    move-result-wide v2

    invoke-virtual {p4, v2, v3}, Landroid/support/v4/h/f;->a(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/aa;

    invoke-virtual {p2, v1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/aa;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v1}, Landroid/support/v4/h/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/h/a;Landroid/support/v4/h/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_1

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/aa;

    invoke-virtual {p2, v1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/aa;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Landroid/support/v4/h/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v1}, Landroid/support/v4/h/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Landroid/support/transition/aa;Landroid/support/transition/aa;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/transition/aa;->a:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(Landroid/support/v4/h/a;Landroid/support/v4/h/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/view/View;",
            "Landroid/support/transition/aa;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/h/a;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/support/v4/h/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/aa;

    iget-object v3, v0, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/support/v4/h/a;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {p2, v2}, Landroid/support/v4/h/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/aa;

    iget-object v1, v0, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/transition/u;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private c(Landroid/view/View;Z)V
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    iget-object v0, p0, Landroid/support/transition/u;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->n:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/transition/u;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/transition/u;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    iget-object v0, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    iget-object v0, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/support/transition/aa;

    invoke-direct {v0}, Landroid/support/transition/aa;-><init>()V

    iput-object p1, v0, Landroid/support/transition/aa;->b:Landroid/view/View;

    if-eqz p2, :cond_8

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;)V

    :goto_1
    iget-object v2, v0, Landroid/support/transition/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->c(Landroid/support/transition/aa;)V

    if-eqz p2, :cond_9

    iget-object v2, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    invoke-static {v2, p1, v0}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V

    :cond_5
    :goto_2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->r:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/transition/u;->r:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_6
    iget-object v0, p0, Landroid/support/transition/u;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/transition/u;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_7
    iget-object v0, p0, Landroid/support/transition/u;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/transition/u;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_a

    iget-object v0, p0, Landroid/support/transition/u;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v0}, Landroid/support/transition/u;->b(Landroid/support/transition/aa;)V

    goto :goto_1

    :cond_9
    iget-object v2, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    invoke-static {v2, p1, v0}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V

    goto :goto_2

    :cond_a
    check-cast p1, Landroid/view/ViewGroup;

    move v0, v1

    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroid/support/transition/u;->c(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private static o()Landroid/support/v4/h/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/h/a",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/support/transition/u$a;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/support/transition/u;->z:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/h/a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/h/a;

    invoke-direct {v0}, Landroid/support/v4/h/a;-><init>()V

    sget-object v1, Landroid/support/transition/u;->z:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/View;Z)Landroid/support/transition/aa;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->d:Landroid/support/transition/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->d:Landroid/support/transition/y;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/y;->a(Landroid/view/View;Z)Landroid/support/transition/aa;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    :goto_1
    iget-object v0, v0, Landroid/support/transition/ab;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/aa;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    goto :goto_1
.end method

.method public a(J)Landroid/support/transition/u;
    .locals 1

    iput-wide p1, p0, Landroid/support/transition/u;->a:J

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroid/support/transition/u;
    .locals 0

    iput-object p1, p0, Landroid/support/transition/u;->k:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Landroid/support/transition/u$c;)Landroid/support/transition/u;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/u;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dur("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/u;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-wide v2, p0, Landroid/support/transition/u;->j:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dly("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/transition/u;->j:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Landroid/support/transition/u;->k:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "interp("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/u;->k:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    iget-object v2, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "tgts("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    move-object v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    if-lez v0, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move-object v2, v0

    :cond_6
    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    :goto_1
    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    if-lez v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 4

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/transition/u;->k()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/transition/u;->b()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/transition/u;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    :cond_1
    invoke-virtual {p0}, Landroid/support/transition/u;->c()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/transition/u;->c()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/transition/u;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/transition/u;->d()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    new-instance v0, Landroid/support/transition/u$3;

    invoke-direct {v0, p0}, Landroid/support/transition/u$3;-><init>(Landroid/support/transition/u;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public abstract a(Landroid/support/transition/aa;)V
.end method

.method public a(Landroid/support/transition/u$b;)V
    .locals 0

    iput-object p1, p0, Landroid/support/transition/u;->H:Landroid/support/transition/u$b;

    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 9

    const/4 v2, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v1, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    invoke-direct {p0, v0, v1}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/support/transition/ab;)V

    invoke-static {}, Landroid/support/transition/u;->o()Landroid/support/v4/h/a;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/h/a;->size()I

    move-result v0

    invoke-static {p1}, Landroid/support/transition/am;->b(Landroid/view/View;)Landroid/support/transition/aw;

    move-result-object v5

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_5

    invoke-virtual {v4, v3}, Landroid/support/v4/h/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_2

    invoke-virtual {v4, v0}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$a;

    if-eqz v1, :cond_2

    iget-object v6, v1, Landroid/support/transition/u$a;->a:Landroid/view/View;

    if-eqz v6, :cond_2

    iget-object v6, v1, Landroid/support/transition/u$a;->d:Landroid/support/transition/aw;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v1, Landroid/support/transition/u$a;->c:Landroid/support/transition/aa;

    iget-object v7, v1, Landroid/support/transition/u$a;->a:Landroid/view/View;

    invoke-virtual {p0, v7, v2}, Landroid/support/transition/u;->a(Landroid/view/View;Z)Landroid/support/transition/aa;

    move-result-object v8

    invoke-virtual {p0, v7, v2}, Landroid/support/transition/u;->b(Landroid/view/View;Z)Landroid/support/transition/aa;

    move-result-object v7

    if-nez v8, :cond_0

    if-eqz v7, :cond_3

    :cond_0
    iget-object v1, v1, Landroid/support/transition/u$a;->e:Landroid/support/transition/u;

    invoke-virtual {v1, v6, v7}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/support/transition/aa;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    :goto_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v0}, Landroid/support/v4/h/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v3, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iget-object v4, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/u;->a(Landroid/view/ViewGroup;Landroid/support/transition/ab;Landroid/support/transition/ab;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/support/transition/u;->e()V

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroid/support/transition/ab;Landroid/support/transition/ab;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/support/transition/ab;",
            "Landroid/support/transition/ab;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/aa;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/transition/aa;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/support/transition/u;->o()Landroid/support/v4/h/a;

    move-result-object v14

    const-wide v8, 0x7fffffffffffffffL

    new-instance v15, Landroid/util/SparseIntArray;

    invoke-direct {v15}, Landroid/util/SparseIntArray;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/4 v2, 0x0

    move v13, v2

    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_8

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/aa;

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/transition/aa;

    if-eqz v2, :cond_d

    iget-object v4, v2, Landroid/support/transition/aa;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v2, 0x0

    move-object v12, v2

    :goto_1
    if-eqz v3, :cond_c

    iget-object v2, v3, Landroid/support/transition/aa;->c:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v3, 0x0

    move-object v11, v3

    :goto_2
    if-nez v12, :cond_1

    if-nez v11, :cond_1

    :cond_0
    :goto_3
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_0

    :cond_1
    if-eqz v12, :cond_2

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/support/transition/aa;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12, v11}, Landroid/support/transition/u;->a(Landroid/view/ViewGroup;Landroid/support/transition/aa;Landroid/support/transition/aa;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    if-eqz v11, :cond_7

    iget-object v6, v11, Landroid/support/transition/aa;->b:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/u;->a()[Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_b

    if-eqz v7, :cond_b

    array-length v3, v7

    if-lez v3, :cond_b

    new-instance v4, Landroid/support/transition/aa;

    invoke-direct {v4}, Landroid/support/transition/aa;-><init>()V

    iput-object v6, v4, Landroid/support/transition/aa;->b:Landroid/view/View;

    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/transition/ab;->a:Landroid/support/v4/h/a;

    invoke-virtual {v2, v6}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/aa;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    :goto_5
    array-length v10, v7

    if-ge v3, v10, :cond_4

    iget-object v10, v4, Landroid/support/transition/aa;->a:Ljava/util/Map;

    aget-object v17, v7, v3

    iget-object v0, v2, Landroid/support/transition/aa;->a:Ljava/util/Map;

    move-object/from16 v18, v0

    aget-object v19, v7, v3

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v14}, Landroid/support/v4/h/a;->size()I

    move-result v7

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v7, :cond_a

    invoke-virtual {v14, v3}, Landroid/support/v4/h/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v14, v2}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/u$a;

    iget-object v10, v2, Landroid/support/transition/u$a;->c:Landroid/support/transition/aa;

    if-eqz v10, :cond_6

    iget-object v10, v2, Landroid/support/transition/u$a;->a:Landroid/view/View;

    if-ne v10, v6, :cond_6

    iget-object v10, v2, Landroid/support/transition/u$a;->b:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/u;->n()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v2, v2, Landroid/support/transition/u$a;->c:Landroid/support/transition/aa;

    invoke-virtual {v2, v4}, Landroid/support/transition/aa;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    move-object v3, v2

    move-object v2, v4

    :goto_7
    move-object v7, v2

    move-object v10, v3

    move-object v3, v6

    :goto_8
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->f:Landroid/support/transition/x;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->f:Landroid/support/transition/x;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v1, v12, v11}, Landroid/support/transition/x;->a(Landroid/view/ViewGroup;Landroid/support/transition/u;Landroid/support/transition/aa;Landroid/support/transition/aa;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    long-to-int v6, v4

    invoke-virtual {v15, v2, v6}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide v8, v4

    :cond_5
    new-instance v2, Landroid/support/transition/u$a;

    invoke-virtual/range {p0 .. p0}, Landroid/support/transition/u;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Landroid/support/transition/am;->b(Landroid/view/View;)Landroid/support/transition/aw;

    move-result-object v6

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v7}, Landroid/support/transition/u$a;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/support/transition/u;Landroid/support/transition/aw;Landroid/support/transition/aa;)V

    invoke-virtual {v14, v10, v2}, Landroid/support/v4/h/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    :cond_7
    iget-object v3, v12, Landroid/support/transition/aa;->b:Landroid/view/View;

    move-object v7, v2

    move-object v10, v5

    goto :goto_8

    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    invoke-virtual {v15, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v15, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v8

    invoke-virtual {v2}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    :cond_9
    return-void

    :cond_a
    move-object v2, v4

    move-object v3, v5

    goto :goto_7

    :cond_b
    move-object v3, v5

    goto :goto_7

    :cond_c
    move-object v11, v3

    goto/16 :goto_2

    :cond_d
    move-object v12, v2

    goto/16 :goto_1
.end method

.method a(Landroid/view/ViewGroup;Z)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Landroid/support/transition/u;->a(Z)V

    iget-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    :cond_0
    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v1, v2

    :goto_0
    iget-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v3, Landroid/support/transition/aa;

    invoke-direct {v3}, Landroid/support/transition/aa;-><init>()V

    iput-object v0, v3, Landroid/support/transition/aa;->b:Landroid/view/View;

    if-eqz p2, :cond_4

    invoke-virtual {p0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;)V

    :goto_1
    iget-object v4, v3, Landroid/support/transition/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Landroid/support/transition/u;->c(Landroid/support/transition/aa;)V

    if-eqz p2, :cond_5

    iget-object v4, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    invoke-static {v4, v0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Landroid/support/transition/u;->b(Landroid/support/transition/aa;)V

    goto :goto_1

    :cond_5
    iget-object v4, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    invoke-static {v4, v0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_3
    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a

    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v3, Landroid/support/transition/aa;

    invoke-direct {v3}, Landroid/support/transition/aa;-><init>()V

    iput-object v0, v3, Landroid/support/transition/aa;->b:Landroid/view/View;

    if-eqz p2, :cond_7

    invoke-virtual {p0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;)V

    :goto_4
    iget-object v4, v3, Landroid/support/transition/aa;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Landroid/support/transition/u;->c(Landroid/support/transition/aa;)V

    if-eqz p2, :cond_8

    iget-object v4, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    invoke-static {v4, v0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v3}, Landroid/support/transition/u;->b(Landroid/support/transition/aa;)V

    goto :goto_4

    :cond_8
    iget-object v4, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    invoke-static {v4, v0, v3}, Landroid/support/transition/u;->a(Landroid/support/transition/ab;Landroid/view/View;Landroid/support/transition/aa;)V

    goto :goto_5

    :cond_9
    invoke-direct {p0, p1, p2}, Landroid/support/transition/u;->c(Landroid/view/View;Z)V

    :cond_a
    if-nez p2, :cond_d

    iget-object v0, p0, Landroid/support/transition/u;->I:Landroid/support/v4/h/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/transition/u;->I:Landroid/support/v4/h/a;

    invoke-virtual {v0}, Landroid/support/v4/h/a;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_b

    iget-object v0, p0, Landroid/support/transition/u;->I:Landroid/support/v4/h/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/h/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v5, v5, Landroid/support/transition/ab;->d:Landroid/support/v4/h/a;

    invoke-virtual {v5, v0}, Landroid/support/v4/h/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_b
    :goto_7
    if-ge v2, v3, :cond_d

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    iget-object v1, p0, Landroid/support/transition/u;->I:Landroid/support/v4/h/a;

    invoke-virtual {v1, v2}, Landroid/support/v4/h/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v5, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v5, v5, Landroid/support/transition/ab;->d:Landroid/support/v4/h/a;

    invoke-virtual {v5, v1, v0}, Landroid/support/v4/h/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    return-void
.end method

.method a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0}, Landroid/support/v4/h/a;->clear()V

    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->c:Landroid/support/v4/h/f;

    invoke-virtual {v0}, Landroid/support/v4/h/f;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->a:Landroid/support/v4/h/a;

    invoke-virtual {v0}, Landroid/support/v4/h/a;->clear()V

    iget-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->c:Landroid/support/v4/h/f;

    invoke-virtual {v0}, Landroid/support/v4/h/f;->c()V

    goto :goto_0
.end method

.method public a(Landroid/support/transition/aa;Landroid/support/transition/aa;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/support/transition/u;->a()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    invoke-static {p1, p2, v5}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/support/transition/aa;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v1

    :goto_1
    move v2, v0

    :cond_0
    :goto_2
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, p2, v0}, Landroid/support/transition/u;->a(Landroid/support/transition/aa;Landroid/support/transition/aa;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method a(Landroid/view/View;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    iget-object v0, p0, Landroid/support/transition/u;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/u;->n:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->o:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_3

    iget-object v0, p0, Landroid/support/transition/u;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/transition/u;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/support/v4/view/r;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/transition/u;->q:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/r;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    iget-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    move v2, v3

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/view/r;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v2, v3

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_2
    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v3

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public a()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Landroid/support/transition/u;->a:J

    return-wide v0
.end method

.method b(Landroid/view/View;Z)Landroid/support/transition/aa;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/transition/u;->d:Landroid/support/transition/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/u;->d:Landroid/support/transition/y;

    invoke-virtual {v0, p1, p2}, Landroid/support/transition/y;->b(Landroid/view/View;Z)Landroid/support/transition/aa;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_6

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/aa;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/transition/aa;->b:Landroid/view/View;

    if-ne v0, p1, :cond_3

    :goto_3
    if-ltz v2, :cond_5

    if-eqz p2, :cond_4

    iget-object v0, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    :goto_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/aa;

    :goto_5
    move-object v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;

    move-object v4, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto :goto_5

    :cond_6
    move v2, v3

    goto :goto_3
.end method

.method public b(J)Landroid/support/transition/u;
    .locals 1

    iput-wide p1, p0, Landroid/support/transition/u;->j:J

    return-object p0
.end method

.method public b(Landroid/support/transition/u$c;)Landroid/support/transition/u;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public b(Landroid/view/View;)Landroid/support/transition/u;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public abstract b(Landroid/support/transition/aa;)V
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Landroid/support/transition/u;->j:J

    return-wide v0
.end method

.method public c(Landroid/view/View;)Landroid/support/transition/u;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method c(Landroid/support/transition/aa;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/transition/u;->f:Landroid/support/transition/x;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->f:Landroid/support/transition/x;

    invoke-virtual {v0}, Landroid/support/transition/x;->a()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_3

    iget-object v4, p1, Landroid/support/transition/aa;->a:Ljava/util/Map;

    aget-object v5, v3, v0

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    if-nez v1, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->f:Landroid/support/transition/x;

    invoke-virtual {v0, p1}, Landroid/support/transition/x;->a(Landroid/support/transition/aa;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/transition/u;->m()Landroid/support/transition/u;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->k:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 5

    iget-boolean v0, p0, Landroid/support/transition/u;->E:Z

    if-nez v0, :cond_3

    invoke-static {}, Landroid/support/transition/u;->o()Landroid/support/v4/h/a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/h/a;->size()I

    move-result v0

    invoke-static {p1}, Landroid/support/transition/am;->b(Landroid/view/View;)Landroid/support/transition/aw;

    move-result-object v3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/support/v4/h/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/u$a;

    iget-object v4, v0, Landroid/support/transition/u$a;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/transition/u$a;->d:Landroid/support/transition/aw;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v4/h/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-static {v0}, Landroid/support/transition/a;->a(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$c;

    invoke-interface {v1, p0}, Landroid/support/transition/u$c;->b(Landroid/support/transition/u;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/u;->D:Z

    :cond_3
    return-void
.end method

.method protected e()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/transition/u;->j()V

    invoke-static {}, Landroid/support/transition/u;->o()Landroid/support/v4/h/a;

    move-result-object v1

    iget-object v0, p0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v1, v0}, Landroid/support/v4/h/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/support/transition/u;->j()V

    invoke-direct {p0, v0, v1}, Landroid/support/transition/u;->a(Landroid/animation/Animator;Landroid/support/v4/h/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/support/transition/u;->k()V

    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/transition/u;->D:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/transition/u;->E:Z

    if-nez v0, :cond_2

    invoke-static {}, Landroid/support/transition/u;->o()Landroid/support/v4/h/a;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/h/a;->size()I

    move-result v0

    invoke-static {p1}, Landroid/support/transition/am;->b(Landroid/view/View;)Landroid/support/transition/aw;

    move-result-object v4

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/support/v4/h/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/u$a;

    iget-object v5, v0, Landroid/support/transition/u$a;->a:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v0, v0, Landroid/support/transition/u$a;->d:Landroid/support/transition/aw;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Landroid/support/v4/h/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-static {v0}, Landroid/support/transition/a;->b(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$c;

    invoke-interface {v1, p0}, Landroid/support/transition/u$c;->c(Landroid/support/transition/u;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Landroid/support/transition/u;->D:Z

    :cond_3
    return-void
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/transition/u;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/transition/u;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/transition/u;->l:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/transition/u;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected j()V
    .locals 5

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/transition/u;->C:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$c;

    invoke-interface {v1, p0}, Landroid/support/transition/u$c;->d(Landroid/support/transition/u;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Landroid/support/transition/u;->E:Z

    :cond_1
    iget v0, p0, Landroid/support/transition/u;->C:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/transition/u;->C:I

    return-void
.end method

.method protected k()V
    .locals 5

    const/4 v2, 0x0

    iget v0, p0, Landroid/support/transition/u;->C:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/transition/u;->C:I

    iget v0, p0, Landroid/support/transition/u;->C:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/u;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/transition/u$c;

    invoke-interface {v1, p0}, Landroid/support/transition/u$c;->a(Landroid/support/transition/u;)V

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->c:Landroid/support/v4/h/f;

    invoke-virtual {v0}, Landroid/support/v4/h/f;->b()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->c:Landroid/support/v4/h/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/h/f;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Landroid/support/v4/view/r;->a(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_2
    iget-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->c:Landroid/support/v4/h/f;

    invoke-virtual {v0}, Landroid/support/v4/h/f;->b()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    iget-object v0, v0, Landroid/support/transition/ab;->c:Landroid/support/v4/h/f;

    invoke-virtual {v0, v1}, Landroid/support/v4/h/f;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-static {v0, v2}, Landroid/support/v4/view/r;->a(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/u;->E:Z

    :cond_5
    return-void
.end method

.method public l()Landroid/support/transition/l;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->J:Landroid/support/transition/l;

    return-object v0
.end method

.method public m()Landroid/support/transition/u;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/transition/u;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/transition/u;->G:Ljava/util/ArrayList;

    new-instance v2, Landroid/support/transition/ab;

    invoke-direct {v2}, Landroid/support/transition/ab;-><init>()V

    iput-object v2, v0, Landroid/support/transition/u;->u:Landroid/support/transition/ab;

    new-instance v2, Landroid/support/transition/ab;

    invoke-direct {v2}, Landroid/support/transition/ab;-><init>()V

    iput-object v2, v0, Landroid/support/transition/u;->v:Landroid/support/transition/ab;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/transition/u;->x:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/transition/u;->y:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/transition/u;->i:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/support/transition/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
