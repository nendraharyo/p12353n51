.class Lcom/sun/pdfview/Cache$PageRecord;
.super Lcom/sun/pdfview/Cache$Record;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageRecord"
.end annotation


# instance fields
.field images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/pdfview/ImageInfo;",
            "Lc/a/a/d/b",
            "<",
            "Lcom/sun/pdfview/Cache$Record;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sun/pdfview/Cache;


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/Cache;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/pdfview/Cache$PageRecord;->this$0:Lcom/sun/pdfview/Cache;

    invoke-direct {p0, p1}, Lcom/sun/pdfview/Cache$Record;-><init>(Lcom/sun/pdfview/Cache;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/Cache$PageRecord;->images:Ljava/util/Map;

    return-void
.end method
