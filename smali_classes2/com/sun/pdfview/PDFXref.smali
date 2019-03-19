.class public Lcom/sun/pdfview/PDFXref;
.super Ljava/lang/Object;


# instance fields
.field private compressed:Z

.field private generation:I

.field private id:I

.field private reference:Lc/a/a/d/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/d/b",
            "<",
            "Lcom/sun/pdfview/PDFObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/pdfview/PDFXref;->reference:Lc/a/a/d/b;

    iput p1, p0, Lcom/sun/pdfview/PDFXref;->id:I

    iput p2, p0, Lcom/sun/pdfview/PDFXref;->generation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/pdfview/PDFXref;->compressed:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/pdfview/PDFXref;->reference:Lc/a/a/d/b;

    iput p1, p0, Lcom/sun/pdfview/PDFXref;->id:I

    iput p2, p0, Lcom/sun/pdfview/PDFXref;->generation:I

    iput-boolean p3, p0, Lcom/sun/pdfview/PDFXref;->compressed:Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/pdfview/PDFXref;->reference:Lc/a/a/d/b;

    if-nez p1, :cond_0

    iput v1, p0, Lcom/sun/pdfview/PDFXref;->id:I

    iput v1, p0, Lcom/sun/pdfview/PDFXref;->generation:I

    :goto_0
    iput-boolean v3, p0, Lcom/sun/pdfview/PDFXref;->compressed:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/PDFXref;->id:I

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    const/4 v2, 0x5

    invoke-direct {v0, p1, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/PDFXref;->generation:I

    goto :goto_0
.end method


# virtual methods
.method public getCompressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/pdfview/PDFXref;->compressed:Z

    return v0
.end method

.method public getFilePos()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFXref;->id:I

    return v0
.end method

.method public getGeneration()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFXref;->generation:I

    return v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFXref;->id:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFXref;->generation:I

    return v0
.end method

.method public getObject()Lcom/sun/pdfview/PDFObject;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFXref;->reference:Lc/a/a/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFXref;->reference:Lc/a/a/d/b;

    invoke-virtual {v0}, Lc/a/a/d/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setObject(Lcom/sun/pdfview/PDFObject;)V
    .locals 1

    new-instance v0, Lc/a/a/d/b;

    invoke-direct {v0, p1}, Lc/a/a/d/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/pdfview/PDFXref;->reference:Lc/a/a/d/b;

    return-void
.end method
