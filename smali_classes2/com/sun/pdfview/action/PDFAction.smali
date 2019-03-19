.class public Lcom/sun/pdfview/action/PDFAction;
.super Ljava/lang/Object;


# instance fields
.field private next:Lcom/sun/pdfview/PDFObject;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/action/PDFAction;->type:Ljava/lang/String;

    return-void
.end method

.method public static getAction(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/action/PDFAction;
    .locals 4

    const-string v0, "S"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No action type in object: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoTo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/sun/pdfview/action/GoToAction;

    invoke-direct {v0, p0, p1}, Lcom/sun/pdfview/action/GoToAction;-><init>(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;)V

    const-string v1, "Next"

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/action/PDFAction;->setNext(Lcom/sun/pdfview/PDFObject;)V

    :cond_1
    return-object v0

    :cond_2
    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Action type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getNext()Lcom/sun/pdfview/PDFObject;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/action/PDFAction;->next:Lcom/sun/pdfview/PDFObject;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/action/PDFAction;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setNext(Lcom/sun/pdfview/PDFObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/action/PDFAction;->next:Lcom/sun/pdfview/PDFObject;

    return-void
.end method
