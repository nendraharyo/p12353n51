.class public Lcom/sun/pdfview/font/Type1CFont;
.super Lcom/sun/pdfview/font/OutlineFont;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/font/Type1CFont$Range;
    }
.end annotation


# static fields
.field static CMD:I

.field static FLT:I

.field static NUM:I


# instance fields
.field at:Landroid/graphics/Matrix;

.field charsetbase:I

.field charstringbase:I

.field charstringtype:I

.field chr2name:[Ljava/lang/String;

.field data:[B

.field encoding:[I

.field encodingbase:I

.field fnum:F

.field fontname:Ljava/lang/String;

.field glyphnames:[I

.field gsubrbase:I

.field gsubrsoffset:I

.field lsubrbase:I

.field lsubrsoffset:I

.field names:[Ljava/lang/String;

.field nglyphs:I

.field num:I

.field pos:I

.field privatebase:I

.field privatesize:I

.field stack:[F

.field stackptr:I

.field subrs:[B

.field temps:[F

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/sun/pdfview/font/Type1CFont;->CMD:I

    const/4 v0, 0x1

    sput v0, Lcom/sun/pdfview/font/Type1CFont;->NUM:I

    const/4 v0, 0x2

    sput v0, Lcom/sun/pdfview/font/Type1CFont;->FLT:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V
    .locals 7

    const/16 v3, 0x100

    const v0, 0x3a83126f    # 0.001f

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/pdfview/font/OutlineFont;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    new-array v2, v3, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->chr2name:[Ljava/lang/String;

    const/16 v2, 0x64

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iput v6, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    new-array v2, v3, [I

    iput-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->encoding:[I

    move v2, v1

    move v3, v0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lc/a/a/e/b;->a(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->at:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->charstringtype:I

    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->temps:[F

    iput v6, p0, Lcom/sun/pdfview/font/Type1CFont;->charsetbase:I

    iput v6, p0, Lcom/sun/pdfview/font/Type1CFont;->encodingbase:I

    iput v6, p0, Lcom/sun/pdfview/font/Type1CFont;->charstringbase:I

    iput v6, p0, Lcom/sun/pdfview/font/Type1CFont;->privatebase:I

    iput v6, p0, Lcom/sun/pdfview/font/Type1CFont;->privatesize:I

    iput v6, p0, Lcom/sun/pdfview/font/Type1CFont;->gsubrbase:I

    iput v6, p0, Lcom/sun/pdfview/font/Type1CFont;->lsubrbase:I

    iput v6, p0, Lcom/sun/pdfview/font/Type1CFont;->gsubrsoffset:I

    iput v6, p0, Lcom/sun/pdfview/font/Type1CFont;->lsubrsoffset:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->nglyphs:I

    sget-boolean v0, Lcom/sun/pdfview/font/PDFFont;->sUseFontSubstitution:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getFontFile3()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    :cond_0
    iput v6, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    sget-boolean v0, Lcom/sun/pdfview/font/PDFFont;->sUseFontSubstitution:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->parse()V

    :cond_1
    return-void
.end method

.method private buildAccentChar(FFCCLandroid/graphics/Path;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p4, v4}, Lcom/sun/pdfview/font/Type1CFont;->getWidth(CLjava/lang/String;)F

    move-result v0

    invoke-virtual {p0, p4, v0}, Lcom/sun/pdfview/font/Type1CFont;->getOutline(CF)Landroid/graphics/Path;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->at:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->at:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, p3, v4}, Lcom/sun/pdfview/font/Type1CFont;->getWidth(CLjava/lang/String;)F

    move-result v1

    invoke-virtual {p0, p3, v1}, Lcom/sun/pdfview/font/Type1CFont;->getOutline(CF)Landroid/graphics/Path;

    move-result-object v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->at:Landroid/graphics/Matrix;

    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_1
    invoke-virtual {p5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    invoke-virtual {p5, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private getNameIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v2, -0x1

    sget-object v0, Lcom/sun/pdfview/font/FontSupport;->stdNames:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sun/pdfview/font/FontSupport;->findName(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->names:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sun/pdfview/font/FontSupport;->findName(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/sun/pdfview/font/FontSupport;->stdNames:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    :cond_0
    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private parse()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    move-result v0

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/Type1CFont;->getIndexSize(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/Type1CFont;->getIndexSize(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/Type1CFont;->getIndexSize(I)I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sun/pdfview/font/Type1CFont;->gsubrbase:I

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->gsubrbase:I

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/font/Type1CFont;->calcoffset(I)I

    move-result v3

    iput v3, p0, Lcom/sun/pdfview/font/Type1CFont;->gsubrsoffset:I

    invoke-direct {p0, v2}, Lcom/sun/pdfview/font/Type1CFont;->readNames(I)V

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    invoke-direct {p0, v6}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->printData()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "More than one font in this file!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0, v5}, Lcom/sun/pdfview/font/Type1CFont;->getIndexEntry(II)Lcom/sun/pdfview/font/Type1CFont$Range;

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    invoke-virtual {v0}, Lcom/sun/pdfview/font/Type1CFont$Range;->getStart()I

    move-result v4

    invoke-virtual {v0}, Lcom/sun/pdfview/font/Type1CFont$Range;->getLen()I

    move-result v0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->fontname:Ljava/lang/String;

    invoke-virtual {p0, v1, v5}, Lcom/sun/pdfview/font/Type1CFont;->getIndexEntry(II)Lcom/sun/pdfview/font/Type1CFont$Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/Type1CFont;->readDict(Lcom/sun/pdfview/font/Type1CFont$Range;)V

    new-instance v0, Lcom/sun/pdfview/font/Type1CFont$Range;

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->privatebase:I

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->privatesize:I

    invoke-direct {v0, p0, v1, v2}, Lcom/sun/pdfview/font/Type1CFont$Range;-><init>(Lcom/sun/pdfview/font/Type1CFont;II)V

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/Type1CFont;->readDict(Lcom/sun/pdfview/font/Type1CFont$Range;)V

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->charstringbase:I

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    invoke-direct {p0, v6}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->nglyphs:I

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->charsetbase:I

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/Type1CFont;->readGlyphNames(I)V

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->encodingbase:I

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/Type1CFont;->readEncodingData(I)V

    return-void
.end method

.method private printData()V
    .locals 9

    const/16 v8, 0x20

    const/4 v1, 0x0

    const/16 v0, 0x11

    new-array v4, v0, [C

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    array-length v3, v3

    if-lt v0, v3, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    aget-byte v3, v3, v0

    and-int/lit16 v5, v3, 0xff

    if-nez v5, :cond_1

    add-int/lit8 v3, v2, 0x1

    const/16 v6, 0x2e

    aput-char v6, v4, v2

    :goto_1
    const/16 v2, 0x10

    if-ge v5, v2, :cond_4

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    and-int/lit8 v2, v0, 0xf

    const/16 v5, 0xf

    if-ne v2, v5, :cond_5

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "      "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lt v5, v8, :cond_2

    const/16 v3, 0x7f

    if-lt v5, v3, :cond_3

    :cond_2
    add-int/lit8 v3, v2, 0x1

    const/16 v6, 0x3f

    aput-char v6, v4, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v2, 0x1

    int-to-char v6, v5

    aput-char v6, v4, v2

    goto :goto_1

    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    and-int/lit8 v2, v0, 0x7

    const/4 v5, 0x7

    if-ne v2, v5, :cond_6

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "  "

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x1

    aput-char v8, v4, v3

    goto :goto_3

    :cond_6
    and-int/lit8 v2, v0, 0x1

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method private readByte()I
    .locals 3

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readCommand(Z)I
    .locals 4

    :goto_0
    invoke-direct {p0, p1}, Lcom/sun/pdfview/font/Type1CFont;->readNext(Z)I

    move-result v0

    sget v1, Lcom/sun/pdfview/font/Type1CFont;->CMD:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    sget v3, Lcom/sun/pdfview/font/Type1CFont;->NUM:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    int-to-float v0, v0

    :goto_1
    aput v0, v1, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->fnum:F

    goto :goto_1
.end method

.method private readDict(Lcom/sun/pdfview/font/Type1CFont$Range;)V
    .locals 7

    invoke-virtual {p1}, Lcom/sun/pdfview/font/Type1CFont$Range;->getStart()I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    :goto_0
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    invoke-virtual {p1}, Lcom/sun/pdfview/font/Type1CFont$Range;->getEnd()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/Type1CFont;->readCommand(Z)I

    move-result v0

    const/16 v1, 0x3ee

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->charstringtype:I

    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto :goto_0

    :cond_2
    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/a/a/e/b;->a(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->at:Landroid/graphics/Matrix;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v5, 0x4

    aget v4, v4, v5

    iget-object v5, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v6, 0x5

    aget v5, v5, v6

    invoke-static/range {v0 .. v5}, Lc/a/a/e/b;->a(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->at:Landroid/graphics/Matrix;

    goto :goto_1

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->charsetbase:I

    goto :goto_1

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->encodingbase:I

    goto :goto_1

    :cond_6
    const/16 v1, 0x11

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->charstringbase:I

    goto :goto_1

    :cond_7
    const/16 v1, 0x12

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->privatesize:I

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->privatebase:I

    goto/16 :goto_1

    :cond_8
    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->privatebase:I

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->lsubrbase:I

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->lsubrbase:I

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/Type1CFont;->calcoffset(I)I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->lsubrsoffset:I

    goto/16 :goto_1
.end method

.method private readEncodingData(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    sget-object v1, Lcom/sun/pdfview/font/FontSupport;->standardEncoding:[I

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->encoding:[I

    sget-object v3, Lcom/sun/pdfview/font/FontSupport;->standardEncoding:[I

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v2, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "**** EXPERT ENCODING!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    move-result v1

    and-int/lit8 v3, v1, 0x7f

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    move-result v0

    :goto_1
    add-int/lit8 v1, v0, 0x1

    if-ge v2, v1, :cond_0

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->encoding:[I

    aput v2, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    and-int/lit8 v3, v1, 0x7f

    if-ne v3, v2, :cond_5

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    move-result v5

    move v4, v0

    move v0, v2

    :goto_2
    if-ge v4, v5, :cond_0

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    move-result v1

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    move-result v6

    move v2, v0

    move v0, v1

    :goto_3
    add-int v3, v1, v6

    add-int/lit8 v3, v3, 0x1

    if-lt v0, v3, :cond_4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v2

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/sun/pdfview/font/Type1CFont;->encoding:[I

    add-int/lit8 v3, v2, 0x1

    aput v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_3

    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad encoding type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized readGlyph(II)Landroid/graphics/Path;
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sun/pdfview/font/FlPoint;

    invoke-direct {v0}, Lcom/sun/pdfview/font/FlPoint;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/sun/pdfview/font/Type1CFont;->getIndexEntry(II)Lcom/sun/pdfview/font/Type1CFont$Range;

    move-result-object v1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/sun/pdfview/font/Type1CFont;->parseGlyph(Lcom/sun/pdfview/font/Type1CFont$Range;Landroid/graphics/Path;Lcom/sun/pdfview/font/FlPoint;)V

    iput v3, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->at:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readGlyphNames(I)V
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x2

    if-nez p1, :cond_2

    const/16 v1, 0xe5

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    :goto_0
    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    sget-object v0, Lcom/sun/pdfview/font/FontSupport;->type1CExpertCharset:[I

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    goto :goto_1

    :cond_3
    if-ne p1, v8, :cond_4

    sget-object v0, Lcom/sun/pdfview/font/FontSupport;->type1CExpertSubCharset:[I

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->nglyphs:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    aput v0, v2, v0

    iput p1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    :goto_2
    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->nglyphs:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    invoke-direct {p0, v8}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    if-ne v2, v1, :cond_7

    :cond_6
    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->nglyphs:I

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v8}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v2

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    move v3, v2

    move v2, v0

    :goto_3
    if-ge v2, v6, :cond_6

    iget-object v7, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v4, v3, 0x1

    aput v3, v7, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v3, v4

    move v1, v5

    goto :goto_3

    :cond_7
    if-ne v2, v8, :cond_0

    :cond_8
    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->nglyphs:I

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v8}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v2

    invoke-direct {p0, v8}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    move v3, v2

    move v2, v0

    :goto_4
    if-ge v2, v6, :cond_8

    iget-object v7, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v4, v3, 0x1

    aput v3, v7, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v3, v4

    move v1, v5

    goto :goto_4
.end method

.method private readInt(I)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v0, p1, :cond_0

    return v1

    :cond_0
    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readNames(I)V
    .locals 7

    iput p1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->names:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/pdfview/font/Type1CFont;->getIndexEntry(II)Lcom/sun/pdfview/font/Type1CFont$Range;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->names:[Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    invoke-virtual {v2}, Lcom/sun/pdfview/font/Type1CFont$Range;->getStart()I

    move-result v6

    invoke-virtual {v2}, Lcom/sun/pdfview/font/Type1CFont$Range;->getLen()I

    move-result v2

    invoke-direct {v4, v5, v6, v2}, Ljava/lang/String;-><init>([BII)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readNext(Z)I
    .locals 4

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/Type1CFont;->readFNum()V

    sget v0, Lcom/sun/pdfview/font/Type1CFont;->FLT:I

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->type:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    sget v0, Lcom/sun/pdfview/font/Type1CFont;->NUM:I

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->type:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    sget v0, Lcom/sun/pdfview/font/Type1CFont;->NUM:I

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->type:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    sget v0, Lcom/sun/pdfview/font/Type1CFont;->CMD:I

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->type:I

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    const/16 v1, 0x20

    if-ge v0, v1, :cond_4

    sget v0, Lcom/sun/pdfview/font/Type1CFont;->CMD:I

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->type:I

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    const/16 v1, 0xf7

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    add-int/lit16 v0, v0, -0x8b

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    sget v0, Lcom/sun/pdfview/font/Type1CFont;->NUM:I

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->type:I

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    const/16 v1, 0xfb

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    add-int/lit16 v0, v0, -0xf7

    mul-int/lit16 v0, v0, 0x100

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x6c

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    sget v0, Lcom/sun/pdfview/font/Type1CFont;->NUM:I

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->type:I

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    add-int/lit16 v0, v0, -0xfb

    neg-int v0, v0

    mul-int/lit16 v0, v0, 0x100

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x6c

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->num:I

    sget v0, Lcom/sun/pdfview/font/Type1CFont;->NUM:I

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->type:I

    goto/16 :goto_0

    :cond_7
    if-nez p1, :cond_8

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->printData()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Got a 255 code while reading dict"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x47800000    # 65536.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->fnum:F

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    sget v0, Lcom/sun/pdfview/font/Type1CFont;->FLT:I

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->type:I

    goto/16 :goto_0
.end method

.method private safe(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    const/16 v3, 0x80

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method


# virtual methods
.method public calcoffset(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/Type1CFont;->getTableLength(I)I

    move-result v0

    const/16 v1, 0x4d8

    if-ge v0, v1, :cond_0

    const/16 v0, 0x6b

    :goto_0
    return v0

    :cond_0
    const v1, 0x846c

    if-ge v0, v1, :cond_1

    const/16 v0, 0x46b

    goto :goto_0

    :cond_1
    const v0, 0x8000

    goto :goto_0
.end method

.method getIndexEntry(II)Lcom/sun/pdfview/font/Type1CFont$Range;
    .locals 6

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    iput p1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v1

    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Offsize: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must be in range 1-4."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    mul-int v4, v2, p2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    invoke-direct {p0, v2}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v3

    new-instance v4, Lcom/sun/pdfview/font/Type1CFont$Range;

    add-int/lit8 v5, v3, 0x2

    add-int/2addr v5, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v2

    add-int/2addr v1, v5

    invoke-direct {p0, v2}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-direct {v4, p0, v1, v2}, Lcom/sun/pdfview/font/Type1CFont$Range;-><init>(Lcom/sun/pdfview/font/Type1CFont;II)V

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    return-object v4
.end method

.method public getIndexSize(I)I
    .locals 5

    const/4 v0, 0x2

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    iput p1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sun/pdfview/font/Type1CFont;->readByte()I

    move-result v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_1

    const/4 v3, 0x4

    if-le v0, v3, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Offsize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", must be in range 1-4."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    mul-int v4, v2, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v3

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v1, v2, 0x1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method protected getOutline(CF)Landroid/graphics/Path;
    .locals 5

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->encodingbase:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->encodingbase:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    array-length v3, v3

    if-lt v0, v3, :cond_2

    :cond_1
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->charstringbase:I

    invoke-direct {p0, v0, v1}, Lcom/sun/pdfview/font/Type1CFont;->readGlyph(II)Landroid/graphics/Path;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/sun/pdfview/font/Type1CFont;->encoding:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_3

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->charstringbase:I

    invoke-direct {p0, v1, v0}, Lcom/sun/pdfview/font/Type1CFont;->readGlyph(II)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-lez v2, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->encoding:[I

    array-length v0, v0

    if-ge v2, v0, :cond_1

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->charstringbase:I

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->encoding:[I

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/sun/pdfview/font/Type1CFont;->readGlyph(II)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_1
.end method

.method protected getOutline(Ljava/lang/String;F)Landroid/graphics/Path;
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sun/pdfview/font/Type1CFont;->getNameIndex(Ljava/lang/String;)I

    move-result v2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->charstringbase:I

    invoke-direct {p0, v0, v1}, Lcom/sun/pdfview/font/Type1CFont;->readGlyph(II)Landroid/graphics/Path;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->glyphnames:[I

    aget v3, v3, v0

    if-ne v3, v2, :cond_1

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->charstringbase:I

    invoke-direct {p0, v1, v0}, Lcom/sun/pdfview/font/Type1CFont;->readGlyph(II)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSID(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sun/pdfview/font/FontSupport;->stdNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/sun/pdfview/font/FontSupport;->stdNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/pdfview/font/FontSupport;->stdNames:[Ljava/lang/String;

    array-length v0, v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->names:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public getTableLength(I)I
    .locals 3

    const/4 v0, 0x2

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    iput p1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/Type1CFont;->readInt(I)I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    move v0, v1

    goto :goto_0
.end method

.method parseGlyph(Lcom/sun/pdfview/font/Type1CFont$Range;Landroid/graphics/Path;Lcom/sun/pdfview/font/FlPoint;)V
    .locals 11

    invoke-virtual {p1}, Lcom/sun/pdfview/font/Type1CFont$Range;->getStart()I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    const/4 v0, 0x0

    move v10, v0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    invoke-virtual {p1}, Lcom/sun/pdfview/font/Type1CFont$Range;->getEnd()I

    move-result v1

    if-lt v0, v1, :cond_1

    :sswitch_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/Type1CFont;->readCommand(Z)I

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ERROR! TYPE1C CHARSTRING CMD IS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    :cond_2
    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto :goto_0

    :cond_4
    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    add-float/2addr v0, v1

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v0, v3, 0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    iput v1, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :sswitch_4
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    if-lt v0, v1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_6

    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v1, v0, 0x1

    aget v0, v3, v0

    add-float/2addr v0, v2

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    move v0, v1

    :goto_3
    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_6
    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v1, v0, 0x1

    aget v0, v3, v0

    add-float/2addr v0, v2

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move v0, v1

    goto :goto_3

    :sswitch_5
    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :cond_7
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_8

    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v1, v0, 0x1

    aget v0, v3, v0

    add-float/2addr v0, v2

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move v0, v1

    :goto_5
    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_8
    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v1, v0, 0x1

    aget v0, v3, v0

    add-float/2addr v0, v2

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    move v0, v1

    goto :goto_5

    :sswitch_6
    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :cond_9
    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    add-float/2addr v1, v0

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v6, v5, 0x1

    aget v0, v0, v5

    add-float v4, v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v5, v6, 0x1

    aget v0, v0, v6

    add-float/2addr v0, v3

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v7, v5, 0x1

    aget v0, v0, v5

    add-float/2addr v0, v4

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v0, v7

    goto :goto_6

    :sswitch_7
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v1, v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->lsubrsoffset:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->lsubrbase:I

    invoke-virtual {p0, v2, v1}, Lcom/sun/pdfview/font/Type1CFont;->getIndexEntry(II)Lcom/sun/pdfview/font/Type1CFont$Range;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/sun/pdfview/font/Type1CFont;->parseGlyph(Lcom/sun/pdfview/font/Type1CFont$Range;Landroid/graphics/Path;Lcom/sun/pdfview/font/FlPoint;)V

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    goto/16 :goto_0

    :sswitch_8
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x1

    aget v1, v0, v1

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x2

    aget v2, v0, v2

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x3

    aget v0, v0, v3

    float-to-int v0, v0

    int-to-char v3, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v4, 0x4

    aget v0, v0, v4

    float-to-int v0, v0

    int-to-char v4, v0

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/pdfview/font/Type1CFont;->buildAccentChar(FFCCLandroid/graphics/Path;)V

    :cond_a
    iget-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :sswitch_9
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v10

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    move v10, v0

    goto/16 :goto_0

    :sswitch_a
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v10

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v2, v0, -0x1

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    move v10, v0

    goto/16 :goto_0

    :sswitch_b
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    aput v2, v0, v1

    :cond_c
    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    :cond_d
    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :sswitch_c
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    :cond_e
    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    if-eqz v0, :cond_f

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    :cond_f
    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :sswitch_d
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v10

    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    move v10, v0

    goto/16 :goto_0

    :sswitch_e
    const/4 v0, 0x0

    :goto_7
    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_10

    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    add-float/2addr v0, v1

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    add-float/2addr v0, v1

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :cond_10
    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    add-float/2addr v1, v0

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v6, v5, 0x1

    aget v0, v0, v5

    add-float v4, v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v5, v6, 0x1

    aget v0, v0, v6

    add-float/2addr v0, v3

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v7, v5, 0x1

    aget v0, v0, v5

    add-float/2addr v0, v4

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v0, v7

    goto :goto_7

    :sswitch_f
    const/4 v0, 0x0

    :goto_8
    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x6

    if-lt v0, v1, :cond_11

    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    add-float/2addr v1, v0

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v4, v3, 0x1

    aget v2, v2, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v6, v5, 0x1

    aget v0, v0, v5

    add-float v4, v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v5, v6, 0x1

    aget v0, v0, v6

    add-float/2addr v0, v3

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v6, v5, 0x1

    aget v0, v0, v5

    add-float/2addr v0, v4

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :cond_11
    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    add-float/2addr v0, v1

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v0, v3, 0x1

    aget v2, v2, v3

    add-float/2addr v1, v2

    iput v1, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_8

    :sswitch_10
    const/4 v1, 0x0

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_26

    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v0, 0x1

    aget v1, v3, v1

    add-float/2addr v1, v2

    iput v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    :goto_9
    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :cond_12
    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v4, v0, 0x1

    aget v0, v3, v0

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v6, v5, 0x1

    aget v0, v0, v5

    add-float v4, v2, v0

    iput v3, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v7, v6, 0x1

    aget v0, v0, v6

    add-float/2addr v0, v4

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v0, v7

    goto :goto_9

    :sswitch_11
    const/4 v1, 0x0

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    and-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_25

    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v0, 0x1

    aget v1, v3, v1

    add-float/2addr v1, v2

    iput v1, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    :goto_a
    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :cond_13
    iget v1, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    add-float/2addr v1, v0

    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v3

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v5, v4, 0x1

    aget v0, v0, v4

    add-float v4, v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v7, v5, 0x1

    aget v0, v0, v5

    add-float/2addr v0, v3

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iput v4, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v0, v7

    goto :goto_a

    :sswitch_12
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v1, v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->gsubrsoffset:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->gsubrbase:I

    invoke-virtual {p0, v2, v1}, Lcom/sun/pdfview/font/Type1CFont;->getIndexEntry(II)Lcom/sun/pdfview/font/Type1CFont$Range;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/sun/pdfview/font/Type1CFont;->parseGlyph(Lcom/sun/pdfview/font/Type1CFont$Range;Landroid/graphics/Path;Lcom/sun/pdfview/font/FlPoint;)V

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    goto/16 :goto_0

    :sswitch_13
    const/4 v0, 0x4

    move v7, v0

    :goto_b
    const/4 v0, 0x0

    :goto_c
    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    if-lt v0, v1, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :cond_14
    add-int v1, v0, v7

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_15

    const/4 v1, 0x1

    move v5, v1

    :goto_d
    iget v3, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    if-eqz v5, :cond_16

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v1, v0, 0x1

    aget v0, v2, v0

    move v2, v1

    :goto_e
    add-float v1, v3, v0

    iget v4, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    if-eqz v5, :cond_17

    const/4 v0, 0x0

    move v3, v2

    :goto_f
    add-float v2, v4, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v4, v3, 0x1

    aget v0, v0, v3

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v6, v4, 0x1

    aget v0, v0, v4

    add-float v4, v2, v0

    if-eqz v5, :cond_18

    const/4 v0, 0x0

    :goto_10
    add-float/2addr v0, v3

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    if-eqz v5, :cond_19

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v8, v6, 0x1

    aget v0, v0, v6

    move v6, v8

    :goto_11
    add-float/2addr v0, v4

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_24

    if-eqz v5, :cond_1a

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v5, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v8, v6, 0x1

    aget v5, v5, v6

    add-float/2addr v0, v5

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    :goto_12
    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v0, v8

    goto :goto_c

    :cond_15
    const/4 v1, 0x0

    move v5, v1

    goto :goto_d

    :cond_16
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    goto :goto_e

    :cond_17
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v3, v2, 0x1

    aget v0, v0, v2

    goto :goto_f

    :cond_18
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v8, v6, 0x1

    aget v0, v0, v6

    move v6, v8

    goto :goto_10

    :cond_19
    const/4 v0, 0x0

    goto :goto_11

    :cond_1a
    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v5, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    add-int/lit8 v8, v6, 0x1

    aget v5, v5, v6

    add-float/2addr v0, v5

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    goto :goto_12

    :sswitch_14
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :sswitch_15
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    :goto_13
    int-to-float v0, v0

    aput v0, v2, v3

    goto/16 :goto_0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_13

    :sswitch_16
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1d

    :cond_1c
    const/4 v0, 0x1

    :goto_14
    int-to-float v0, v0

    aput v0, v2, v3

    goto/16 :goto_0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_14

    :sswitch_17
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_15
    int-to-float v0, v0

    aput v0, v1, v2

    goto/16 :goto_0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_15

    :sswitch_18
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    aput v2, v0, v1

    goto/16 :goto_0

    :sswitch_19
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-float/2addr v0, v1

    aput v0, v2, v3

    goto/16 :goto_0

    :sswitch_1a
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    sub-float v0, v1, v0

    aput v0, v2, v3

    goto/16 :goto_0

    :sswitch_1b
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    div-float v0, v1, v0

    aput v0, v2, v3

    goto/16 :goto_0

    :sswitch_1c
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    neg-float v2, v2

    aput v2, v0, v1

    goto/16 :goto_0

    :sswitch_1d
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_16
    int-to-float v0, v0

    aput v0, v2, v3

    goto/16 :goto_0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_16

    :sswitch_1e
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :sswitch_1f
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->temps:[F

    aput v1, v2, v0

    goto/16 :goto_0

    :sswitch_20
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->temps:[F

    aget v0, v3, v0

    aput v0, v1, v2

    goto/16 :goto_0

    :sswitch_21
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x4

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v3, v3, -0x3

    aget v2, v2, v3

    aput v2, v0, v1

    :cond_20
    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :sswitch_22
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    goto/16 :goto_0

    :sswitch_23
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    mul-float/2addr v0, v1

    aput v0, v2, v3

    goto/16 :goto_0

    :sswitch_24
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v0, v1

    goto/16 :goto_0

    :sswitch_25
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aput v0, v1, v2

    goto/16 :goto_0

    :sswitch_26
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v4, v4, -0x2

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x2

    aput v0, v1, v2

    goto/16 :goto_0

    :sswitch_27
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    float-to-int v0, v0

    if-gez v0, :cond_21

    const/4 v0, 0x0

    :cond_21
    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v4, v4, -0x2

    sub-int v0, v4, v0

    aget v0, v3, v0

    aput v0, v1, v2

    goto/16 :goto_0

    :sswitch_28
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    aget v1, v1, v2

    float-to-int v1, v1

    if-lez v0, :cond_22

    rem-int/2addr v0, v1

    :goto_17
    if-lez v0, :cond_0

    new-array v2, v1, [F

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    sub-int v5, v1, v0

    invoke-static {v3, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    iget v4, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_22
    neg-int v0, v0

    rem-int/2addr v0, v1

    sub-int v0, v1, v0

    goto :goto_17

    :sswitch_29
    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    add-float/2addr v1, v0

    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x1

    aget v0, v0, v3

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v4, 0x2

    aget v0, v0, v4

    add-float v4, v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v5, 0x3

    aget v0, v0, v5

    add-float/2addr v0, v3

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iput v4, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x4

    aget v1, v1, v3

    add-float v4, v0, v1

    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    add-float v6, v4, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    add-float/2addr v0, v6

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iput v2, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v8, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v9, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v3, p2

    move v7, v2

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :sswitch_2a
    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    add-float/2addr v1, v0

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x2

    aget v0, v0, v3

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v4, 0x3

    aget v0, v0, v4

    add-float v4, v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v5, 0x4

    aget v0, v0, v5

    add-float/2addr v0, v3

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v5, 0x5

    aget v0, v0, v5

    add-float/2addr v0, v4

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    add-float/2addr v1, v0

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/16 v3, 0x8

    aget v0, v0, v3

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/16 v4, 0x9

    aget v0, v0, v4

    add-float v4, v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/16 v5, 0xa

    aget v0, v0, v5

    add-float/2addr v0, v3

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/16 v5, 0xb

    aget v0, v0, v5

    add-float/2addr v0, v4

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :sswitch_2b
    iget v7, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    add-float/2addr v1, v0

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x2

    aget v0, v0, v3

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v4, 0x3

    aget v0, v0, v4

    add-float v4, v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v5, 0x4

    aget v0, v0, v5

    add-float/2addr v0, v3

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iput v4, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    add-float/2addr v1, v0

    iget v2, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x6

    aget v0, v0, v3

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v4, 0x7

    aget v0, v0, v4

    add-float v4, v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/16 v5, 0x8

    aget v0, v0, v5

    add-float/2addr v0, v3

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iput v7, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :sswitch_2c
    iget v7, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v8, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    add-float/2addr v1, v0

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x2

    aget v0, v0, v3

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v4, 0x3

    aget v0, v0, v4

    add-float v4, v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v5, 0x4

    aget v0, v0, v5

    add-float/2addr v0, v3

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v5, 0x5

    aget v0, v0, v5

    add-float/2addr v0, v4

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    add-float/2addr v1, v0

    iget v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/16 v3, 0x8

    aget v0, v0, v3

    add-float v3, v1, v0

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/16 v4, 0x9

    aget v0, v0, v4

    add-float v4, v2, v0

    sub-float v0, v3, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v5, v4, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/16 v5, 0xa

    aget v0, v0, v5

    add-float/2addr v0, v3

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iput v7, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    :goto_18
    iget v5, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget v6, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/sun/pdfview/font/FlPoint;->open:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stackptr:I

    goto/16 :goto_0

    :cond_23
    iput v8, p3, Lcom/sun/pdfview/font/FlPoint;->x:F

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1CFont;->stack:[F

    const/16 v5, 0xa

    aget v0, v0, v5

    add-float/2addr v0, v4

    iput v0, p3, Lcom/sun/pdfview/font/FlPoint;->y:F

    goto :goto_18

    :cond_24
    move v8, v6

    goto/16 :goto_12

    :cond_25
    move v0, v1

    goto/16 :goto_a

    :cond_26
    move v0, v1

    goto/16 :goto_9

    :sswitch_2d
    move v7, v0

    goto/16 :goto_b

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_0
        0xe -> :sswitch_8
        0x12 -> :sswitch_9
        0x13 -> :sswitch_a
        0x14 -> :sswitch_a
        0x15 -> :sswitch_b
        0x16 -> :sswitch_c
        0x17 -> :sswitch_d
        0x18 -> :sswitch_e
        0x19 -> :sswitch_f
        0x1a -> :sswitch_10
        0x1b -> :sswitch_11
        0x1d -> :sswitch_12
        0x1e -> :sswitch_13
        0x1f -> :sswitch_2d
        0x3e8 -> :sswitch_14
        0x3eb -> :sswitch_15
        0x3ec -> :sswitch_16
        0x3ed -> :sswitch_17
        0x3f1 -> :sswitch_18
        0x3f2 -> :sswitch_19
        0x3f3 -> :sswitch_1a
        0x3f4 -> :sswitch_1b
        0x3f6 -> :sswitch_1c
        0x3f7 -> :sswitch_1d
        0x3fa -> :sswitch_1e
        0x3fc -> :sswitch_1f
        0x3fd -> :sswitch_20
        0x3fe -> :sswitch_21
        0x3ff -> :sswitch_22
        0x400 -> :sswitch_23
        0x402 -> :sswitch_24
        0x403 -> :sswitch_25
        0x404 -> :sswitch_26
        0x405 -> :sswitch_27
        0x406 -> :sswitch_28
        0x40a -> :sswitch_29
        0x40b -> :sswitch_2a
        0x40c -> :sswitch_2b
        0x40d -> :sswitch_2c
    .end sparse-switch
.end method

.method public readFNum()V
    .locals 12

    const/4 v0, -0x1

    const/high16 v11, 0x41200000    # 10.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v6, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    aget-byte v2, v2, v6

    move v6, v3

    move v7, v3

    move v8, v5

    move v5, v3

    move v3, v4

    :goto_0
    const/16 v9, -0x23

    if-ne v2, v9, :cond_0

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1CFont;->data:[B

    iget v9, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sun/pdfview/font/Type1CFont;->pos:I

    aget-byte v2, v2, v9

    :cond_0
    shr-int/lit8 v9, v2, 0x4

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v2, v2, 0x4

    or-int/lit8 v2, v2, 0xd

    int-to-byte v2, v2

    const/16 v10, 0xa

    if-ge v9, v10, :cond_3

    if-eqz v6, :cond_1

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v9

    goto :goto_0

    :cond_1
    cmpl-float v10, v3, v4

    if-nez v10, :cond_2

    mul-float/2addr v8, v11

    int-to-float v9, v9

    add-float/2addr v8, v9

    goto :goto_0

    :cond_2
    int-to-float v9, v9

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    div-float/2addr v3, v11

    goto :goto_0

    :cond_3
    const/16 v10, 0xa

    if-ne v9, v10, :cond_4

    const v3, 0x3dcccccd    # 0.1f

    goto :goto_0

    :cond_4
    const/16 v10, 0xb

    if-ne v9, v10, :cond_5

    move v6, v1

    goto :goto_0

    :cond_5
    const/16 v10, 0xc

    if-ne v9, v10, :cond_6

    move v6, v0

    goto :goto_0

    :cond_6
    const/16 v10, 0xe

    if-ne v9, v10, :cond_7

    move v7, v1

    goto :goto_0

    :cond_7
    if-eqz v7, :cond_8

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v0, v8

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-int v1, v5, v6

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sun/pdfview/font/Type1CFont;->fnum:F

    return-void

    :cond_8
    move v0, v1

    goto :goto_1
.end method
