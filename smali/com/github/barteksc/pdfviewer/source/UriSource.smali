.class public Lcom/github/barteksc/pdfviewer/source/UriSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/barteksc/pdfviewer/source/DocumentSource;


# instance fields
.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/source/UriSource;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public createDocument(Landroid/content/Context;Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/source/UriSource;->uri:Landroid/net/Uri;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v0

    return-object v0
.end method