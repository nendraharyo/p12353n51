.class public Lcom/sun/pdfview/Cache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/Cache$PageRecord;,
        Lcom/sun/pdfview/Cache$Record;
    }
.end annotation


# instance fields
.field private pages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lc/a/a/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/Cache;->pages:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addImage(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sun/pdfview/Cache;->addImageRecord(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;Landroid/graphics/Bitmap;Lcom/sun/pdfview/PDFRenderer;)Lcom/sun/pdfview/Cache$Record;

    return-void
.end method

.method public addImage(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;Landroid/graphics/Bitmap;Lcom/sun/pdfview/PDFRenderer;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/pdfview/Cache;->addImageRecord(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;Landroid/graphics/Bitmap;Lcom/sun/pdfview/PDFRenderer;)Lcom/sun/pdfview/Cache$Record;

    return-void
.end method

.method addImageRecord(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;Landroid/graphics/Bitmap;Lcom/sun/pdfview/PDFRenderer;)Lcom/sun/pdfview/Cache$Record;
    .locals 3

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFPage;->getPageNumber()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/Cache;->getPageRecord(Ljava/lang/Integer;)Lcom/sun/pdfview/Cache$PageRecord;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/pdfview/Cache;->addPageRecord(Ljava/lang/Integer;Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/PDFParser;)Lcom/sun/pdfview/Cache$PageRecord;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/sun/pdfview/Cache$Record;

    invoke-direct {v1, p0}, Lcom/sun/pdfview/Cache$Record;-><init>(Lcom/sun/pdfview/Cache;)V

    iput-object p3, v1, Lcom/sun/pdfview/Cache$Record;->value:Ljava/lang/Object;

    iput-object p4, v1, Lcom/sun/pdfview/Cache$Record;->generator:Lcom/sun/pdfview/BaseWatchable;

    iget-object v0, v0, Lcom/sun/pdfview/Cache$PageRecord;->images:Ljava/util/Map;

    new-instance v2, Lc/a/a/d/b;

    invoke-direct {v2, v1}, Lc/a/a/d/b;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public addPage(Ljava/lang/Integer;Lcom/sun/pdfview/PDFPage;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/pdfview/Cache;->addPageRecord(Ljava/lang/Integer;Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/PDFParser;)Lcom/sun/pdfview/Cache$PageRecord;

    return-void
.end method

.method public addPage(Ljava/lang/Integer;Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/PDFParser;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/pdfview/Cache;->addPageRecord(Ljava/lang/Integer;Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/PDFParser;)Lcom/sun/pdfview/Cache$PageRecord;

    return-void
.end method

.method addPageRecord(Ljava/lang/Integer;Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/PDFParser;)Lcom/sun/pdfview/Cache$PageRecord;
    .locals 3

    new-instance v0, Lcom/sun/pdfview/Cache$PageRecord;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/Cache$PageRecord;-><init>(Lcom/sun/pdfview/Cache;)V

    iput-object p2, v0, Lcom/sun/pdfview/Cache$PageRecord;->value:Ljava/lang/Object;

    iput-object p3, v0, Lcom/sun/pdfview/Cache$PageRecord;->generator:Lcom/sun/pdfview/BaseWatchable;

    iget-object v1, p0, Lcom/sun/pdfview/Cache;->pages:Ljava/util/Map;

    new-instance v2, Lc/a/a/d/b;

    invoke-direct {v2, v0}, Lc/a/a/d/b;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getImage(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sun/pdfview/Cache;->getImageRecord(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;)Lcom/sun/pdfview/Cache$Record;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sun/pdfview/Cache$Record;->value:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getImageRecord(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;)Lcom/sun/pdfview/Cache$Record;
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFPage;->getPageNumber()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/Cache;->getPageRecord(Ljava/lang/Integer;)Lcom/sun/pdfview/Cache$PageRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sun/pdfview/Cache$PageRecord;->images:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/d/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/a/a/d/b;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, " not in "

    :goto_0
    invoke-virtual {v0}, Lc/a/a/d/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/Cache$Record;

    :goto_1
    return-object v0

    :cond_0
    const-string v1, " in "

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getImageRenderer(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;)Lcom/sun/pdfview/PDFRenderer;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/sun/pdfview/Cache;->getImageRecord(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;)Lcom/sun/pdfview/Cache$Record;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sun/pdfview/Cache$Record;->generator:Lcom/sun/pdfview/BaseWatchable;

    check-cast v0, Lcom/sun/pdfview/PDFRenderer;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPage(Ljava/lang/Integer;)Lcom/sun/pdfview/PDFPage;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/Cache;->getPageRecord(Ljava/lang/Integer;)Lcom/sun/pdfview/Cache$PageRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sun/pdfview/Cache$PageRecord;->value:Ljava/lang/Object;

    check-cast v0, Lcom/sun/pdfview/PDFPage;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPageParser(Ljava/lang/Integer;)Lcom/sun/pdfview/PDFParser;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/Cache;->getPageRecord(Ljava/lang/Integer;)Lcom/sun/pdfview/Cache$PageRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sun/pdfview/Cache$PageRecord;->generator:Lcom/sun/pdfview/BaseWatchable;

    check-cast v0, Lcom/sun/pdfview/PDFParser;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getPageRecord(Ljava/lang/Integer;)Lcom/sun/pdfview/Cache$PageRecord;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/Cache;->pages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/d/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/a/a/d/b;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, " not in "

    :goto_0
    invoke-virtual {v0}, Lc/a/a/d/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/Cache$PageRecord;

    :goto_1
    return-object v0

    :cond_0
    const-string v1, " in "

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public removeImage(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sun/pdfview/Cache;->removeImageRecord(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;)Lcom/sun/pdfview/Cache$Record;

    return-void
.end method

.method removeImageRecord(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;)Lcom/sun/pdfview/Cache$Record;
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFPage;->getPageNumber()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/Cache;->getPageRecord(Ljava/lang/Integer;)Lcom/sun/pdfview/Cache$PageRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sun/pdfview/Cache$PageRecord;->images:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/a/a/d/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/Cache$Record;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePage(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/Cache;->removePageRecord(Ljava/lang/Integer;)Lcom/sun/pdfview/Cache$PageRecord;

    return-void
.end method

.method removePageRecord(Ljava/lang/Integer;)Lcom/sun/pdfview/Cache$PageRecord;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/Cache;->pages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/a/a/d/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/Cache$PageRecord;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
