.class public final Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
.super Ljava/lang/Object;


# instance fields
.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

.field private final defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

.field private final handler:Landroid/os/Handler;

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->handler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method

.method private static getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I
    .locals 3

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method


# virtual methods
.method varargs generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()J

    move-result-wide v2

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getMaxSize()J

    move-result-wide v4

    add-long/2addr v4, v2

    array-length v3, p1

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, p1, v1

    invoke-virtual {v6}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    long-to-float v1, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    array-length v3, p1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v4}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->getSizeInBytes(Lcom/bumptech/glide/load/engine/prefill/PreFillType;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public varargs preFill([Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->cancel()V

    :cond_0
    array-length v0, p1

    new-array v2, v0, [Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v4, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v1, v4, :cond_2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-virtual {v3, v1}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    :cond_1
    invoke-virtual {v3}, Lcom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->build()Lcom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->generateAllocationOrder([Lcom/bumptech/glide/load/engine/prefill/PreFillType;)Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lcom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-direct {v1, v2, v3, v0}, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/engine/cache/MemoryCache;Lcom/bumptech/glide/load/engine/prefill/PreFillQueue;)V

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lcom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
