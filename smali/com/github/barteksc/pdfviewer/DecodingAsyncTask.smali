.class Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private context:Landroid/content/Context;

.field private docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

.field private firstPageIdx:I

.field private pageHeight:I

.field private pageWidth:I

.field private password:Ljava/lang/String;

.field private pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;


# direct methods
.method constructor <init>(Lcom/github/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;I)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    iput p5, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->firstPageIdx:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->password:Ljava/lang/String;

    iput-object p4, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {p3}, Lcom/github/barteksc/pdfviewer/PDFView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->docSource:Lcom/github/barteksc/pdfviewer/source/DocumentSource;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v3, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->password:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/github/barteksc/pdfviewer/source/DocumentSource;->createDocument(Landroid/content/Context;Lcom/shockwave/pdfium/PdfiumCore;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->firstPageIdx:I

    invoke-virtual {v0, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->openPage(Lcom/shockwave/pdfium/PdfDocument;I)J

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->firstPageIdx:I

    invoke-virtual {v0, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->getPageWidth(Lcom/shockwave/pdfium/PdfDocument;I)I

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pageWidth:I

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfiumCore:Lcom/shockwave/pdfium/PdfiumCore;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->firstPageIdx:I

    invoke-virtual {v0, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->getPageHeight(Lcom/shockwave/pdfium/PdfDocument;I)I

    move-result v0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pageHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->loadError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->cancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pdfDocument:Lcom/shockwave/pdfium/PdfDocument;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pageWidth:I

    iget v3, p0, Lcom/github/barteksc/pdfviewer/DecodingAsyncTask;->pageHeight:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/barteksc/pdfviewer/PDFView;->loadComplete(Lcom/shockwave/pdfium/PdfDocument;II)V

    goto :goto_0
.end method
