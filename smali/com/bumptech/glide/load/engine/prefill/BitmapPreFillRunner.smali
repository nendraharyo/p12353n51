.class final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;,
        Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;
    }
.end annotation


# static fields
.field static final BACKOFF_RATIO:I = 0x4

.field private static final DEFAULT_CLOCK:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field static final INITIAL_BACKOFF_MS:J = 0x28L

.field static final MAX_BACKOFF_MS:J

.field static final MAX_DURATION_MS:J = 0x20L

.field static final TAG:Ljava/lang/String; = "PreFillRunner"


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field private currentDelay:J

.field private final handler:Landroid/os/Handler;

.field private isCancelled:Z

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final seenTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/load/engine/prefill/PreFillType;",
            ">;"
        }
    .end annotation
.end field

.field private final toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->DEFAULT_CLOCK:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->MAX_BACKOFF_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;)V
    .locals 6

    sget-object v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->DEFAULT_CLOCK:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->seenTypes:Ljava/util/Set;

    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->handler:Landroid/os/Handler;

    return-void
.end method

.method private getFreeMemoryCacheBytes()J
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getNextDelay()J
    .locals 6

    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    iget-wide v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    const-wide/16 v4, 0x4

    mul-long/2addr v2, v4

    sget-wide v4, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->MAX_BACKOFF_MS:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    return-wide v0
.end method

.method private isGcDetected(J)Z
    .locals 5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->now()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method allocate()Z
    .locals 10

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->now()J

    move-result-wide v2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isGcDetected(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->remove()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->seenTypes:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->seenTypes:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-interface {v0, v4, v5, v6}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->getFreeMemoryCacheBytes()J

    move-result-wide v6

    int-to-long v8, v4

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    new-instance v5, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;

    invoke-direct {v5}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;-><init>()V

    iget-object v6, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v7, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v0, v7}, Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v0

    invoke-interface {v6, v5, v0}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;

    :goto_2
    const-string v0, "PreFillRunner"

    const/4 v5, 0x3

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PreFillRunner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocated ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " size: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v4

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v5, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isCancelled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isCancelled:Z

    return-void
.end method

.method public run()V
    .locals 4

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->allocate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->getNextDelay()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
