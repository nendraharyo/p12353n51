.class public Lcom/sun/pdfview/font/Type3Font;
.super Lcom/sun/pdfview/font/PDFFont;


# instance fields
.field at:Landroid/graphics/Matrix;

.field bbox:Landroid/graphics/RectF;

.field charProcs:Ljava/util/Map;

.field firstChar:I

.field lastChar:I

.field rsrc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/pdfview/PDFObject;",
            ">;"
        }
    .end annotation
.end field

.field widths:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Ljava/util/HashMap;Lcom/sun/pdfview/font/PDFFontDescriptor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sun/pdfview/PDFObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/pdfview/PDFObject;",
            ">;",
            "Lcom/sun/pdfview/font/PDFFontDescriptor;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p4}, Lcom/sun/pdfview/font/PDFFont;-><init>(Ljava/lang/String;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/pdfview/font/Type3Font;->rsrc:Ljava/util/HashMap;

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/font/Type3Font;->rsrc:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v1, "FontMatrix"

    invoke-virtual {p2, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    new-array v3, v8, [F

    move v1, v0

    :goto_0
    if-lt v1, v8, :cond_3

    invoke-static {v3}, Lc/a/a/e/b;->a([F)Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/pdfview/font/Type3Font;->at:Landroid/graphics/Matrix;

    aget v1, v3, v0

    aget v2, v3, v5

    add-float/2addr v1, v2

    const-string v1, "Resources"

    invoke-virtual {p2, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sun/pdfview/font/Type3Font;->rsrc:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    const-string v1, "CharProcs"

    invoke-virtual {p2, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/pdfview/font/Type3Font;->charProcs:Ljava/util/Map;

    const-string v1, "FontBBox"

    invoke-virtual {p2, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    new-array v3, v6, [F

    move v1, v0

    :goto_1
    if-lt v1, v6, :cond_4

    new-instance v1, Landroid/graphics/RectF;

    aget v2, v3, v0

    aget v4, v3, v7

    aget v5, v3, v5

    aget v6, v3, v0

    sub-float/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v3, v6

    aget v3, v3, v7

    sub-float v3, v6, v3

    invoke-direct {v1, v2, v4, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sun/pdfview/font/Type3Font;->bbox:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sun/pdfview/font/Type3Font;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/pdfview/font/Type3Font;->bbox:Landroid/graphics/RectF;

    :cond_2
    const-string v1, "Widths"

    invoke-virtual {p2, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sun/pdfview/font/Type3Font;->widths:[F

    :goto_2
    array-length v2, v1

    if-lt v0, v2, :cond_5

    const-string v0, "FirstChar"

    invoke-virtual {p2, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/Type3Font;->firstChar:I

    const-string v0, "LastChar"

    invoke-virtual {p2, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/Type3Font;->lastChar:I

    return-void

    :cond_3
    invoke-virtual {v2, v1}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    aget-object v4, v2, v1

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/sun/pdfview/font/Type3Font;->widths:[F

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getFirstChar()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/Type3Font;->firstChar:I

    return v0
.end method

.method protected getGlyph(CLjava/lang/String;)Lcom/sun/pdfview/font/PDFGlyph;
    .locals 5

    const/4 v3, 0x0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Glyph name required for Type3 font!Source character: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/font/Type3Font;->charProcs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/pdfview/font/PDFGlyph;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sun/pdfview/font/PDFGlyph;-><init>(CLjava/lang/String;Landroid/graphics/Path;Landroid/graphics/PointF;)V

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/sun/pdfview/PDFPage;

    iget-object v2, p0, Lcom/sun/pdfview/font/Type3Font;->bbox:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/pdfview/PDFPage;-><init>(Landroid/graphics/RectF;I)V

    iget-object v2, p0, Lcom/sun/pdfview/font/Type3Font;->at:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/PDFPage;->addXform(Landroid/graphics/Matrix;)V

    new-instance v2, Lcom/sun/pdfview/PDFParser;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v0

    iget-object v3, p0, Lcom/sun/pdfview/font/Type3Font;->rsrc:Ljava/util/HashMap;

    invoke-direct {v2, v1, v0, v3}, Lcom/sun/pdfview/PDFParser;-><init>(Lcom/sun/pdfview/PDFPage;[BLjava/util/HashMap;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/sun/pdfview/PDFParser;->go(Z)V

    iget-object v0, p0, Lcom/sun/pdfview/font/Type3Font;->widths:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type3Font;->firstChar:I

    sub-int v2, p1, v2

    aget v0, v0, v2

    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v3, 0x0

    iget v4, v2, Landroid/graphics/PointF;->x:F

    aput v4, v0, v3

    const/4 v3, 0x1

    iget v4, v2, Landroid/graphics/PointF;->y:F

    aput v4, v0, v3

    iget-object v3, p0, Lcom/sun/pdfview/font/Type3Font;->at:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v3, 0x0

    aget v3, v0, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x1

    aget v0, v0, v3

    iput v0, v2, Landroid/graphics/PointF;->y:F

    new-instance v0, Lcom/sun/pdfview/font/PDFGlyph;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sun/pdfview/font/PDFGlyph;-><init>(CLjava/lang/String;Lcom/sun/pdfview/PDFPage;Landroid/graphics/PointF;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException in Type3 font: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastChar()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/Type3Font;->lastChar:I

    return v0
.end method
