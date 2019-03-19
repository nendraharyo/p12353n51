.class public Lcom/sun/pdfview/action/GoToAction;
.super Lcom/sun/pdfview/action/PDFAction;


# instance fields
.field private dest:Lcom/sun/pdfview/PDFDestination;


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/PDFDestination;)V
    .locals 1

    const-string v0, "GoTo"

    invoke-direct {p0, v0}, Lcom/sun/pdfview/action/PDFAction;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sun/pdfview/action/GoToAction;->dest:Lcom/sun/pdfview/PDFDestination;

    return-void
.end method

.method public constructor <init>(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;)V
    .locals 3

    const-string v0, "GoTo"

    invoke-direct {p0, v0}, Lcom/sun/pdfview/action/PDFAction;-><init>(Ljava/lang/String;)V

    const-string v0, "D"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No destination in GoTo action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0, p2}, Lcom/sun/pdfview/PDFDestination;->getDestination(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/PDFDestination;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/action/GoToAction;->dest:Lcom/sun/pdfview/PDFDestination;

    return-void
.end method


# virtual methods
.method public getDestination()Lcom/sun/pdfview/PDFDestination;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/action/GoToAction;->dest:Lcom/sun/pdfview/PDFDestination;

    return-object v0
.end method
