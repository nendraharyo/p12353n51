.class public Lcom/github/barteksc/pdfviewer/source/FileSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/barteksc/pdfviewer/source/DocumentSource;


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/source/FileSource;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public createDocument(Landroid/content/Context;Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/source/FileSource;->file:Ljava/io/File;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v0

    return-object v0
.end method
