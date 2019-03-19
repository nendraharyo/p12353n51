.class public Lcom/sun/pdfview/function/FunctionType3;
.super Lcom/sun/pdfview/function/PDFFunction;


# instance fields
.field private samples:[[I


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sun/pdfview/function/PDFFunction;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doFunction([FI[FI)V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType3;->getNumInputs()I

    move-result v0

    new-array v0, v0, [F

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType3;->getNumOutputs()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected parse(Lcom/sun/pdfview/PDFObject;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "Functions"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Functions required for function type 3!"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    array-length v0, v2

    new-array v3, v0, [I

    move v0, v1

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_1

    const-string v0, "Bounds"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Bounds required for function type 3!"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    array-length v0, v2

    new-array v3, v0, [I

    move v0, v1

    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_3

    const-string v0, "Encode"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Encode required for function type 3!"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [F

    :goto_2
    array-length v3, v0

    if-lt v1, v3, :cond_5

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Unsupported function type 3."

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
