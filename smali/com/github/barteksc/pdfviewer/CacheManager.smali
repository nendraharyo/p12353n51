.class Lcom/github/barteksc/pdfviewer/CacheManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;
    }
.end annotation


# instance fields
.field private final activeCache:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ">;"
        }
    .end annotation
.end field

.field private final comparator:Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;

.field private final passiveActiveLock:Ljava/lang/Object;

.field private final passiveCache:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ">;"
        }
    .end annotation
.end field

.field private final thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    new-instance v0, Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;

    invoke-direct {v0, p0}, Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;-><init>(Lcom/github/barteksc/pdfviewer/CacheManager;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->comparator:Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;

    new-instance v0, Ljava/util/PriorityQueue;

    sget v1, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->comparator:Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    new-instance v0, Ljava/util/PriorityQueue;

    sget v1, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->comparator:Lcom/github/barteksc/pdfviewer/CacheManager$PagePartComparator;

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    return-void
.end method

.method private static find(Ljava/util/PriorityQueue;Lcom/github/barteksc/pdfviewer/model/PagePart;)Lcom/github/barteksc/pdfviewer/model/PagePart;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ">;",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ")",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeAFreeSpace()V
    .locals 3

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->CACHE_SIZE:I

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public cachePart(Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .locals 2

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/CacheManager;->makeAFreeSpace()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cacheThumbnail(Lcom/github/barteksc/pdfviewer/model/PagePart;)V
    .locals 3

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v2, Lcom/github/barteksc/pdfviewer/util/Constants$Cache;->THUMBNAILS_CACHE_SIZE:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsThumbnail(IIFFLandroid/graphics/RectF;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    new-instance v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/github/barteksc/pdfviewer/model/PagePart;-><init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-virtual {v1, v0}, Lcom/github/barteksc/pdfviewer/model/PagePart;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    :goto_0
    return v7

    :cond_1
    monitor-exit v2

    move v7, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPageParts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/github/barteksc/pdfviewer/model/PagePart;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeANewSet()V
    .locals 3

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle()V
    .locals 3

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getRenderedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->thumbnails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public upPartIfContained(IIFFLandroid/graphics/RectF;I)Z
    .locals 9

    new-instance v0, Lcom/github/barteksc/pdfviewer/model/PagePart;

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/github/barteksc/pdfviewer/model/PagePart;-><init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveActiveLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-static {v2, v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->find(Ljava/util/PriorityQueue;Lcom/github/barteksc/pdfviewer/model/PagePart;)Lcom/github/barteksc/pdfviewer/model/PagePart;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->passiveCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, p6}, Lcom/github/barteksc/pdfviewer/model/PagePart;->setCacheOrder(I)V

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v2}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/CacheManager;->activeCache:Ljava/util/PriorityQueue;

    invoke-static {v2, v0}, Lcom/github/barteksc/pdfviewer/CacheManager;->find(Ljava/util/PriorityQueue;Lcom/github/barteksc/pdfviewer/model/PagePart;)Lcom/github/barteksc/pdfviewer/model/PagePart;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
