.class public Lcom/shockwave/pdfium/PdfiumCore;
.super Ljava/lang/Object;


# static fields
.field private static final FD_CLASS:Ljava/lang/Class;

.field private static final FD_FIELD_NAME:Ljava/lang/String; = "descriptor"

.field private static final TAG:Ljava/lang/String;

.field private static final lock:Ljava/lang/Object;

.field private static mFdField:Ljava/lang/reflect/Field;


# instance fields
.field private mCurrentDpi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v0, "modpng"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "modft2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "modpdfium"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "jniPdfium"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-class v0, Ljava/io/FileDescriptor;

    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->FD_CLASS:Ljava/lang/Class;

    const/4 v0, 0x0

    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    return-void
.end method

.method public static getNumFd(Landroid/os/ParcelFileDescriptor;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->FD_CLASS:Ljava/lang/Class;

    const-string v2, "descriptor"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->mFdField:Ljava/lang/reflect/Field;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private native nativeCloseDocument(J)V
.end method

.method private native nativeClosePage(J)V
.end method

.method private native nativeClosePages([J)V
.end method

.method private native nativeGetBookmarkDestIndex(JJ)J
.end method

.method private native nativeGetBookmarkTitle(J)Ljava/lang/String;
.end method

.method private native nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;
.end method

.method private native nativeGetPageCount(J)I
.end method

.method private native nativeGetPageHeightPixel(JI)I
.end method

.method private native nativeGetPageHeightPoint(J)I
.end method

.method private native nativeGetPageWidthPixel(JI)I
.end method

.method private native nativeGetPageWidthPoint(J)I
.end method

.method private native nativeGetSiblingBookmark(JJ)Ljava/lang/Long;
.end method

.method private native nativeLoadPage(JI)J
.end method

.method private native nativeLoadPages(JII)[J
.end method

.method private native nativeOpenDocument(ILjava/lang/String;)J
.end method

.method private native nativeOpenMemDocument([BLjava/lang/String;)J
.end method

.method private native nativeRenderPage(JLandroid/view/Surface;IIIIIZ)V
.end method

.method private native nativeRenderPageBitmap(JLandroid/graphics/Bitmap;IIIIIZ)V
.end method

.method private recursiveGetBookmark(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;",
            "Lcom/shockwave/pdfium/PdfDocument;",
            "J)V"
        }
    .end annotation

    new-instance v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;

    invoke-direct {v0}, Lcom/shockwave/pdfium/PdfDocument$Bookmark;-><init>()V

    iput-wide p3, v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->mNativePtr:J

    invoke-direct {p0, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetBookmarkTitle(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->title:Ljava/lang/String;

    iget-wide v2, p2, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v2, v3, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetBookmarkDestIndex(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->pageIdx:J

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p2, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, p2, v2, v3}, Lcom/shockwave/pdfium/PdfiumCore;->recursiveGetBookmark(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V

    :cond_0
    iget-wide v0, p2, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v0, v1, p3, p4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetSiblingBookmark(JJ)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/shockwave/pdfium/PdfiumCore;->recursiveGetBookmark(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public closeDocument(Lcom/shockwave/pdfium/PdfDocument;)V
    .locals 6

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v3, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/shockwave/pdfium/PdfiumCore;->nativeClosePage(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v2, v3}, Lcom/shockwave/pdfium/PdfiumCore;->nativeCloseDocument(J)V

    iget-object v0, p1, Lcom/shockwave/pdfium/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, p1, Lcom/shockwave/pdfium/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p1, Lcom/shockwave/pdfium/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    :cond_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getDocumentMeta(Lcom/shockwave/pdfium/PdfDocument;)Lcom/shockwave/pdfium/PdfDocument$Meta;
    .locals 5

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/shockwave/pdfium/PdfDocument$Meta;

    invoke-direct {v0}, Lcom/shockwave/pdfium/PdfDocument$Meta;-><init>()V

    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Title"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shockwave/pdfium/PdfDocument$Meta;->title:Ljava/lang/String;

    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Author"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shockwave/pdfium/PdfDocument$Meta;->author:Ljava/lang/String;

    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Subject"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shockwave/pdfium/PdfDocument$Meta;->subject:Ljava/lang/String;

    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Keywords"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shockwave/pdfium/PdfDocument$Meta;->keywords:Ljava/lang/String;

    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Creator"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shockwave/pdfium/PdfDocument$Meta;->creator:Ljava/lang/String;

    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "Producer"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shockwave/pdfium/PdfDocument$Meta;->producer:Ljava/lang/String;

    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "CreationDate"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shockwave/pdfium/PdfDocument$Meta;->creationDate:Ljava/lang/String;

    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const-string v4, "ModDate"

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetDocumentMetaText(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/shockwave/pdfium/PdfDocument$Meta;->modDate:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPageCount(Lcom/shockwave/pdfium/PdfDocument;)I
    .locals 4

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v2, v3}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageCount(J)I

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPageHeight(Lcom/shockwave/pdfium/PdfDocument;I)I
    .locals 4

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v0, p0, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    invoke-direct {p0, v2, v3, v0}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageHeightPixel(JI)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPageHeightPoint(Lcom/shockwave/pdfium/PdfDocument;I)I
    .locals 4

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageHeightPoint(J)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPageWidth(Lcom/shockwave/pdfium/PdfDocument;I)I
    .locals 4

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v0, p0, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    invoke-direct {p0, v2, v3, v0}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageWidthPixel(JI)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPageWidthPoint(Lcom/shockwave/pdfium/PdfDocument;I)I
    .locals 4

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetPageWidthPoint(J)I

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTableOfContents(Lcom/shockwave/pdfium/PdfDocument;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shockwave/pdfium/PdfDocument;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/shockwave/pdfium/PdfiumCore;->nativeGetFirstChildBookmark(JLjava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, p1, v2, v3}, Lcom/shockwave/pdfium/PdfiumCore;->recursiveGetBookmark(Ljava/util/List;Lcom/shockwave/pdfium/PdfDocument;J)V

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newDocument(Landroid/os/ParcelFileDescriptor;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method public newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 4

    new-instance v0, Lcom/shockwave/pdfium/PdfDocument;

    invoke-direct {v0}, Lcom/shockwave/pdfium/PdfDocument;-><init>()V

    iput-object p1, v0, Lcom/shockwave/pdfium/PdfDocument;->parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Lcom/shockwave/pdfium/PdfiumCore;->getNumFd(Landroid/os/ParcelFileDescriptor;)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeOpenDocument(ILjava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public newDocument([B)Lcom/shockwave/pdfium/PdfDocument;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument([BLjava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v0

    return-object v0
.end method

.method public newDocument([BLjava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 4

    new-instance v0, Lcom/shockwave/pdfium/PdfDocument;

    invoke-direct {v0}, Lcom/shockwave/pdfium/PdfDocument;-><init>()V

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeOpenMemDocument([BLjava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openPage(Lcom/shockwave/pdfium/PdfDocument;I)J
    .locals 6

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v2, v3, p2}, Lcom/shockwave/pdfium/PdfiumCore;->nativeLoadPage(JI)J

    move-result-wide v2

    iget-object v0, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public openPage(Lcom/shockwave/pdfium/PdfDocument;II)[J
    .locals 8

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativeDocPtr:J

    invoke-direct {p0, v2, v3, p2, p3}, Lcom/shockwave/pdfium/PdfiumCore;->nativeLoadPages(JII)[J

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-wide v4, v2, v0

    if-le p2, p3, :cond_1

    :cond_0
    monitor-exit v1

    return-object v2

    :cond_1
    iget-object v6, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renderPage(Lcom/shockwave/pdfium/PdfDocument;Landroid/view/Surface;IIIII)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/shockwave/pdfium/PdfiumCore;->renderPage(Lcom/shockwave/pdfium/PdfDocument;Landroid/view/Surface;IIIIIZ)V

    return-void
.end method

.method public renderPage(Lcom/shockwave/pdfium/PdfDocument;Landroid/view/Surface;IIIIIZ)V
    .locals 12

    sget-object v11, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v0, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v5, p0, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    move-object v1, p0

    move-object v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/shockwave/pdfium/PdfiumCore;->nativeRenderPage(JLandroid/view/Surface;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v11

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v2, "mContext may be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v2, "Exception throw from native"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIII)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/shockwave/pdfium/PdfiumCore;->renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V

    return-void
.end method

.method public renderPageBitmap(Lcom/shockwave/pdfium/PdfDocument;Landroid/graphics/Bitmap;IIIIIZ)V
    .locals 12

    sget-object v11, Lcom/shockwave/pdfium/PdfiumCore;->lock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v0, p1, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v5, p0, Lcom/shockwave/pdfium/PdfiumCore;->mCurrentDpi:I

    move-object v1, p0

    move-object v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/shockwave/pdfium/PdfiumCore;->nativeRenderPageBitmap(JLandroid/graphics/Bitmap;IIIIIZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v11

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v2, "mContext may be null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/shockwave/pdfium/PdfiumCore;->TAG:Ljava/lang/String;

    const-string v2, "Exception throw from native"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
