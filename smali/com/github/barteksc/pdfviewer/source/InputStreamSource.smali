.class public Lcom/github/barteksc/pdfviewer/source/InputStreamSource;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/github/barteksc/pdfviewer/source/DocumentSource;


# instance fields
.field private inputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/source/InputStreamSource;->inputStream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public createDocument(Landroid/content/Context;Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/source/InputStreamSource;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/util/Util;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/shockwave/pdfium/PdfiumCore;->newDocument([BLjava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v0

    return-object v0
.end method
