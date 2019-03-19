.class public Lc/a/a/d/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field b:Lc/a/a/d/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/d/a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lc/a/a/d/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lc/a/a/d/a;

    invoke-direct {v0, p1}, Lc/a/a/d/a;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/a/a/d/c;->b:Lc/a/a/d/a;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc/a/a/d/c;->a:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-boolean v0, Lc/a/a/d/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/d/c;->b:Lc/a/a/d/a;

    invoke-virtual {v0}, Lc/a/a/d/a;->b()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc/a/a/d/c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
