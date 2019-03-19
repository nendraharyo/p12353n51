.class public Lcom/github/barteksc/pdfviewer/source/AssetSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/barteksc/pdfviewer/source/DocumentSource;


# instance fields
.field private final assetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/source/AssetSource;->assetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createDocument(Landroid/content/Context;Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/source/AssetSource;->assetName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/github/barteksc/pdfviewer/util/FileUtils;->fileFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v0

    return-object v0
.end method
