.class public Lcom/sun/pdfview/OutlineNode;
.super La/a/a;


# instance fields
.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, La/a/a;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/OutlineNode;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/sun/pdfview/action/PDFAction;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/pdfview/OutlineNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/action/PDFAction;

    return-object v0
.end method

.method public setAction(Lcom/sun/pdfview/action/PDFAction;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/OutlineNode;->setUserObject(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/OutlineNode;->title:Ljava/lang/String;

    return-object v0
.end method
