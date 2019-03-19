.class Lcom/sun/pdfview/PDFXformCmd;
.super Lcom/sun/pdfview/PDFCmd;


# instance fields
.field mat:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/Matrix;)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/pdfview/PDFCmd;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null transform in PDFXformCmd"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sun/pdfview/PDFXformCmd;->mat:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/pdfview/PDFRenderer;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFXformCmd;->mat:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFRenderer;->transform(Landroid/graphics/Matrix;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "PDFXformCommand: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/sun/pdfview/PDFXformCmd;->mat:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lcom/sun/pdfview/PDFRenderer;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PDFXformCmd: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFXformCmd;->mat:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
