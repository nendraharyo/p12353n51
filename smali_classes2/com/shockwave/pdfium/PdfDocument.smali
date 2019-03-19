.class public Lcom/shockwave/pdfium/PdfDocument;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shockwave/pdfium/PdfDocument$Bookmark;,
        Lcom/shockwave/pdfium/PdfDocument$Meta;
    }
.end annotation


# instance fields
.field mNativeDocPtr:J

.field final mNativePagesPtr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field parcelFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/h/a;

    invoke-direct {v0}, Landroid/support/v4/h/a;-><init>()V

    iput-object v0, p0, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public hasPage(I)Z
    .locals 2

    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument;->mNativePagesPtr:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
