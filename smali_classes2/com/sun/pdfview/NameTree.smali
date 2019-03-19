.class public Lcom/sun/pdfview/NameTree;
.super Ljava/lang/Object;


# instance fields
.field private root:Lcom/sun/pdfview/PDFObject;


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/PDFObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/NameTree;->root:Lcom/sun/pdfview/PDFObject;

    return-void
.end method

.method private find(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;
    .locals 6

    const/4 v1, 0x0

    const-string v0, "Names"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sun/pdfview/NameTree;->findInArray([Lcom/sun/pdfview/PDFObject;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Kids"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    move v0, v1

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    aget-object v3, v2, v0

    const-string v4, "Limits"

    invoke-virtual {v3, v4}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_3

    aget-object v0, v2, v0

    invoke-direct {p0, v0, p2}, Lcom/sun/pdfview/NameTree;->find(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private findInArray([Lcom/sun/pdfview/PDFObject;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;
    .locals 4

    const/4 v1, 0x0

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    :cond_0
    :goto_0
    if-lt v0, v1, :cond_1

    if-ltz v1, :cond_1

    array-length v2, p1

    if-lt v0, v2, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    mul-int/lit8 v3, v2, 0x2

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-object v0, p1, v0

    goto :goto_1

    :cond_3
    if-lez v3, :cond_4

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_4
    if-gez v3, :cond_0

    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public find(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/NameTree;->root:Lcom/sun/pdfview/PDFObject;

    invoke-direct {p0, v0, p1}, Lcom/sun/pdfview/NameTree;->find(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    return-object v0
.end method
