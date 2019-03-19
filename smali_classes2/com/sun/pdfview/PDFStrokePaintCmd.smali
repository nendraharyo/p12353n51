.class Lcom/sun/pdfview/PDFStrokePaintCmd;
.super Lcom/sun/pdfview/PDFCmd;


# instance fields
.field p:Lcom/sun/pdfview/PDFPaint;


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/PDFPaint;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/pdfview/PDFCmd;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/PDFStrokePaintCmd;->p:Lcom/sun/pdfview/PDFPaint;

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/pdfview/PDFRenderer;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFStrokePaintCmd;->p:Lcom/sun/pdfview/PDFPaint;

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFRenderer;->setStrokePaint(Lcom/sun/pdfview/PDFPaint;)V

    const/4 v0, 0x0

    return-object v0
.end method
