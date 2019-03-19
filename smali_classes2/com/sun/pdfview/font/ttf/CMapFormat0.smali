.class public Lcom/sun/pdfview/font/ttf/CMapFormat0;
.super Lcom/sun/pdfview/font/ttf/CMap;


# instance fields
.field private glyphIndex:[B


# direct methods
.method protected constructor <init>(S)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sun/pdfview/font/ttf/CMap;-><init>(SS)V

    const/16 v1, 0x100

    new-array v1, v1, [B

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/CMapFormat0;->setMap([B)V

    return-void

    :cond_0
    int-to-byte v2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getData()Lc/a/a/b/b;
    .locals 2

    const/16 v0, 0x106

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat0;->getFormat()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat0;->getLength()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat0;->getLanguage()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat0;->getMap()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->c([B)V

    invoke-virtual {v0}, Lc/a/a/b/b;->j()V

    return-object v0
.end method

.method public getLength()S
    .locals 1

    const/16 v0, 0x106

    return v0
.end method

.method protected getMap()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat0;->glyphIndex:[B

    return-object v0
.end method

.method public map(B)B
    .locals 2

    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat0;->glyphIndex:[B

    aget-byte v0, v1, v0

    return v0
.end method

.method public map(C)C
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/CMapFormat0;->map(B)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    goto :goto_0
.end method

.method public reverseMap(S)C
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/CMapFormat0;->glyphIndex:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    :goto_1
    return v1

    :cond_0
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/CMapFormat0;->glyphIndex:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    if-ne v2, p1, :cond_1

    int-to-char v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setData(ILc/a/a/b/b;)V
    .locals 2

    const/16 v1, 0x100

    const/16 v0, 0x106

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad length for CMap format 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lc/a/a/b/b;->c()I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong amount of data for CMap format 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v0, v1, [B

    invoke-virtual {p2, v0}, Lc/a/a/b/b;->a([B)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/CMapFormat0;->setMap([B)V

    return-void
.end method

.method public setMap(BB)V
    .locals 2

    and-int/lit16 v0, p1, 0xff

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat0;->glyphIndex:[B

    aput-byte p2, v1, v0

    return-void
.end method

.method public setMap([B)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Glyph map must be size 256!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat0;->glyphIndex:[B

    return-void
.end method
