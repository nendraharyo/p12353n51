.class Lcom/bumptech/glide/load/engine/EngineJob;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/engine/DecodeJob$Callback;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;,
        Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DecodeJob$Callback",
        "<TR;>;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field private static final MAIN_THREAD_HANDLER:Landroid/os/Handler;

.field private static final MSG_CANCELLED:I = 0x3

.field private static final MSG_COMPLETE:I = 0x1

.field private static final MSG_EXCEPTION:I = 0x2


# instance fields
.field private final animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final cbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private dataSource:Lcom/bumptech/glide/load/DataSource;

.field private decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<TR;>;"
        }
    .end annotation
.end field

.field private final diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private engineResource:Lcom/bumptech/glide/load/engine/EngineResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/EngineResource",
            "<*>;"
        }
    .end annotation
.end field

.field private final engineResourceFactory:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

.field private exception:Lcom/bumptech/glide/load/engine/GlideException;

.field private hasLoadFailed:Z

.field private hasResource:Z

.field private ignoredCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/ResourceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private isCacheable:Z

.field private volatile isCancelled:Z

.field private key:Lcom/bumptech/glide/load/Key;

.field private final listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

.field private onlyRetrieveFromCache:Z

.field private final pool:Landroid/support/v4/h/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/k$a",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineJob",
            "<*>;>;"
        }
    .end annotation
.end field

.field private resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource",
            "<*>;"
        }
    .end annotation
.end field

.field private final sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

.field private final stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private useAnimationPool:Z

.field private useUnlimitedSourceGeneratorPool:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;

    invoke-direct {v2}, Lcom/bumptech/glide/load/engine/EngineJob$MainThreadCallback;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Landroid/support/v4/h/k$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/EngineJobListener;",
            "Landroid/support/v4/h/k$a",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineJob",
            "<*>;>;)V"
        }
    .end annotation

    sget-object v7, Lcom/bumptech/glide/load/engine/EngineJob;->DEFAULT_FACTORY:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/EngineJob;-><init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Landroid/support/v4/h/k$a;Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/executor/GlideExecutor;Lcom/bumptech/glide/load/engine/EngineJobListener;Landroid/support/v4/h/k$a;Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/executor/GlideExecutor;",
            "Lcom/bumptech/glide/load/engine/EngineJobListener;",
            "Landroid/support/v4/h/k$a",
            "<",
            "Lcom/bumptech/glide/load/engine/EngineJob",
            "<*>;>;",
            "Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iput-object p6, p0, Lcom/bumptech/glide/load/engine/EngineJob;->pool:Landroid/support/v4/h/k$a;

    iput-object p7, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResourceFactory:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    return-void
.end method

.method private addIgnoredCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private getActiveSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->useUnlimitedSourceGeneratorPool:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->sourceUnlimitedExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->useAnimationPool:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->animationExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->sourceExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    goto :goto_0
.end method

.method private isInIgnoredCallbacks(Lcom/bumptech/glide/request/ResourceCallback;)Z
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private release(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->ignoredCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    iput-boolean v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->release(Z)V

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->dataSource:Lcom/bumptech/glide/load/DataSource;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->pool:Landroid/support/v4/h/k$a;

    invoke-interface {v0, p0}, Landroid/support/v4/h/k$a;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method addCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 2

    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->dataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {p1, v0}, Lcom/bumptech/glide/request/ResourceCallback;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method cancel()V
    .locals 2

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DecodeJob;->cancel()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V

    goto :goto_0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object v0
.end method

.method handleCancelledOnMainThread()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    invoke-interface {v0, p0, v1}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobCancelled(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/EngineJob;->release(Z)V

    return-void
.end method

.method handleExceptionOnMainThread()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/EngineJob;->release(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received an exception without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already failed once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/ResourceCallback;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/EngineJob;->isInIgnoredCallbacks(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    invoke-interface {v0, v2}, Lcom/bumptech/glide/request/ResourceCallback;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lcom/bumptech/glide/load/engine/EngineJob;->release(Z)V

    goto :goto_0
.end method

.method handleResultOnMainThread()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/EngineJob;->release(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Received a resource without any callbacks to notify"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already have resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResourceFactory:Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    iget-boolean v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCacheable:Z

    invoke-virtual {v0, v1, v3}, Lcom/bumptech/glide/load/engine/EngineJob$EngineResourceFactory;->build(Lcom/bumptech/glide/load/engine/Resource;Z)Lcom/bumptech/glide/load/engine/EngineResource;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->listener:Lcom/bumptech/glide/load/engine/EngineJobListener;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-interface {v0, p0, v1, v3}, Lcom/bumptech/glide/load/engine/EngineJobListener;->onEngineJobComplete(Lcom/bumptech/glide/load/engine/EngineJob;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/ResourceCallback;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/EngineJob;->isInIgnoredCallbacks(Lcom/bumptech/glide/request/ResourceCallback;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/EngineResource;->acquire()V

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    iget-object v5, p0, Lcom/bumptech/glide/load/engine/EngineJob;->dataSource:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v4, v5}, Lcom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->engineResource:Lcom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/EngineResource;->release()V

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/EngineJob;->release(Z)V

    goto :goto_0
.end method

.method init(Lcom/bumptech/glide/load/Key;ZZZZ)Lcom/bumptech/glide/load/engine/EngineJob;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "ZZZZ)",
            "Lcom/bumptech/glide/load/engine/EngineJob",
            "<TR;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->key:Lcom/bumptech/glide/load/Key;

    iput-boolean p2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCacheable:Z

    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/EngineJob;->useUnlimitedSourceGeneratorPool:Z

    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/EngineJob;->useAnimationPool:Z

    iput-boolean p5, p0, Lcom/bumptech/glide/load/engine/EngineJob;->onlyRetrieveFromCache:Z

    return-object p0
.end method

.method isCancelled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->isCancelled:Z

    return v0
.end method

.method public onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V
    .locals 2

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->exception:Lcom/bumptech/glide/load/engine/GlideException;

    sget-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource",
            "<TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->resource:Lcom/bumptech/glide/load/engine/Resource;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineJob;->dataSource:Lcom/bumptech/glide/load/DataSource;

    sget-object v0, Lcom/bumptech/glide/load/engine/EngineJob;->MAIN_THREAD_HANDLER:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method onlyRetrieveFromCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->onlyRetrieveFromCache:Z

    return v0
.end method

.method removeCallback(Lcom/bumptech/glide/request/ResourceCallback;)V
    .locals 1

    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->stateVerifier:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasResource:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->hasLoadFailed:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/EngineJob;->addIgnoredCallback(Lcom/bumptech/glide/request/ResourceCallback;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->cancel()V

    goto :goto_0
.end method

.method public reschedule(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->getActiveSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start(Lcom/bumptech/glide/load/engine/DecodeJob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DecodeJob",
            "<TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineJob;->decodeJob:Lcom/bumptech/glide/load/engine/DecodeJob;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DecodeJob;->willDecodeFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineJob;->diskCacheExecutor:Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/executor/GlideExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineJob;->getActiveSourceExecutor()Lcom/bumptech/glide/load/engine/executor/GlideExecutor;

    move-result-object v0

    goto :goto_0
.end method
