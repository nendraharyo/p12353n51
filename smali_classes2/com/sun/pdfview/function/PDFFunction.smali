.class public abstract Lcom/sun/pdfview/function/PDFFunction;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_0:I = 0x0

.field public static final TYPE_2:I = 0x2

.field public static final TYPE_3:I = 0x3

.field public static final TYPE_4:I = 0x4


# instance fields
.field private domain:[F

.field private range:[F

.field private type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/pdfview/function/PDFFunction;->type:I

    return-void
.end method

.method public static getFunction(Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/function/PDFFunction;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v1

    check-cast v0, [F

    check-cast v1, [F

    const-string v0, "FunctionType"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "No FunctionType specified in function!"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v3

    const-string v0, "Domain"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "No Domain specified in function!"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    array-length v0, v4

    new-array v5, v0, [F

    move v0, v2

    :goto_0
    array-length v6, v4

    if-lt v0, v6, :cond_3

    const-string v0, "Range"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    array-length v1, v4

    new-array v1, v1, [F

    :goto_1
    array-length v6, v4

    if-lt v2, v6, :cond_4

    :cond_2
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported function type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aget-object v6, v4, v0

    invoke-virtual {v6}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    aget-object v6, v4, v2

    invoke-virtual {v6}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v6

    aput v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_1
    if-nez v0, :cond_5

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "No Range specified in Type 0 Function!"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/sun/pdfview/function/FunctionType0;

    invoke-direct {v0}, Lcom/sun/pdfview/function/FunctionType0;-><init>()V

    :goto_2
    invoke-virtual {v0, v5}, Lcom/sun/pdfview/function/PDFFunction;->setDomain([F)V

    if-eqz v1, :cond_6

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/function/PDFFunction;->setRange([F)V

    :cond_6
    invoke-virtual {v0, p0}, Lcom/sun/pdfview/function/PDFFunction;->parse(Lcom/sun/pdfview/PDFObject;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/sun/pdfview/function/FunctionType2;

    invoke-direct {v0}, Lcom/sun/pdfview/function/FunctionType2;-><init>()V

    goto :goto_2

    :pswitch_3
    new-instance v0, Lcom/sun/pdfview/function/FunctionType3;

    invoke-direct {v0}, Lcom/sun/pdfview/function/FunctionType3;-><init>()V

    goto :goto_2

    :pswitch_4
    if-nez v0, :cond_7

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "No Range specified in Type 4 Function!"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/sun/pdfview/function/FunctionType4;

    invoke-direct {v0}, Lcom/sun/pdfview/function/FunctionType4;-><init>()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public calculate([F)[F
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/pdfview/function/PDFFunction;->getNumOutputs()I

    move-result v0

    new-array v0, v0, [F

    invoke-virtual {p0, p1, v1, v0, v1}, Lcom/sun/pdfview/function/PDFFunction;->calculate([FI[FI)[F

    return-object v0
.end method

.method public calculate([FI[FI)[F
    .locals 4

    const/4 v1, 0x0

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sun/pdfview/function/PDFFunction;->getNumInputs()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong number of inputs to function!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/function/PDFFunction;->range:[F

    if-eqz v0, :cond_1

    array-length v0, p3

    sub-int/2addr v0, p4

    invoke-virtual {p0}, Lcom/sun/pdfview/function/PDFFunction;->getNumOutputs()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong number of outputs for function!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sun/pdfview/function/PDFFunction;->doFunction([FI[FI)V

    :goto_1
    iget-object v0, p0, Lcom/sun/pdfview/function/PDFFunction;->range:[F

    if-eqz v0, :cond_2

    array-length v0, p3

    if-lt v1, v0, :cond_4

    :cond_2
    return-object p3

    :cond_3
    aget v2, p1, v0

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/function/PDFFunction;->getDomain(I)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    aput v2, p1, v0

    aget v2, p1, v0

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/function/PDFFunction;->getDomain(I)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    aget v0, p3, v1

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/function/PDFFunction;->getRange(I)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aput v0, p3, v1

    aget v0, p3, v1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/function/PDFFunction;->getRange(I)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected abstract doFunction([FI[FI)V
.end method

.method protected getDomain(I)F
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/PDFFunction;->domain:[F

    aget v0, v0, p1

    return v0
.end method

.method public getNumInputs()I
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/PDFFunction;->domain:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getNumOutputs()I
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/PDFFunction;->range:[F

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/function/PDFFunction;->range:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method protected getRange(I)F
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/PDFFunction;->range:[F

    if-nez v0, :cond_1

    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/function/PDFFunction;->range:[F

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/function/PDFFunction;->type:I

    return v0
.end method

.method protected abstract parse(Lcom/sun/pdfview/PDFObject;)V
.end method

.method protected setDomain([F)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/function/PDFFunction;->domain:[F

    return-void
.end method

.method protected setRange([F)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/function/PDFFunction;->range:[F

    return-void
.end method
