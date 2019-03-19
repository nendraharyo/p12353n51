.class public abstract Lcom/sun/pdfview/font/PDFFont;
.super Ljava/lang/Object;


# static fields
.field public static sUseFontSubstitution:Z


# instance fields
.field private baseFont:Ljava/lang/String;

.field private charCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Lcom/sun/pdfview/font/PDFGlyph;",
            ">;"
        }
    .end annotation
.end field

.field private descriptor:Lcom/sun/pdfview/font/PDFFontDescriptor;

.field private encoding:Lcom/sun/pdfview/font/PDFFontEncoding;

.field private subtype:Ljava/lang/String;

.field private unicodeMap:Lcom/sun/pdfview/font/PDFCMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/pdfview/font/PDFFont;->sUseFontSubstitution:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/sun/pdfview/font/PDFFontDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/PDFFont;->setBaseFont(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sun/pdfview/font/PDFFont;->setDescriptor(Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    return-void
.end method

.method public static declared-synchronized getFont(Lcom/sun/pdfview/PDFObject;Ljava/util/HashMap;)Lcom/sun/pdfview/font/PDFFont;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/pdfview/PDFObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/pdfview/PDFObject;",
            ">;)",
            "Lcom/sun/pdfview/font/PDFFont;"
        }
    .end annotation

    const/4 v1, 0x0

    const-class v5, Lcom/sun/pdfview/font/PDFFont;

    monitor-enter v5

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/PDFFont;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v5

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "Subtype"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    const-string v0, "S"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_1
    const-string v0, "BaseFont"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    const-string v2, "Encoding"

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    const-string v3, "FontDescriptor"

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v6

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_2
    if-eqz v2, :cond_d

    new-instance v0, Lcom/sun/pdfview/font/PDFFontEncoding;

    invoke-direct {v0, v4, v2}, Lcom/sun/pdfview/font/PDFFontEncoding;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;)V

    move-object v2, v0

    :goto_3
    if-eqz v6, :cond_2

    new-instance v0, Lcom/sun/pdfview/font/PDFFontDescriptor;

    invoke-direct {v0, v6}, Lcom/sun/pdfview/font/PDFFontDescriptor;-><init>(Lcom/sun/pdfview/PDFObject;)V

    move-object v1, v0

    :goto_4
    const-string v0, "Type0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sun/pdfview/font/Type0Font;

    invoke-direct {v0, v3, p0, v1}, Lcom/sun/pdfview/font/Type0Font;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    :goto_5
    invoke-virtual {v0, v4}, Lcom/sun/pdfview/font/PDFFont;->setSubtype(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/sun/pdfview/font/PDFFont;->setEncoding(Lcom/sun/pdfview/font/PDFFontEncoding;)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->setCache(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_1
    :try_start_2
    const-string v0, "Name"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/sun/pdfview/font/PDFFontDescriptor;

    invoke-direct {v0, v3}, Lcom/sun/pdfview/font/PDFFontDescriptor;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_4

    :cond_3
    const-string v0, "Type1"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v1, :cond_4

    new-instance v0, Lcom/sun/pdfview/font/BuiltinFont;

    invoke-direct {v0, v3, p0}, Lcom/sun/pdfview/font/BuiltinFont;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;)V

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getFontFile()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/sun/pdfview/font/Type1Font;

    invoke-direct {v0, v3, p0, v1}, Lcom/sun/pdfview/font/Type1Font;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getFontFile3()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/sun/pdfview/font/Type1CFont;

    invoke-direct {v0, v3, p0, v1}, Lcom/sun/pdfview/font/Type1CFont;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    goto :goto_5

    :cond_6
    new-instance v0, Lcom/sun/pdfview/font/BuiltinFont;

    invoke-direct {v0, v3, p0, v1}, Lcom/sun/pdfview/font/BuiltinFont;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    goto :goto_5

    :cond_7
    const-string v0, "TrueType"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lcom/sun/pdfview/font/PDFFontDescriptor;->getFontFile2()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/sun/pdfview/font/TTFFont;

    invoke-direct {v0, v3, p0, v1}, Lcom/sun/pdfview/font/TTFFont;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    goto :goto_5

    :cond_8
    new-instance v0, Lcom/sun/pdfview/font/BuiltinFont;

    invoke-direct {v0, v3, p0, v1}, Lcom/sun/pdfview/font/BuiltinFont;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    goto :goto_5

    :cond_9
    const-string v0, "Type3"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Lcom/sun/pdfview/font/Type3Font;

    invoke-direct {v0, v3, p0, p1, v1}, Lcom/sun/pdfview/font/Type3Font;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Ljava/util/HashMap;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    goto :goto_5

    :cond_a
    const-string v0, "CIDFontType2"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/sun/pdfview/font/CIDFontType2;

    invoke-direct {v0, v3, p0, v1}, Lcom/sun/pdfview/font/CIDFontType2;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    goto/16 :goto_5

    :cond_b
    const-string v0, "CIDFontType0"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/sun/pdfview/font/CIDFontType2;

    invoke-direct {v0, v3, p0, v1}, Lcom/sun/pdfview/font/CIDFontType2;-><init>(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/font/PDFFontDescriptor;)V

    goto/16 :goto_5

    :cond_c
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t know how to handle a \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' font"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    move-object v2, v1

    goto/16 :goto_3

    :cond_e
    move-object v3, v1

    goto/16 :goto_2

    :cond_f
    move-object v4, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sun/pdfview/font/PDFFont;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/sun/pdfview/font/PDFFont;

    invoke-virtual {p1}, Lcom/sun/pdfview/font/PDFFont;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/PDFFont;->getBaseFont()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getBaseFont()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFont;->baseFont:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedGlyph(CLjava/lang/String;)Lcom/sun/pdfview/font/PDFGlyph;
    .locals 3

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFont;->charCache:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/font/PDFFont;->charCache:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFont;->charCache:Ljava/util/Map;

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/PDFGlyph;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sun/pdfview/font/PDFFont;->getGlyph(CLjava/lang/String;)Lcom/sun/pdfview/font/PDFGlyph;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/font/PDFFont;->charCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getDescriptor()Lcom/sun/pdfview/font/PDFFontDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFont;->descriptor:Lcom/sun/pdfview/font/PDFFontDescriptor;

    return-object v0
.end method

.method public getEncoding()Lcom/sun/pdfview/font/PDFFontEncoding;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFont;->encoding:Lcom/sun/pdfview/font/PDFFontEncoding;

    return-object v0
.end method

.method protected abstract getGlyph(CLjava/lang/String;)Lcom/sun/pdfview/font/PDFGlyph;
.end method

.method public getGlyphs(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sun/pdfview/font/PDFGlyph;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFont;->encoding:Lcom/sun/pdfview/font/PDFFontEncoding;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFont;->encoding:Lcom/sun/pdfview/font/PDFFontEncoding;

    invoke-virtual {v0, p0, p1}, Lcom/sun/pdfview/font/PDFFontEncoding;->getGlyphs(Lcom/sun/pdfview/font/PDFFont;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    aget-char v3, v2, v0

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sun/pdfview/font/PDFFont;->getCachedGlyph(CLjava/lang/String;)Lcom/sun/pdfview/font/PDFGlyph;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFont;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public getUnicodeMap()Lcom/sun/pdfview/font/PDFCMap;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFFont;->unicodeMap:Lcom/sun/pdfview/font/PDFCMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/pdfview/font/PDFFont;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setBaseFont(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFont;->baseFont:Ljava/lang/String;

    return-void
.end method

.method public setDescriptor(Lcom/sun/pdfview/font/PDFFontDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFont;->descriptor:Lcom/sun/pdfview/font/PDFFontDescriptor;

    return-void
.end method

.method public setEncoding(Lcom/sun/pdfview/font/PDFFontEncoding;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFont;->encoding:Lcom/sun/pdfview/font/PDFFontEncoding;

    return-void
.end method

.method public setSubtype(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFont;->subtype:Ljava/lang/String;

    return-void
.end method

.method public setUnicodeMap(Lcom/sun/pdfview/font/PDFCMap;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/PDFFont;->unicodeMap:Lcom/sun/pdfview/font/PDFCMap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/pdfview/font/PDFFont;->getBaseFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
