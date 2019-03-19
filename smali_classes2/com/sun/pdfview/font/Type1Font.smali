.class public Lcom/sun/pdfview/font/Type1Font;
.super Lcom/sun/pdfview/font/OutlineFont;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/font/Type1Font$PSParser;
    }
.end annotation


# instance fields
.field at:Landroid/graphics/Matrix;

.field callcount:I

.field chr2name:[Ljava/lang/String;

.field lenIV:I

.field name2outline:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field name2width:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/pdfview/font/FlPoint;",
            ">;"
        }
    .end annotation
.end field

.field password:I

.field psLoc:I

.field psStack:[F

.field sloc:I

.field stack:[F

.field subrs:[[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/pdfview/font/OutlineFont;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    const/16 v0, 0x64

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->stack:[F

    iput v1, p0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->psStack:[F

    iput v1, p0, Lcom/sun/pdfview/font/Type1Font;->psLoc:I

    iput v1, p0, Lcom/sun/pdfview/font/Type1Font;->callcount:I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getFontFile()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getFontFile()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    const-string v1, "Length1"

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {p3}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getFontFile()Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    const-string v2, "Length2"

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v1

    invoke-virtual {p3}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getFontFile()Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/sun/pdfview/font/Type1Font;->parseFont([BII)V

    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/sun/pdfview/font/Type1Font;[BIIII)[B
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/sun/pdfview/font/Type1Font;->decrypt([BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private buildAccentChar(FFCCLandroid/graphics/Path;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p3, v4}, Lcom/sun/pdfview/font/Type1Font;->getWidth(CLjava/lang/String;)F

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/sun/pdfview/font/Type1Font;->getOutline(CF)Landroid/graphics/Path;

    move-result-object v0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1Font;->at:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v3, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :goto_0
    invoke-virtual {p0, p4, v4}, Lcom/sun/pdfview/font/Type1Font;->getWidth(CLjava/lang/String;)F

    move-result v0

    invoke-virtual {p0, p4, v0}, Lcom/sun/pdfview/font/Type1Font;->getOutline(CF)Landroid/graphics/Path;

    move-result-object v0

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2, v0}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1Font;->at:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    invoke-virtual {p5, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    invoke-virtual {p5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v3, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private decrypt([BIIII)[B
    .locals 7

    sub-int v0, p3, p2

    sub-int/2addr v0, p5

    if-gez v0, :cond_0

    const/4 p5, 0x0

    :cond_0
    sub-int v0, p3, p2

    sub-int/2addr v0, p5

    new-array v1, v0, [B

    const v2, 0xce6d

    const/16 v3, 0x58bf

    move v0, p2

    :goto_0
    if-lt v0, p3, :cond_1

    return-object v1

    :cond_1
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p4, 0x8

    xor-int/2addr v5, v4

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, p4

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    const v6, 0xffff

    and-int p4, v4, v6

    sub-int v4, v0, p2

    sub-int/2addr v4, p5

    if-ltz v4, :cond_2

    sub-int v4, v0, p2

    sub-int/2addr v4, p5

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findSlashName([BLjava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    aget-byte v2, p1, v0

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_2

    const/4 v3, 0x1

    move v2, v1

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_3

    move v2, v3

    :goto_2
    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private isASCII([BI)Z
    .locals 3

    move v0, p2

    :goto_0
    add-int/lit8 v1, p2, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x61

    if-lt v1, v2, :cond_3

    const/16 v2, 0x66

    if-le v1, v2, :cond_1

    :cond_3
    const/16 v2, 0x41

    if-lt v1, v2, :cond_4

    const/16 v2, 0x46

    if-le v1, v2, :cond_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private parse([BLandroid/graphics/Path;Lcom/sun/pdfview/font/FlPoint;Lcom/sun/pdfview/font/FlPoint;)V
    .locals 18

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v5, v0

    if-lt v4, v5, :cond_0

    :pswitch_0
    return-void

    :cond_0
    add-int/lit8 v11, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/font/Type1Font;->stack:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    aget-byte v6, p1, v11

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v7, v11, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/2addr v6, v7

    add-int/lit8 v7, v11, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    add-int/lit8 v7, v11, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v4, v5

    add-int/lit8 v4, v11, 0x4

    goto :goto_0

    :cond_1
    const/16 v5, 0xfb

    if-lt v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/pdfview/font/Type1Font;->stack:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    add-int/lit16 v4, v4, -0xfb

    shl-int/lit8 v4, v4, 0x8

    neg-int v4, v4

    aget-byte v7, p1, v11

    and-int/lit16 v7, v7, 0xff

    sub-int/2addr v4, v7

    add-int/lit8 v4, v4, -0x6c

    int-to-float v4, v4

    aput v4, v5, v6

    add-int/lit8 v4, v11, 0x1

    goto :goto_0

    :cond_2
    const/16 v5, 0xf7

    if-lt v4, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/pdfview/font/Type1Font;->stack:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    add-int/lit16 v4, v4, -0xf7

    shl-int/lit8 v4, v4, 0x8

    aget-byte v7, p1, v11

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x6c

    int-to-float v4, v4

    aput v4, v5, v6

    add-int/lit8 v4, v11, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x20

    if-lt v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/pdfview/font/Type1Font;->stack:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    add-int/lit16 v4, v4, -0x8b

    int-to-float v4, v4

    aput v4, v5, v6

    move v4, v11

    goto/16 :goto_0

    :cond_4
    packed-switch v4, :pswitch_data_0

    :goto_1
    move v4, v11

    goto/16 :goto_0

    :pswitch_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad command ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v11

    goto/16 :goto_0

    :pswitch_3
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad command ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v11

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v5, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v11

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v5, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v11

    goto/16 :goto_0

    :pswitch_7
    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v5, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v11

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v5, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v11

    goto/16 :goto_0

    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v16

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v17

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    add-float v5, v4, v17

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    add-float v6, v4, v16

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    add-float v4, v4, v17

    add-float v7, v4, v15

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    add-float v4, v4, v16

    add-float v8, v4, v14

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    add-float v4, v4, v17

    add-float/2addr v4, v15

    add-float v9, v4, v13

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    add-float v4, v4, v16

    add-float/2addr v4, v14

    add-float v10, v4, v12

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    add-float v5, v17, v15

    add-float/2addr v5, v13

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    add-float v5, v16, v14

    add-float/2addr v5, v12

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v11

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->close()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v11

    goto/16 :goto_0

    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/pdfview/font/Type1Font;->subrs:[[B

    aget-object v5, v5, v4

    if-nez v5, :cond_5

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "No subroutine #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v11

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sun/pdfview/font/Type1Font;->callcount:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/sun/pdfview/font/Type1Font;->callcount:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sun/pdfview/font/Type1Font;->callcount:I

    const/16 v6, 0xa

    if-le v5, v6, :cond_6

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Call stack too large"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sun/pdfview/font/Type1Font;->callcount:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->callcount:I

    move v4, v11

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/pdfview/font/Type1Font;->subrs:[[B

    aget-object v4, v5, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sun/pdfview/font/Type1Font;->parse([BLandroid/graphics/Path;Lcom/sun/pdfview/font/FlPoint;Lcom/sun/pdfview/font/FlPoint;)V

    goto :goto_2

    :pswitch_c
    add-int/lit8 v10, v11, 0x1

    aget-byte v4, p1, v11

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    float-to-int v4, v4

    int-to-char v7, v4

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    float-to-int v4, v4

    int-to-char v8, v4

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v5

    move-object/from16 v4, p0

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/sun/pdfview/font/Type1Font;->buildAccentChar(FFCCLandroid/graphics/Path;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v10

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x7

    if-ne v4, v5, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    move-object/from16 v0, p4

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    move-object/from16 v0, p4

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v10

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0xc

    if-ne v4, v5, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/pdfview/font/Type1Font;->stack:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    div-float v4, v5, v4

    aput v4, v6, v7

    move v4, v10

    goto/16 :goto_0

    :cond_9
    const/16 v5, 0x21

    if-ne v4, v5, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v5, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v10

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v10

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v10

    goto/16 :goto_0

    :cond_c
    const/4 v5, 0x2

    if-ne v4, v5, :cond_d

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v10

    goto/16 :goto_0

    :cond_d
    const/16 v5, 0x10

    if-ne v4, v5, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    float-to-int v4, v4

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v5

    float-to-int v5, v5

    packed-switch v4, :pswitch_data_1

    :pswitch_d
    const/4 v4, 0x0

    :goto_3
    if-gt v4, v5, :cond_e

    move v4, v10

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/font/Type1Font;->psStack:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sun/pdfview/font/Type1Font;->psLoc:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sun/pdfview/font/Type1Font;->psLoc:I

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v6

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/font/Type1Font;->psStack:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sun/pdfview/font/Type1Font;->psLoc:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sun/pdfview/font/Type1Font;->psLoc:I

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v6

    aput v6, v4, v5

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move v4, v10

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/font/Type1Font;->psStack:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sun/pdfview/font/Type1Font;->psLoc:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sun/pdfview/font/Type1Font;->psLoc:I

    const/high16 v6, 0x40400000    # 3.0f

    aput v6, v4, v5

    move v4, v10

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/pdfview/font/Type1Font;->psStack:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sun/pdfview/font/Type1Font;->psLoc:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/sun/pdfview/font/Type1Font;->psLoc:I

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_f
    const/16 v5, 0x11

    if-ne v4, v5, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/font/Type1Font;->stack:[F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/pdfview/font/Type1Font;->psStack:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sun/pdfview/font/Type1Font;->psLoc:I

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sun/pdfview/font/Type1Font;->psLoc:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->psLoc:I

    move v4, v10

    goto/16 :goto_0

    :cond_10
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad command ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_10
    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    move-object/from16 v0, p4

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    const/4 v4, 0x0

    move-object/from16 v0, p4

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v4

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v11

    goto/16 :goto_0

    :pswitch_11
    move v4, v11

    goto/16 :goto_0

    :pswitch_12
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad command ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_13
    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v5, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v11

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v5

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v5, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v11

    goto/16 :goto_0

    :pswitch_15
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bad command ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_16
    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v15

    move-object/from16 v0, p3

    iget v5, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    add-float v6, v4, v15

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    add-float v7, v4, v14

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    add-float/2addr v4, v15

    add-float v8, v4, v13

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    add-float/2addr v4, v14

    add-float v9, v4, v12

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    add-float/2addr v4, v15

    add-float v10, v4, v13

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    add-float v5, v14, v12

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    add-float v5, v15, v13

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    move v4, v11

    goto/16 :goto_0

    :pswitch_17
    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v14

    invoke-direct/range {p0 .. p0}, Lcom/sun/pdfview/font/Type1Font;->pop()F

    move-result v15

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    add-float v5, v4, v15

    move-object/from16 v0, p3

    iget v6, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    add-float/2addr v4, v15

    add-float v7, v4, v14

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    add-float v8, v4, v13

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    add-float/2addr v4, v15

    add-float v9, v4, v14

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    add-float/2addr v4, v13

    add-float v10, v4, v12

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    add-float v5, v15, v14

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    move-object/from16 v0, p3

    iget v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    add-float v5, v13, v12

    add-float/2addr v4, v5

    move-object/from16 v0, p3

    iput v4, v0, Lcom/sun/pdfview/font/FlPoint;->y:F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method private declared-synchronized parseGlyph([BLcom/sun/pdfview/font/FlPoint;Landroid/graphics/Matrix;)Landroid/graphics/Path;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    new-instance v1, Lcom/sun/pdfview/font/FlPoint;

    invoke-direct {v1}, Lcom/sun/pdfview/font/FlPoint;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sun/pdfview/font/Type1Font;->parse([BLandroid/graphics/Path;Lcom/sun/pdfview/font/FlPoint;Lcom/sun/pdfview/font/FlPoint;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private pop()F
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1Font;->sloc:I

    aget v0, v0, v1

    :cond_0
    return v0
.end method

.method private readASCII([BII)[B
    .locals 6

    const/4 v2, 0x0

    sub-int v0, p3, p2

    div-int/lit8 v0, v0, 0x2

    new-array v4, v0, [B

    move v3, v2

    :goto_0
    if-lt p2, p3, :cond_0

    return-object v4

    :cond_0
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    shl-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    move v0, v1

    move v1, v3

    :goto_2
    add-int/lit8 p2, p2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    const/16 v1, 0x66

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x41

    if-lt v0, v1, :cond_4

    const/16 v1, 0x46

    if-gt v0, v1, :cond_4

    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-byte v0, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v3, 0x1

    aget-byte v5, v4, v3

    or-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v4, v3

    move v0, v1

    move v1, v2

    goto :goto_2

    :cond_4
    move v0, v2

    move v1, v3

    goto :goto_2
.end method

.method private readArray([BLjava/lang/String;Ljava/lang/String;)[[B
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/font/Type1Font;->findSlashName([BLjava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    new-array v0, v0, [[B

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Lcom/sun/pdfview/font/Type1Font$PSParser;

    invoke-direct {v3, p0, p1, v1}, Lcom/sun/pdfview/font/Type1Font$PSParser;-><init>(Lcom/sun/pdfview/font/Type1Font;[BI)V

    invoke-virtual {v3}, Lcom/sun/pdfview/font/Type1Font$PSParser;->readThing()Ljava/lang/String;

    invoke-virtual {v3}, Lcom/sun/pdfview/font/Type1Font$PSParser;->readThing()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StandardEncoding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/sun/pdfview/font/FontSupport;->standardEncoding:[I

    array-length v1, v1

    new-array v1, v1, [[B

    :goto_1
    array-length v2, v1

    if-lt v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sun/pdfview/font/FontSupport;->standardEncoding:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/sun/pdfview/font/FontSupport;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-array v2, v1, [[B

    :cond_3
    :goto_2
    invoke-virtual {v3}, Lcom/sun/pdfview/font/Type1Font$PSParser;->readThing()Ljava/lang/String;

    move-result-object v1

    const-string v4, "dup"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lcom/sun/pdfview/font/Type1Font$PSParser;->readThing()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    invoke-virtual {v3}, Lcom/sun/pdfview/font/Type1Font$PSParser;->readThing()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3}, Lcom/sun/pdfview/font/Type1Font$PSParser;->readThing()Ljava/lang/String;

    move-result-object v6

    const-string v7, "-|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "RD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    invoke-virtual {v3}, Lcom/sun/pdfview/font/Type1Font$PSParser;->getLoc()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lcom/sun/pdfview/font/Type1Font$PSParser;->setLoc(I)V

    iget v1, p0, Lcom/sun/pdfview/font/Type1Font;->password:I

    iget v6, p0, Lcom/sun/pdfview/font/Type1Font;->lenIV:I

    invoke-virtual {v3, v5, v1, v6}, Lcom/sun/pdfview/font/Type1Font$PSParser;->getNEncodedBytes(III)[B

    move-result-object v1

    :cond_5
    aput-object v1, v2, v4

    goto :goto_2

    :cond_6
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    move-object v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method private readChars([B)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "CharStrings"

    invoke-direct {p0, p1, v1}, Lcom/sun/pdfview/font/Type1Font;->findSlashName([BLjava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/sun/pdfview/font/Type1Font$PSParser;

    invoke-direct {v2, p0, p1, v1}, Lcom/sun/pdfview/font/Type1Font$PSParser;-><init>(Lcom/sun/pdfview/font/Type1Font;[BI)V

    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/sun/pdfview/font/Type1Font$PSParser;->readThing()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Lcom/sun/pdfview/font/Type1Font$PSParser;->readThing()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lcom/sun/pdfview/font/Type1Font$PSParser;->readThing()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "RD"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_2
    invoke-virtual {v2}, Lcom/sun/pdfview/font/Type1Font$PSParser;->getLoc()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lcom/sun/pdfview/font/Type1Font$PSParser;->setLoc(I)V

    iget v4, p0, Lcom/sun/pdfview/font/Type1Font;->password:I

    iget v5, p0, Lcom/sun/pdfview/font/Type1Font;->lenIV:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/pdfview/font/Type1Font$PSParser;->getNEncodedBytes(III)[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v3, "end"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0
.end method

.method private readEncoding([B)[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const-string v0, "Encoding"

    const-string v2, "def"

    invoke-direct {p0, p1, v0, v2}, Lcom/sun/pdfview/font/Type1Font;->readArray([BLjava/lang/String;Ljava/lang/String;)[[B

    move-result-object v2

    const/16 v0, 0x100

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v4, v2

    if-lt v0, v4, :cond_0

    return-object v3

    :cond_0
    aget-object v4, v2, v0

    if-eqz v4, :cond_2

    aget-object v4, v2, v0

    aget-byte v4, v4, v1

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_1

    new-instance v4, Ljava/lang/String;

    aget-object v5, v2, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/String;

    aget-object v5, v2, v0

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v3, v0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    aput-object v4, v3, v0

    goto :goto_1
.end method

.method private readSubrs([B)[[B
    .locals 2

    const-string v0, "Subrs"

    const-string v1, "index"

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/pdfview/font/Type1Font;->readArray([BLjava/lang/String;Ljava/lang/String;)[[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected getOutline(CF)Landroid/graphics/Path;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->chr2name:[Ljava/lang/String;

    and-int/lit16 v1, p1, 0xff

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/sun/pdfview/font/Type1Font;->getOutline(Ljava/lang/String;F)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method protected getOutline(Ljava/lang/String;F)Landroid/graphics/Path;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->name2outline:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, ".notdef"

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->name2outline:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/Path;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/Path;

    :goto_0
    return-object v0

    :cond_2
    check-cast v0, [B

    new-instance v1, Lcom/sun/pdfview/font/FlPoint;

    invoke-direct {v1}, Lcom/sun/pdfview/font/FlPoint;-><init>()V

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1Font;->at:Landroid/graphics/Matrix;

    invoke-direct {p0, v0, v1, v2}, Lcom/sun/pdfview/font/Type1Font;->parseGlyph([BLcom/sun/pdfview/font/FlPoint;Landroid/graphics/Matrix;)Landroid/graphics/Path;

    move-result-object v0

    cmpl-float v2, p2, v3

    if-eqz v2, :cond_3

    iget v2, v1, Lcom/sun/pdfview/font/FlPoint;->x:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v4, v1, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    aput v4, v3, v5

    iget v4, v2, Landroid/graphics/PointF;->y:F

    aput v4, v3, v6

    iget-object v4, p0, Lcom/sun/pdfview/font/Type1Font;->at:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v4, v3, v5

    iput v4, v2, Landroid/graphics/PointF;->x:F

    aget v3, v3, v6

    iput v3, v2, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->x:F

    div-float v2, p2, v2

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_3
    iget-object v2, p0, Lcom/sun/pdfview/font/Type1Font;->name2outline:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1Font;->name2width:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getWidth(CLjava/lang/String;)F
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/Type1Font;->getFirstChar()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/Type1Font;->getLastChar()I

    move-result v0

    if-ne v0, v2, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->chr2name:[Ljava/lang/String;

    and-int/lit16 v2, p1, 0xff

    aget-object v0, v0, v2

    if-eqz p2, :cond_4

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->name2outline:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->name2width:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2, v1}, Lcom/sun/pdfview/font/Type1Font;->getOutline(Ljava/lang/String;F)Landroid/graphics/Path;

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->name2width:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/FlPoint;

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/sun/pdfview/font/FlPoint;->x:F

    invoke-virtual {p0}, Lcom/sun/pdfview/font/Type1Font;->getDefaultWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/sun/pdfview/font/OutlineFont;->getWidth(CLjava/lang/String;)F

    move-result v0

    goto :goto_1

    :cond_4
    move-object p2, v0

    goto :goto_0
.end method

.method protected parseFont([BII)V
    .locals 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->name2width:Ljava/util/Map;

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/font/Type1Font;->isASCII([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int v0, p2, p3

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/pdfview/font/Type1Font;->readASCII([BII)[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    const v4, 0xd971

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sun/pdfview/font/Type1Font;->decrypt([BIIII)[B

    move-result-object v0

    move-object v6, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sun/pdfview/font/Type1Font;->readEncoding([B)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->chr2name:[Ljava/lang/String;

    const-string v0, "lenIV"

    invoke-direct {p0, v6, v0}, Lcom/sun/pdfview/font/Type1Font;->findSlashName([BLjava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/sun/pdfview/font/Type1Font$PSParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v6, v2}, Lcom/sun/pdfview/font/Type1Font$PSParser;-><init>(Lcom/sun/pdfview/font/Type1Font;[BI)V

    if-gez v0, :cond_1

    const/4 v0, 0x4

    iput v0, p0, Lcom/sun/pdfview/font/Type1Font;->lenIV:I

    :goto_1
    const/16 v0, 0x10ea

    iput v0, p0, Lcom/sun/pdfview/font/Type1Font;->password:I

    const-string v0, "FontMatrix"

    invoke-direct {p0, p1, v0}, Lcom/sun/pdfview/font/Type1Font;->findSlashName([BLjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "No FontMatrix!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v0, 0x3a83126f    # 0.001f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x3a83126f    # 0.001f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/a/a/e/b;->a(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->at:Landroid/graphics/Matrix;

    :goto_2
    invoke-direct {p0, v6}, Lcom/sun/pdfview/font/Type1Font;->readSubrs([B)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->subrs:[[B

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {p0, v6}, Lcom/sun/pdfview/font/Type1Font;->readChars([B)Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->name2outline:Ljava/util/Map;

    return-void

    :cond_0
    add-int v3, p2, p3

    const v4, 0xd971

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/pdfview/font/Type1Font;->decrypt([BIIII)[B

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/font/Type1Font$PSParser;->setLoc(I)V

    invoke-virtual {v1}, Lcom/sun/pdfview/font/Type1Font$PSParser;->readThing()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/Type1Font;->lenIV:I

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/sun/pdfview/font/Type1Font$PSParser;

    add-int/lit8 v0, v0, 0xb

    invoke-direct {v1, p0, p1, v0}, Lcom/sun/pdfview/font/Type1Font$PSParser;-><init>(Lcom/sun/pdfview/font/Type1Font;[BI)V

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/font/Type1Font$PSParser;->readArray(I)[F

    move-result-object v0

    invoke-static {v0}, Lc/a/a/e/b;->a([F)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1Font;->at:Landroid/graphics/Matrix;

    goto :goto_2
.end method
