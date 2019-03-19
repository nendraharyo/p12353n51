.class Lcom/sun/pdfview/PDFFillAlphaCmd;
.super Lcom/sun/pdfview/PDFCmd;


# instance fields
.field a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/pdfview/PDFCmd;-><init>()V

    iput p1, p0, Lcom/sun/pdfview/PDFFillAlphaCmd;->a:F

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/pdfview/PDFRenderer;)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
