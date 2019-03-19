.class public Lcom/sun/pdfview/font/ttf/AdobeGlyphList;
.super Ljava/lang/Object;


# static fields
.field static glyphLoaderThread:Ljava/lang/Thread;

.field private static glyphToUnicodes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private static unicodeToGlyph:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphLoaderThread:Ljava/lang/Thread;

    new-instance v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;

    invoke-direct {v0}, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v1, 0x1194

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphToUnicodes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->unicodeToGlyph:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sun/pdfview/font/ttf/AdobeGlyphList$1;

    invoke-direct {v1, p0}, Lcom/sun/pdfview/font/ttf/AdobeGlyphList$1;-><init>(Lcom/sun/pdfview/font/ttf/AdobeGlyphList;)V

    const-string v2, "Adobe Glyph Loader Thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphLoaderThread:Ljava/lang/Thread;

    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->unicodeToGlyph:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphToUnicodes:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getGlyphName(I)Ljava/lang/String;
    .locals 4

    :goto_0
    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphLoaderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->unicodeToGlyph:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    sget-object v1, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphToUnicodes:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphToUnicodes:Ljava/util/HashMap;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static getGlyphNameIndex(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    invoke-static {p0}, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->getUnicodeValues(Ljava/lang/String;)[I

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method public static getUnicodeValues(Ljava/lang/String;)[I
    .locals 4

    :goto_0
    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphLoaderThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphLoaderThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphToUnicodes:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0

    :cond_1
    sget-object v1, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphToUnicodes:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sun/pdfview/font/ttf/AdobeGlyphList;->glyphToUnicodes:Ljava/util/HashMap;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
