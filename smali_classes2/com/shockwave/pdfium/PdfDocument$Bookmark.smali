.class public Lcom/shockwave/pdfium/PdfDocument$Bookmark;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shockwave/pdfium/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bookmark"
.end annotation


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field mNativePtr:J

.field pageIdx:J

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->children:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/shockwave/pdfium/PdfDocument$Bookmark;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->children:Ljava/util/List;

    return-object v0
.end method

.method public getPageIdx()J
    .locals 2

    iget-wide v0, p0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->pageIdx:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Bookmark;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
