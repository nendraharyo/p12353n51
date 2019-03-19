.class public Lcom/sun/pdfview/font/CIDFontType2;
.super Lcom/sun/pdfview/font/TTFFont;


# instance fields
.field private cidToGidMap:Lc/a/a/b/b;

.field private defaultWidth:I

.field private defaultWidthVertical:I

.field private widths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private widthsVertical:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/pdfview/font/TTFFont;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    iput-object v1, p0, Lcom/sun/pdfview/font/CIDFontType2;->widths:Ljava/util/Map;

    iput-object v1, p0, Lcom/sun/pdfview/font/CIDFontType2;->widthsVertical:Ljava/util/Map;

    iput v0, p0, Lcom/sun/pdfview/font/CIDFontType2;->defaultWidth:I

    iput v0, p0, Lcom/sun/pdfview/font/CIDFontType2;->defaultWidthVertical:I

    invoke-direct {p0, p2}, Lcom/sun/pdfview/font/CIDFontType2;->parseWidths(Lcom/sun/pdfview/PDFObject;)V

    const-string v0, "CIDSystemInfo"

    invoke-virtual {p2, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    const-string v0, "CIDToGIDMap"

    invoke-virtual {p2, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStreamBuffer()Lc/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/CIDFontType2;->cidToGidMap:Lc/a/a/b/b;

    :cond_0
    return-void
.end method

.method private parseWidths(Lcom/sun/pdfview/PDFObject;)V
    .locals 14

    const/4 v13, 0x5

    const/4 v12, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const-string v0, "DW"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/CIDFontType2;->defaultWidth:I

    :cond_0
    const-string v0, "W"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sun/pdfview/font/CIDFontType2;->widths:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v6

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_0
    array-length v7, v6

    if-lt v0, v7, :cond_4

    :cond_1
    const-string v0, "DW2"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/CIDFontType2;->defaultWidthVertical:I

    :cond_2
    const-string v0, "W2"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sun/pdfview/font/CIDFontType2;->widthsVertical:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v6

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_1
    array-length v7, v6

    if-lt v0, v7, :cond_a

    :cond_3
    return-void

    :cond_4
    if-nez v4, :cond_5

    aget-object v3, v6, v0

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    if-ne v4, v12, :cond_8

    aget-object v7, v6, v0

    invoke-virtual {v7}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v7

    if-ne v7, v13, :cond_7

    aget-object v4, v6, v0

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v7

    move v4, v1

    :goto_3
    array-length v8, v7

    if-lt v4, v8, :cond_6

    move v4, v5

    goto :goto_2

    :cond_6
    new-instance v8, Ljava/lang/Character;

    add-int v9, v4, v3

    int-to-char v9, v9

    invoke-direct {v8, v9}, Ljava/lang/Character;-><init>(C)V

    aget-object v9, v7, v4

    invoke-virtual {v9}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sun/pdfview/font/CIDFontType2;->widths:Ljava/util/Map;

    new-instance v11, Ljava/lang/Float;

    invoke-direct {v11, v9}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v10, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    aget-object v2, v6, v0

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v2

    goto :goto_2

    :cond_8
    aget-object v4, v6, v0

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v7

    move v4, v3

    :goto_4
    if-le v4, v2, :cond_9

    move v4, v5

    goto :goto_2

    :cond_9
    iget-object v8, p0, Lcom/sun/pdfview/font/CIDFontType2;->widths:Ljava/util/Map;

    new-instance v9, Ljava/lang/Character;

    int-to-char v10, v4

    invoke-direct {v9, v10}, Ljava/lang/Character;-><init>(C)V

    new-instance v10, Ljava/lang/Float;

    int-to-float v11, v7

    invoke-direct {v10, v11}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    if-nez v4, :cond_b

    aget-object v3, v6, v0

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v3

    :goto_5
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    if-ne v4, v12, :cond_e

    aget-object v7, v6, v0

    invoke-virtual {v7}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v7

    if-ne v7, v13, :cond_d

    aget-object v4, v6, v0

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v7

    move v4, v1

    :goto_6
    array-length v8, v7

    if-lt v4, v8, :cond_c

    move v4, v5

    goto :goto_5

    :cond_c
    new-instance v8, Ljava/lang/Character;

    add-int v9, v4, v3

    int-to-char v9, v9

    invoke-direct {v8, v9}, Ljava/lang/Character;-><init>(C)V

    aget-object v9, v7, v4

    invoke-virtual {v9}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sun/pdfview/font/CIDFontType2;->widthsVertical:Ljava/util/Map;

    new-instance v11, Ljava/lang/Float;

    invoke-direct {v11, v9}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v10, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_d
    aget-object v2, v6, v0

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v2

    goto :goto_5

    :cond_e
    aget-object v4, v6, v0

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v7

    move v4, v3

    :goto_7
    if-le v4, v2, :cond_f

    move v4, v5

    goto :goto_5

    :cond_f
    iget-object v8, p0, Lcom/sun/pdfview/font/CIDFontType2;->widthsVertical:Ljava/util/Map;

    new-instance v9, Ljava/lang/Character;

    int-to-char v10, v4

    invoke-direct {v9, v10}, Ljava/lang/Character;-><init>(C)V

    new-instance v10, Ljava/lang/Float;

    int-to-float v11, v7

    invoke-direct {v10, v11}, Ljava/lang/Float;-><init>(F)V

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7
.end method


# virtual methods
.method public getDefaultWidth()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/CIDFontType2;->defaultWidth:I

    return v0
.end method

.method public getDefaultWidthVertical()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/CIDFontType2;->defaultWidthVertical:I

    return v0
.end method

.method protected declared-synchronized getOutline(CF)Landroid/graphics/Path;
    .locals 2

    monitor-enter p0

    const v0, 0xffff

    and-int/2addr v0, p1

    :try_start_0
    iget-object v1, p0, Lcom/sun/pdfview/font/CIDFontType2;->cidToGidMap:Lc/a/a/b/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/font/CIDFontType2;->cidToGidMap:Lc/a/a/b/b;

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Lc/a/a/b/b;->e(I)C

    move-result v0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/sun/pdfview/font/CIDFontType2;->getOutline(IF)Landroid/graphics/Path;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWidth(CLjava/lang/String;)F
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sun/pdfview/font/CIDFontType2;->widths:Ljava/util/Map;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/font/CIDFontType2;->widths:Ljava/util/Map;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/CIDFontType2;->getDefaultWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public getWidthVertical(CLjava/lang/String;)F
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sun/pdfview/font/CIDFontType2;->widthsVertical:Ljava/util/Map;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/font/CIDFontType2;->widthsVertical:Ljava/util/Map;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/CIDFontType2;->getDefaultWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method
