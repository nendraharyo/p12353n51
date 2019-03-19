.class Lcom/sun/pdfview/PDFImageCmd;
.super Lcom/sun/pdfview/PDFCmd;


# instance fields
.field image:Lcom/sun/pdfview/PDFImage;


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/PDFImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/pdfview/PDFCmd;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/PDFImageCmd;->image:Lcom/sun/pdfview/PDFImage;

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/pdfview/PDFRenderer;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFImageCmd;->image:Lcom/sun/pdfview/PDFImage;

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFRenderer;->drawImage(Lcom/sun/pdfview/PDFImage;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method
