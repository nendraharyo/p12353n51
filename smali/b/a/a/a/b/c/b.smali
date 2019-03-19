.class public abstract Lb/a/a/a/b/c/b;
.super Lb/a/a/a/k/a;

# interfaces
.implements Lb/a/a/a/b/c/a;
.implements Lb/a/a/a/q;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lb/a/a/a/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb/a/a/a/k/a;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/a/a/a/b/c/b;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/b/c/b;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    iget-object v0, p0, Lb/a/a/a/b/c/b;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/b/c/b;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/c/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/a/a/c/a;->a()Z

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/b/c/b;

    iget-object v1, p0, Lb/a/a/a/b/c/b;->headergroup:Lb/a/a/a/k/q;

    invoke-static {v1}, Lb/a/a/a/b/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/k/q;

    iput-object v1, v0, Lb/a/a/a/b/c/b;->headergroup:Lb/a/a/a/k/q;

    iget-object v1, p0, Lb/a/a/a/b/c/b;->params:Lb/a/a/a/l/e;

    invoke-static {v1}, Lb/a/a/a/b/f/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/l/e;

    iput-object v1, v0, Lb/a/a/a/b/c/b;->params:Lb/a/a/a/l/e;

    return-object v0
.end method

.method public completed()V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/b/c/b;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public isAborted()Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/c/b;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/b/c/b;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/c/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/a/a/c/a;->a()Z

    :cond_0
    iget-object v0, p0, Lb/a/a/a/b/c/b;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public setCancellable(Lb/a/a/a/c/a;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/c/b;->aborted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/b/c/b;->cancellableRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setConnectionRequest(Lb/a/a/a/e/e;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lb/a/a/a/b/c/b$1;

    invoke-direct {v0, p0, p1}, Lb/a/a/a/b/c/b$1;-><init>(Lb/a/a/a/b/c/b;Lb/a/a/a/e/e;)V

    invoke-virtual {p0, v0}, Lb/a/a/a/b/c/b;->setCancellable(Lb/a/a/a/c/a;)V

    return-void
.end method

.method public setReleaseTrigger(Lb/a/a/a/e/i;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lb/a/a/a/b/c/b$2;

    invoke-direct {v0, p0, p1}, Lb/a/a/a/b/c/b$2;-><init>(Lb/a/a/a/b/c/b;Lb/a/a/a/e/i;)V

    invoke-virtual {p0, v0}, Lb/a/a/a/b/c/b;->setCancellable(Lb/a/a/a/c/a;)V

    return-void
.end method
