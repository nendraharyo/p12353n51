.class public Lcom/sun/pdfview/colorspace/IndexedColor;
.super Lcom/sun/pdfview/colorspace/PDFColorSpace;


# instance fields
.field count:I

.field table:[I


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/colorspace/PDFColorSpace;ILcom/sun/pdfview/PDFObject;)V
    .locals 9

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;-><init>()V

    add-int/lit8 v5, p2, 0x1

    iput v5, p0, Lcom/sun/pdfview/colorspace/IndexedColor;->count:I

    invoke-virtual {p3}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v6

    invoke-virtual {p1}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getNumComponents()I

    move-result v0

    array-length v2, v6

    div-int/2addr v2, v0

    if-ge v2, v5, :cond_0

    :cond_0
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/sun/pdfview/colorspace/IndexedColor;->table:[I

    new-array v7, v0, [F

    move v4, v1

    move v0, v1

    :goto_0
    if-lt v4, v5, :cond_1

    return-void

    :cond_1
    move v2, v0

    move v0, v1

    :goto_1
    array-length v3, v7

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/colorspace/IndexedColor;->table:[I

    invoke-virtual {p1, v7}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->toColor([F)I

    move-result v3

    aput v3, v0, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_0

    :cond_2
    array-length v3, v6

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v6, v2

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v2, v8

    aput v2, v7, v0

    move v2, v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v7, v0

    goto :goto_2
.end method

.method public constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;-><init>()V

    array-length v0, p1

    iput v0, p0, Lcom/sun/pdfview/colorspace/IndexedColor;->count:I

    iput-object p1, p0, Lcom/sun/pdfview/colorspace/IndexedColor;->table:[I

    return-void
.end method


# virtual methods
.method public getColorTable()[I
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/colorspace/IndexedColor;->table:[I

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/colorspace/IndexedColor;->count:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "I"

    return-object v0
.end method

.method public getNumComponents()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public toColor([F)I
    .locals 3

    iget-object v0, p0, Lcom/sun/pdfview/colorspace/IndexedColor;->table:[I

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    aget v2, p1, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    aget v0, v0, v1

    return v0
.end method

.method public toColor([I)I
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/colorspace/IndexedColor;->table:[I

    const/4 v1, 0x0

    aget v1, p1, v1

    aget v0, v0, v1

    return v0
.end method
