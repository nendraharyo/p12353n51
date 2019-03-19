.class public Lcom/sun/pdfview/font/BuiltinFont;
.super Lcom/sun/pdfview/font/Type1Font;


# static fields
.field private static final baseFonts:[Ljava/lang/String;

.field private static final mappedFonts:[Ljava/lang/String;

.field private static pkg:Ljava/lang/String;

.field private static props:Ljava/util/Properties;

.field private static resources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Courier"

    aput-object v1, v0, v3

    const-string v1, "Courier-Bold"

    aput-object v1, v0, v4

    const-string v1, "Courier-BoldOblique"

    aput-object v1, v0, v5

    const-string v1, "Courier-Oblique"

    aput-object v1, v0, v6

    const-string v1, "Helvetica"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Helvetica-Bold"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Helvetica-BoldOblique"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Helvetica-Oblique"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Times-Roman"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Times-Bold"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Times-BoldItalic"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Times-Italic"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Symbol"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ZapfDingbats"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/font/BuiltinFont;->baseFonts:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Arial"

    aput-object v1, v0, v3

    const-string v1, "Helvetica"

    aput-object v1, v0, v4

    const-string v1, "Arial,Bold"

    aput-object v1, v0, v5

    const-string v1, "Helvetica-Bold"

    aput-object v1, v0, v6

    const-string v1, "Arial,BoldItalic"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Helvetica-BoldOblique"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Arial,Italic"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Helvetica-Oblique"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "TimesNewRoman"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Times-Roman"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TimesNewRoman,Bold"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Times-Bold"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "TimesNewRoman,BoldItalic"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Times-BoldItalic"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TimesNewRoman,Italic"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Times-Italic"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/font/BuiltinFont;->mappedFonts:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sun/pdfview/font/Type1Font;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    invoke-direct {p0, p1}, Lcom/sun/pdfview/font/BuiltinFont;->parseFont(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/pdfview/font/Type1Font;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    invoke-virtual {p3}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getFontName()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    sget-object v3, Lcom/sun/pdfview/font/BuiltinFont;->baseFonts:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_4

    move v0, v1

    :goto_1
    sget-object v3, Lcom/sun/pdfview/font/BuiltinFont;->mappedFonts:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_6

    invoke-virtual {p3}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getFlags()I

    move-result v0

    const/high16 v3, 0x40000

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v3, "Bold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    or-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-virtual {p3}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getItalicAngle()I

    move-result v2

    if-nez v2, :cond_2

    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_3

    :cond_2
    or-int/lit8 v1, v1, 0x2

    :cond_3
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_b

    and-int/lit8 v0, v1, 0x1

    if-lez v0, :cond_8

    and-int/lit8 v0, v1, 0x2

    if-lez v0, :cond_8

    const-string v0, "Courier-BoldOblique"

    :goto_2
    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/BuiltinFont;->parseFont(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_4
    sget-object v3, Lcom/sun/pdfview/font/BuiltinFont;->baseFonts:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0, v2}, Lcom/sun/pdfview/font/BuiltinFont;->parseFont(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    sget-object v3, Lcom/sun/pdfview/font/BuiltinFont;->mappedFonts:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Lcom/sun/pdfview/font/BuiltinFont;->mappedFonts:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/BuiltinFont;->parseFont(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_8
    and-int/lit8 v0, v1, 0x1

    if-lez v0, :cond_9

    const-string v0, "Courier-Bold"

    goto :goto_2

    :cond_9
    and-int/lit8 v0, v1, 0x2

    if-lez v0, :cond_a

    const-string v0, "Courier-Oblique"

    goto :goto_2

    :cond_a
    const-string v0, "Courier"

    goto :goto_2

    :cond_b
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_f

    and-int/lit8 v0, v1, 0x1

    if-lez v0, :cond_c

    and-int/lit8 v0, v1, 0x2

    if-lez v0, :cond_c

    const-string v0, "Times-BoldItalic"

    goto :goto_2

    :cond_c
    and-int/lit8 v0, v1, 0x1

    if-lez v0, :cond_d

    const-string v0, "Times-Bold"

    goto :goto_2

    :cond_d
    and-int/lit8 v0, v1, 0x2

    if-lez v0, :cond_e

    const-string v0, "Times-Italic"

    goto :goto_2

    :cond_e
    const-string v0, "Times-Roman"

    goto :goto_2

    :cond_f
    and-int/lit8 v0, v1, 0x1

    if-lez v0, :cond_10

    and-int/lit8 v0, v1, 0x2

    if-lez v0, :cond_10

    const-string v0, "Helvetica-BoldOblique"

    goto :goto_2

    :cond_10
    and-int/lit8 v0, v1, 0x1

    if-lez v0, :cond_11

    const-string v0, "Helvetica-Bold"

    goto :goto_2

    :cond_11
    and-int/lit8 v0, v1, 0x2

    if-lez v0, :cond_12

    const-string v0, "Helvetica-Oblique"

    goto :goto_2

    :cond_12
    const-string v0, "Helvetica"

    goto :goto_2
.end method

.method private parseFont(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    sget-object v0, Lcom/sun/pdfview/font/BuiltinFont;->props:Ljava/util/Properties;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/sun/pdfview/font/BuiltinFont;->props:Ljava/util/Properties;

    :try_start_0
    sget-object v0, Lcom/sun/pdfview/font/BuiltinFont;->props:Ljava/util/Properties;

    const-class v1, Lcom/sun/pdfview/font/BuiltinFont;

    const-string v3, "res/BaseFonts.properties"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/sun/pdfview/font/BuiltinFont;->props:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown Base Font: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/sun/pdfview/font/BuiltinFont;->props:Ljava/util/Properties;

    sget-object v1, Lcom/sun/pdfview/font/BuiltinFont;->resources:Landroid/content/res/Resources;

    sget-object v3, Lcom/sun/pdfview/font/BuiltinFont;->resources:Landroid/content/res/Resources;

    const-string v4, "basefonts"

    const-string v5, "raw"

    sget-object v6, Lcom/sun/pdfview/font/BuiltinFont;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sun/pdfview/font/BuiltinFont;->props:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/sun/pdfview/font/BuiltinFont;->props:Ljava/util/Properties;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-array v4, v3, [B

    const-class v0, Lcom/sun/pdfview/font/BuiltinFont;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "res/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sun/pdfview/font/BuiltinFont;->resources:Landroid/content/res/Resources;

    sget-object v5, Lcom/sun/pdfview/font/BuiltinFont;->resources:Landroid/content/res/Resources;

    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v6, "raw"

    sget-object v7, Lcom/sun/pdfview/font/BuiltinFont;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    :cond_2
    move v1, v2

    :goto_1
    if-lt v1, v3, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    aget-byte v0, v4, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-ne v0, v1, :cond_4

    const/4 v0, 0x2

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x4

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x5

    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x6

    add-int/lit8 v0, v1, 0x2

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, v1, 0x3

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x4

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x5

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x6

    :goto_2
    invoke-virtual {p0, v4, v1, v0}, Lcom/sun/pdfview/font/BuiltinFont;->parseFont([BII)V

    return-void

    :cond_3
    sub-int v5, v3, v1

    invoke-virtual {v0, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/sun/pdfview/font/BuiltinFont;->props:Ljava/util/Properties;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".length1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v0, Lcom/sun/pdfview/font/BuiltinFont;->props:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".length2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sun/pdfview/font/BuiltinFont;->props:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".lenth2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_5
    sub-int v0, v3, v1

    goto :goto_2
.end method

.method public static setResources(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sun/pdfview/font/BuiltinFont;->resources:Landroid/content/res/Resources;

    sput-object p1, Lcom/sun/pdfview/font/BuiltinFont;->pkg:Ljava/lang/String;

    return-void
.end method
