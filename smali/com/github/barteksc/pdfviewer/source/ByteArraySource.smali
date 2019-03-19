.class public Lcom/github/barteksc/pdfviewer/source/ByteArraySource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/barteksc/pdfviewer/source/DocumentSource;


# instance fields
.field private data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/source/ByteArraySource;->data:[B

    return-void
.end method


# virtual methods
.method public createDocument(Landroid/content/Context;Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/source/ByteArraySource;->data:[B

    invoke-virtual {p2, v0, p3}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument([BLjava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v0

    return-object v0
.end method
