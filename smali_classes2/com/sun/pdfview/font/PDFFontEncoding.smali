.class public Lcom/sun/pdfview/font/PDFFontEncoding;
.super Ljava/lang/Object;


# static fields
.field private static final TYPE_CMAP:I = 0x1

.field private static final TYPE_ENCODING:I


# instance fields
.field private baseEncoding:[I

.field private cmap:Lcom/sun/pdfview/font/PDFCMap;

.field private differences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string v0, "Type0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->type:I

    invoke-virtual {p2}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/pdfview/font/PDFCMap;->getCMap(Ljava/lang/String;)Lcom/sun/pdfview/font/PDFCMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->cmap:Lcom/sun/pdfview/font/PDFCMap;

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->type:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->differences:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/PDFFontEncoding;->getBaseEncoding(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->baseEncoding:[I

    goto :goto_0

    :cond_1
    const-string v0, "Type"

    invoke-virtual {p2, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Encoding"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v2, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->type:I

    invoke-virtual {p0, p2}, Lcom/sun/pdfview/font/PDFFontEncoding;->parseEncoding(Lcom/sun/pdfview/PDFObject;)V

    goto :goto_0

    :cond_2
    const-string v1, "CMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->type:I

    invoke-static {p2}, Lcom/sun/pdfview/font/PDFCMap;->getCMap(Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/font/PDFCMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->cmap:Lcom/sun/pdfview/font/PDFCMap;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Uknown encoding type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBaseEncoding(Ljava/lang/String;)[I
    .locals 3

    const-string v0, "MacRomanEncoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/pdfview/font/FontSupport;->macRomanEncoding:[I

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MacExpertEncoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sun/pdfview/font/FontSupport;->type1CExpertCharset:[I

    goto :goto_0

    :cond_1
    const-string v0, "WinAnsiEncoding"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sun/pdfview/font/FontSupport;->winAnsiEncoding:[I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getGlyphFromCMap(Lcom/sun/pdfview/font/PDFFont;C)Lcom/sun/pdfview/font/PDFGlyph;
    .locals 3

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->cmap:Lcom/sun/pdfview/font/PDFCMap;

    invoke-virtual {v0, p2}, Lcom/sun/pdfview/font/PDFCMap;->getFontID(C)I

    move-result v0

    iget-object v1, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->cmap:Lcom/sun/pdfview/font/PDFCMap;

    invoke-virtual {v1, p2}, Lcom/sun/pdfview/font/PDFCMap;->map(C)C

    move-result v1

    instance-of v2, p1, Lcom/sun/pdfview/font/Type0Font;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/sun/pdfview/font/Type0Font;

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/font/Type0Font;->getDescendantFont(I)Lcom/sun/pdfview/font/PDFFont;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/sun/pdfview/font/PDFFont;->getCachedGlyph(CLjava/lang/String;)Lcom/sun/pdfview/font/PDFGlyph;

    move-result-object v0

    return-object v0
.end method

.method private getGlyphFromEncoding(Lcom/sun/pdfview/font/PDFFont;C)Lcom/sun/pdfview/font/PDFGlyph;
    .locals 4

    const/4 v0, 0x0

    and-int/lit16 v1, p2, 0xff

    int-to-char v1, v1

    iget-object v2, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->differences:Ljava/util/Map;

    new-instance v3, Ljava/lang/Character;

    invoke-direct {v3, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->differences:Ljava/util/Map;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, v1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/sun/pdfview/font/PDFFont;->getCachedGlyph(CLjava/lang/String;)Lcom/sun/pdfview/font/PDFGlyph;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->baseEncoding:[I

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->baseEncoding:[I

    aget v0, v0, v1

    invoke-static {v0}, Lcom/sun/pdfview/font/FontSupport;->getName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getGlyphs(Lcom/sun/pdfview/font/PDFFont;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/pdfview/font/PDFFont;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sun/pdfview/font/PDFGlyph;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    array-length v1, v4

    if-lt v0, v1, :cond_0

    return-object v3

    :cond_0
    iget v1, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->type:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    aget-char v1, v4, v0

    invoke-direct {p0, p1, v1}, Lcom/sun/pdfview/font/PDFFontEncoding;->getGlyphFromEncoding(Lcom/sun/pdfview/font/PDFFont;C)Lcom/sun/pdfview/font/PDFGlyph;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    aget-char v1, v4, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-char v1, v1

    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-char v0, v4, v2

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    or-int/2addr v0, v1

    int-to-char v0, v0

    move v1, v2

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/sun/pdfview/font/PDFFontEncoding;->getGlyphFromCMap(Lcom/sun/pdfview/font/PDFFont;C)Lcom/sun/pdfview/font/PDFGlyph;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    :cond_1
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseEncoding(Lcom/sun/pdfview/PDFObject;)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->differences:Ljava/util/Map;

    const-string v0, "BaseEncoding"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/PDFFontEncoding;->getBaseEncoding(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->baseEncoding:[I

    :cond_0
    const-string v0, "Differences"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_2

    :cond_1
    return-void

    :cond_2
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    aget-object v1, v2, v0

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-object v3, v2, v0

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    new-instance v3, Ljava/lang/Character;

    int-to-char v4, v1

    invoke-direct {v3, v4}, Ljava/lang/Character;-><init>(C)V

    iget-object v4, p0, Lcom/sun/pdfview/font/PDFFontEncoding;->differences:Ljava/util/Map;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected type in diff array: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
