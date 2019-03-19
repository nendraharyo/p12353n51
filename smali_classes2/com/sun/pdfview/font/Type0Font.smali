.class public Lcom/sun/pdfview/font/Type0Font;
.super Lcom/sun/pdfview/font/PDFFont;


# instance fields
.field fonts:[Lcom/sun/pdfview/font/PDFFont;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V
    .locals 5

    invoke-direct {p0, p1, p3}, Lcom/sun/pdfview/font/PDFFont;-><init>(Ljava/lang/String;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    const-string v0, "DescendantFonts"

    invoke-virtual {p2, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    array-length v0, v1

    new-array v0, v0, [Lcom/sun/pdfview/font/PDFFont;

    iput-object v0, p0, Lcom/sun/pdfview/font/Type0Font;->fonts:[Lcom/sun/pdfview/font/PDFFont;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/sun/pdfview/font/Type0Font;->fonts:[Lcom/sun/pdfview/font/PDFFont;

    aget-object v3, v1, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sun/pdfview/font/PDFFont;->getFont(Lcom/sun/pdfview/PDFObject;Ljava/util/HashMap;)Lcom/sun/pdfview/font/PDFFont;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDescendantFont(I)Lcom/sun/pdfview/font/PDFFont;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/Type0Font;->fonts:[Lcom/sun/pdfview/font/PDFFont;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected getGlyph(CLjava/lang/String;)Lcom/sun/pdfview/font/PDFGlyph;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/Type0Font;->getDescendantFont(I)Lcom/sun/pdfview/font/PDFFont;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sun/pdfview/font/PDFFont;->getGlyph(CLjava/lang/String;)Lcom/sun/pdfview/font/PDFGlyph;

    move-result-object v0

    return-object v0
.end method
