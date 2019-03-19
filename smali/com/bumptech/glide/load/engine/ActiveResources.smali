.class final Lcom/bumptech/glide/load/engine/ActiveResources;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;,
        Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;
    }
.end annotation


# static fields
.field private static final MSG_CLEAN_REF:I = 0x1


# instance fields
.field final activeEngineResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

.field private cleanReferenceQueueThread:Ljava/lang/Thread;

.field private final isActiveResourceRetentionAllowed:Z

.field private volatile isShutdown:Z

.field private listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

.field private final mainHandler:Landroid/os/Handler;

.field private resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/ActiveResources$1;

    invoke-direct {v2, p0}, Lcom/bumptech/glide/load/engine/ActiveResources$1;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->mainHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    iput-boolean p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    return-void
.end method

.method private getReferenceQueue()Ljava/lang/ref/ReferenceQueue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bumptech/glide/load/engine/ActiveResources$2;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/load/engine/ActiveResources$2;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;)V

    const-string v2, "glide-active-resources"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueueThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueueThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method activate(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;)V"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/ActiveResources;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;Z)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V

    :cond_0
    return-void
.end method

.method cleanReferenceQueue()V
    .locals 3

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isShutdown:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;->onResourceDequeued()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    .locals 4

    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->isCacheable:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/EngineResource;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;ZZ)V

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    invoke-virtual {v0, v1, v2}, Lcom/bumptech/glide/load/engine/EngineResource;->setResourceListener(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v1, v2, v0}, Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;->onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    goto :goto_0
.end method

.method deactivate(Lcom/bumptech/glide/load/Key;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->reset()V

    :cond_0
    return-void
.end method

.method get(Lcom/bumptech/glide/load/Key;)Lcom/bumptech/glide/load/engine/EngineResource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            ")",
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/engine/EngineResource;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V

    goto :goto_0
.end method

.method setDequeuedResourceCallback(Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cb:Lcom/bumptech/glide/load/engine/ActiveResources$DequeuedResourceCallback;

    return-void
.end method

.method setListener(Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    return-void
.end method

.method shutdown()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isShutdown:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueueThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueueThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueueThread:Ljava/lang/Thread;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->cleanReferenceQueueThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to join in time"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method
