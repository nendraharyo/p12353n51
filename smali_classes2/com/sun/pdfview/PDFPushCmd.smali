.class Lcom/sun/pdfview/PDFPushCmd;
.super Lcom/sun/pdfview/PDFCmd;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/pdfview/PDFCmd;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/pdfview/PDFRenderer;)Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFRenderer;->push()V

    const/4 v0, 0x0

    return-object v0
.end method
