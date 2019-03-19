.class public Lcom/sun/pdfview/function/FunctionType0;
.super Lcom/sun/pdfview/function/PDFFunction;


# static fields
.field protected static final CUBIC_INTERPOLATION:I = 0x3

.field protected static final LINEAR_INTERPOLATION:I = 0x1


# instance fields
.field private bitsPerSample:I

.field private decode:[F

.field private encode:[F

.field private order:I

.field private samples:[[I

.field private size:[I


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/function/PDFFunction;-><init>(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/pdfview/function/FunctionType0;->order:I

    return-void
.end method

.method private getSample([FII)F
    .locals 4

    array-length v0, p1

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v1, p3}, Lcom/sun/pdfview/function/FunctionType0;->getSample([II)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, p2

    if-nez v2, :cond_1

    aget v2, p1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v2, p1, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, v1, v0

    goto :goto_1
.end method

.method public static interpolate(FFFFF)F
    .locals 2

    sub-float v0, p4, p3

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    sub-float v1, p0, p1

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method

.method private multicubicInterpolate([FI)F
    .locals 2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Cubic interpolation not supported!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/function/FunctionType0;->multilinearInterpolate([FI)F

    move-result v0

    return v0
.end method

.method private multilinearInterpolate([FI)F
    .locals 11

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v1, 0x0

    array-length v0, p1

    new-array v9, v0, [F

    move v0, v1

    :goto_0
    array-length v2, v9

    if-lt v0, v2, :cond_0

    invoke-direct {p0, p1, v1, p2}, Lcom/sun/pdfview/function/FunctionType0;->getSample([FII)F

    move-result v0

    move v2, v0

    move v3, v0

    move v4, v1

    move v0, v1

    :goto_1
    array-length v5, v9

    if-lt v0, v5, :cond_1

    return v3

    :cond_0
    aget v2, p1, v0

    float-to-double v2, v2

    aget v4, p1, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    aput v2, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v5, v1

    move v6, v7

    move v8, v1

    :goto_2
    array-length v10, v9

    if-lt v5, v10, :cond_2

    const/4 v5, 0x1

    shl-int/2addr v5, v8

    or-int/2addr v4, v5

    invoke-direct {p0, p1, v4, p2}, Lcom/sun/pdfview/function/FunctionType0;->getSample([FII)F

    move-result v5

    aget v6, v9, v8

    sub-float v2, v5, v2

    mul-float/2addr v2, v6

    add-float/2addr v2, v3

    aput v7, v9, v8

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    aget v10, v9, v5

    cmpl-float v10, v10, v6

    if-lez v10, :cond_3

    aget v6, v9, v5

    move v8, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private readSamples(Lc/a/a/b/b;)[[I
    .locals 13

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType0;->getNumInputs()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType0;->getNumOutputs()I

    move-result v0

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType0;->getNumInputs()I

    move-result v5

    if-lt v1, v5, :cond_1

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/pdfview/function/FunctionType0;->getSize(I)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p0, v1}, Lcom/sun/pdfview/function/FunctionType0;->getSize(I)I

    move-result v6

    if-lt v5, v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    move v12, v6

    move v6, v4

    move v4, v3

    move v3, v12

    :goto_3
    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType0;->getNumOutputs()I

    move-result v7

    if-lt v3, v7, :cond_3

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v3

    move v3, v4

    move v4, v6

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType0;->getBitsPerSample()I

    move-result v8

    invoke-virtual {p1, v4}, Lc/a/a/b/b;->b(I)B

    move-result v7

    move v12, v8

    move v8, v9

    move v9, v12

    :goto_4
    if-gtz v9, :cond_4

    aget-object v7, v0, v2

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    rsub-int/lit8 v10, v6, 0x7

    shr-int v10, v7, v10

    and-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v9, -0x1

    shl-int/2addr v10, v11

    or-int/2addr v10, v8

    add-int/lit8 v6, v6, 0x1

    const/16 v8, 0x8

    if-ne v6, v8, :cond_6

    const/4 v8, 0x0

    add-int/lit8 v6, v4, 0x1

    const/4 v4, 0x1

    if-le v9, v4, :cond_5

    invoke-virtual {p1, v6}, Lc/a/a/b/b;->b(I)B

    move-result v4

    move v7, v8

    :goto_5
    add-int/lit8 v8, v9, -0x1

    move v9, v8

    move v8, v10

    move v12, v4

    move v4, v6

    move v6, v7

    move v7, v12

    goto :goto_4

    :cond_5
    move v4, v7

    move v7, v8

    goto :goto_5

    :cond_6
    move v12, v7

    move v7, v6

    move v6, v4

    move v4, v12

    goto :goto_5
.end method


# virtual methods
.method protected doFunction([FI[FI)V
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType0;->getNumInputs()I

    move-result v0

    new-array v2, v0, [F

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType0;->getNumInputs()I

    move-result v3

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType0;->getNumOutputs()I

    move-result v3

    if-lt v0, v3, :cond_1

    :goto_2
    array-length v0, p3

    if-lt v1, v0, :cond_3

    return-void

    :cond_0
    add-int v3, v0, p2

    aget v3, p1, v3

    mul-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Lcom/sun/pdfview/function/FunctionType0;->getDomain(I)F

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sun/pdfview/function/FunctionType0;->getDomain(I)F

    move-result v5

    mul-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Lcom/sun/pdfview/function/FunctionType0;->getEncode(I)F

    move-result v6

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v7}, Lcom/sun/pdfview/function/FunctionType0;->getEncode(I)F

    move-result v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/sun/pdfview/function/FunctionType0;->interpolate(FFFFF)F

    move-result v3

    aput v3, v2, v0

    aget v3, v2, v0

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    aput v3, v2, v0

    aget v3, v2, v0

    iget-object v4, p0, Lcom/sun/pdfview/function/FunctionType0;->size:[I

    aget v4, v4, v0

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType0;->getOrder()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    add-int v3, v0, p4

    invoke-direct {p0, v2, v0}, Lcom/sun/pdfview/function/FunctionType0;->multilinearInterpolate([FI)F

    move-result v4

    aput v4, p3, v3

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int v3, v0, p4

    invoke-direct {p0, v2, v0}, Lcom/sun/pdfview/function/FunctionType0;->multicubicInterpolate([FI)F

    move-result v4

    aput v4, p3, v3

    goto :goto_3

    :cond_3
    add-int v0, v1, p4

    add-int v2, v1, p4

    aget v2, p3, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/sun/pdfview/function/FunctionType0;->getBitsPerSample()I

    move-result v3

    int-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Lcom/sun/pdfview/function/FunctionType0;->getDecode(I)F

    move-result v4

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sun/pdfview/function/FunctionType0;->getDecode(I)F

    move-result v5

    invoke-static {v2, v8, v3, v4, v5}, Lcom/sun/pdfview/function/FunctionType0;->interpolate(FFFFF)F

    move-result v2

    aput v2, p3, v0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method protected getBitsPerSample()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/function/FunctionType0;->bitsPerSample:I

    return v0
.end method

.method protected getDecode(I)F
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType0;->decode:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType0;->decode:[F

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/pdfview/function/FunctionType0;->getRange(I)F

    move-result v0

    goto :goto_0
.end method

.method protected getEncode(I)F
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType0;->encode:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType0;->encode:[F

    aget v0, v0, p1

    :goto_0
    return v0

    :cond_0
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    div-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/function/FunctionType0;->getSize(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    goto :goto_0
.end method

.method protected getOrder()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/function/FunctionType0;->order:I

    return v0
.end method

.method protected getSample([II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType0;->samples:[[I

    aget-object v0, v0, v1

    aget v0, v0, p2

    return v0

    :cond_0
    aget v3, p1, v0

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/function/FunctionType0;->getSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType0;->size:[I

    aget v0, v0, p1

    return v0
.end method

.method protected parse(Lcom/sun/pdfview/PDFObject;)V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "Size"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Size required for function type 0!"

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

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/function/FunctionType0;->setSize([I)V

    const-string v0, "BitsPerSample"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "BitsPerSample required for function type 0!"

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
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/function/FunctionType0;->setBitsPerSample(I)V

    const-string v0, "Order"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/function/FunctionType0;->setOrder(I)V

    :cond_3
    const-string v0, "Encode"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    array-length v0, v2

    new-array v3, v0, [F

    move v0, v1

    :goto_1
    array-length v4, v2

    if-lt v0, v4, :cond_6

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/function/FunctionType0;->setEncode([F)V

    :cond_4
    const-string v0, "Decode"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    array-length v2, v0

    new-array v2, v2, [F

    :goto_2
    array-length v3, v0

    if-lt v1, v3, :cond_7

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/function/FunctionType0;->setDecode([F)V

    :cond_5
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getStreamBuffer()Lc/a/a/b/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/function/FunctionType0;->readSamples(Lc/a/a/b/b;)[[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/function/FunctionType0;->setSamples([[I)V

    return-void

    :cond_6
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected setBitsPerSample(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/function/FunctionType0;->bitsPerSample:I

    return-void
.end method

.method protected setDecode([F)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/function/FunctionType0;->decode:[F

    return-void
.end method

.method protected setEncode([F)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/function/FunctionType0;->encode:[F

    return-void
.end method

.method protected setOrder(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/function/FunctionType0;->order:I

    return-void
.end method

.method protected setSamples([[I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/function/FunctionType0;->samples:[[I

    return-void
.end method

.method protected setSize([I)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/function/FunctionType0;->size:[I

    return-void
.end method
