.class public Lcom/sun/pdfview/font/PDFFontDescriptor;
.super Ljava/lang/Object;


# static fields
.field public static final ALLCAP:I = 0x10000

.field public static final FIXED_PITCH:I = 0x1

.field public static final FORCEBOLD:I = 0x40000

.field public static final ITALIC:I = 0x40

.field public static final NONSYMBOLIC:I = 0x20

.field public static final SCRIPT:I = 0x8

.field public static final SERIF:I = 0x2

.field public static final SMALLCAP:I = 0x20000

.field public static final SYMBOLIC:I = 0x4


# instance fields
.field private ascent:I

.field private avgWidth:I

.field private capHeight:I

.field private charSet:Lcom/sun/pdfview/PDFObject;

.field private descent:I

.field private flags:I

.field private fontBBox:Landroid/graphics/RectF;

.field private fontFamily:Ljava/lang/String;

.field private fontFile:Lcom/sun/pdfview/PDFObject;

.field private fontFile2:Lcom/sun/pdfview/PDFObject;

.field private fontFile3:Lcom/sun/pdfview/PDFObject;

.field private fontName:Ljava/lang/String;

.field private fontStretch:Ljava/lang/String;

.field private fontWeight:I

.field private italicAngle:I

.field private leading:I

.field private maxWidth:I

.field private missingWidth:I

.field private stemH:I

.field private stemV:I

.field private xHeight:I


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/PDFObject;)V
    .locals 7

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->avgWidth:I

    iput v1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->leading:I

    iput v1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->maxWidth:I

    iput v1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->missingWidth:I

    iput v1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->stemH:I

    iput v1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->xHeight:I

    const-string v0, "Ascent"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setAscent(I)V

    const-string v0, "CapHeight"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setCapHeight(I)V

    const-string v0, "Descent"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setDescent(I)V

    const-string v0, "Flags"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setFlags(I)V

    const-string v0, "FontName"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setFontName(Ljava/lang/String;)V

    const-string v0, "ItalicAngle"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setItalicAngle(I)V

    const-string v0, "StemV"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setStemV(I)V

    const-string v0, "FontBBox"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    new-array v3, v5, [F

    move v0, v1

    :goto_0
    if-lt v0, v5, :cond_d

    new-instance v0, Landroid/graphics/RectF;

    aget v2, v3, v1

    aget v4, v3, v6

    const/4 v5, 0x2

    aget v5, v3, v5

    aget v1, v3, v1

    sub-float v1, v5, v1

    const/4 v5, 0x3

    aget v5, v3, v5

    aget v3, v3, v6

    sub-float v3, v5, v3

    invoke-direct {v0, v2, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setFontBBox(Landroid/graphics/RectF;)V

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "AvgWidth"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AvgWidth"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setAvgWidth(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "FontFile"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FontFile"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setFontFile(Lcom/sun/pdfview/PDFObject;)V

    :cond_1
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "FontFile2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FontFile2"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setFontFile2(Lcom/sun/pdfview/PDFObject;)V

    :cond_2
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "FontFile3"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FontFile3"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setFontFile3(Lcom/sun/pdfview/PDFObject;)V

    :cond_3
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "Leading"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Leading"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setLeading(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "MaxWidth"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MaxWidth"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setMaxWidth(I)V

    :cond_5
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "MissingWidth"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "MissingWidth"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setMissingWidth(I)V

    :cond_6
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "StemH"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "StemH"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setStemH(I)V

    :cond_7
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "XHeight"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "XHeight"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setXHeight(I)V

    :cond_8
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "CharSet"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "CharSet"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setCharSet(Lcom/sun/pdfview/PDFObject;)V

    :cond_9
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "FontFamily"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "FontFamily"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setFontFamily(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "FontWeight"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "FontWeight"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setFontWeight(I)V

    :cond_b
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "FontStretch"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "FontStretch"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setFontStretch(Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    aget-object v4, v2, v0

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->avgWidth:I

    iput v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->leading:I

    iput v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->maxWidth:I

    iput v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->missingWidth:I

    iput v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->stemH:I

    iput v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->xHeight:I

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/PDFFontDescriptor;->setFontName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAscent()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->ascent:I

    return v0
.end method

.method public getAvgWidth()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->avgWidth:I

    return v0
.end method

.method public getCapHeight()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->capHeight:I

    return v0
.end method

.method public getCharSet()Lcom/sun/pdfview/PDFObject;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->charSet:Lcom/sun/pdfview/PDFObject;

    return-object v0
.end method

.method public getDescent()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->descent:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->flags:I

    return v0
.end method

.method public getFontBBox()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontBBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontFile()Lcom/sun/pdfview/PDFObject;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontFile:Lcom/sun/pdfview/PDFObject;

    return-object v0
.end method

.method public getFontFile2()Lcom/sun/pdfview/PDFObject;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontFile2:Lcom/sun/pdfview/PDFObject;

    return-object v0
.end method

.method public getFontFile3()Lcom/sun/pdfview/PDFObject;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontFile3:Lcom/sun/pdfview/PDFObject;

    return-object v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontStretch()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontStretch:Ljava/lang/String;

    return-object v0
.end method

.method public getFontWeight()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontWeight:I

    return v0
.end method

.method public getItalicAngle()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->italicAngle:I

    return v0
.end method

.method public getLeading()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->leading:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->maxWidth:I

    return v0
.end method

.method public getMissingWidth()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->missingWidth:I

    return v0
.end method

.method public getStemH()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->stemH:I

    return v0
.end method

.method public getStemV()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->stemV:I

    return v0
.end method

.method public getXHeight()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->xHeight:I

    return v0
.end method

.method public setAscent(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->ascent:I

    return-void
.end method

.method public setAvgWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->avgWidth:I

    return-void
.end method

.method public setCapHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->capHeight:I

    return-void
.end method

.method public setCharSet(Lcom/sun/pdfview/PDFObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->charSet:Lcom/sun/pdfview/PDFObject;

    return-void
.end method

.method public setDescent(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->descent:I

    return-void
.end method

.method public setFlags(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->flags:I

    return-void
.end method

.method public setFontBBox(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontBBox:Landroid/graphics/RectF;

    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontFamily:Ljava/lang/String;

    return-void
.end method

.method public setFontFile(Lcom/sun/pdfview/PDFObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontFile:Lcom/sun/pdfview/PDFObject;

    return-void
.end method

.method public setFontFile2(Lcom/sun/pdfview/PDFObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontFile2:Lcom/sun/pdfview/PDFObject;

    return-void
.end method

.method public setFontFile3(Lcom/sun/pdfview/PDFObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontFile3:Lcom/sun/pdfview/PDFObject;

    return-void
.end method

.method public setFontName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontName:Ljava/lang/String;

    return-void
.end method

.method public setFontStretch(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontStretch:Ljava/lang/String;

    return-void
.end method

.method public setFontWeight(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->fontWeight:I

    return-void
.end method

.method public setItalicAngle(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->italicAngle:I

    return-void
.end method

.method public setLeading(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->leading:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->maxWidth:I

    return-void
.end method

.method public setMissingWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->missingWidth:I

    return-void
.end method

.method public setStemH(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->stemH:I

    return-void
.end method

.method public setStemV(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->stemV:I

    return-void
.end method

.method public setXHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/PDFFontDescriptor;->xHeight:I

    return-void
.end method
