.class public abstract Lcom/sun/pdfview/font/OutlineFont;
.super Lcom/sun/pdfview/font/PDFFont;


# instance fields
.field private firstChar:I

.field private lastChar:I

.field private widths:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V
    .locals 5

    const/4 v0, -0x1

    invoke-direct {p0, p1, p3}, Lcom/sun/pdfview/font/PDFFont;-><init>(Ljava/lang/String;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    iput v0, p0, Lcom/sun/pdfview/font/OutlineFont;->firstChar:I

    iput v0, p0, Lcom/sun/pdfview/font/OutlineFont;->lastChar:I

    const-string v0, "FirstChar"

    invoke-virtual {p2, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    const-string v1, "LastChar"

    invoke-virtual {p2, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    const-string v2, "Widths"

    invoke-virtual {p2, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/OutlineFont;->firstChar:I

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/OutlineFont;->lastChar:I

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    array-length v0, v1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sun/pdfview/font/OutlineFont;->widths:[F

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sun/pdfview/font/OutlineFont;->widths:[F

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v3

    invoke-virtual {p0}, Lcom/sun/pdfview/font/OutlineFont;->getDefaultWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCharCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/OutlineFont;->getLastChar()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/OutlineFont;->getFirstChar()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDefaultWidth()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getFirstChar()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/OutlineFont;->firstChar:I

    return v0
.end method

.method protected getGlyph(CLjava/lang/String;)Lcom/sun/pdfview/font/PDFGlyph;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sun/pdfview/font/OutlineFont;->getWidth(CLjava/lang/String;)F

    move-result v1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, v1}, Lcom/sun/pdfview/font/OutlineFont;->getOutline(Ljava/lang/String;F)Landroid/graphics/Path;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/sun/pdfview/font/OutlineFont;->getOutline(CF)Landroid/graphics/Path;

    move-result-object v0

    :cond_1
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Lcom/sun/pdfview/font/PDFGlyph;

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/sun/pdfview/font/PDFGlyph;-><init>(CLjava/lang/String;Landroid/graphics/Path;Landroid/graphics/PointF;)V

    return-object v1
.end method

.method public getLastChar()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/OutlineFont;->lastChar:I

    return v0
.end method

.method protected abstract getOutline(CF)Landroid/graphics/Path;
.end method

.method protected abstract getOutline(Ljava/lang/String;F)Landroid/graphics/Path;
.end method

.method public getWidth(CLjava/lang/String;)F
    .locals 2

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0}, Lcom/sun/pdfview/font/OutlineFont;->getFirstChar()I

    move-result v1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/font/OutlineFont;->widths:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/font/OutlineFont;->widths:[F

    array-length v1, v1

    if-lt v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/sun/pdfview/font/OutlineFont;->getDescriptor()Lcom/sun/pdfview/font/PDFFontDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/pdfview/font/OutlineFont;->getDescriptor()Lcom/sun/pdfview/font/PDFFontDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getMissingWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sun/pdfview/font/OutlineFont;->widths:[F

    aget v0, v1, v0

    goto :goto_0
.end method
