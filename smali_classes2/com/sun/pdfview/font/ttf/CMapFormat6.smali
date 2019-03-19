.class public Lcom/sun/pdfview/font/ttf/CMapFormat6;
.super Lcom/sun/pdfview/font/ttf/CMap;


# instance fields
.field private entryCount:S

.field private firstCode:S

.field private glyphIndexArray:[S

.field private glyphLookup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Short;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(S)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Lcom/sun/pdfview/font/ttf/CMap;-><init>(SS)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->glyphLookup:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getData()Lc/a/a/b/b;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat6;->getLength()S

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat6;->getFormat()S

    move-result v0

    invoke-virtual {v1, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat6;->getLength()S

    move-result v0

    invoke-virtual {v1, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat6;->getLanguage()S

    move-result v0

    invoke-virtual {v1, v0}, Lc/a/a/b/b;->a(S)V

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->firstCode:S

    invoke-virtual {v1, v0}, Lc/a/a/b/b;->a(S)V

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->entryCount:S

    invoke-virtual {v1, v0}, Lc/a/a/b/b;->a(S)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->glyphIndexArray:[S

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Lc/a/a/b/b;->j()V

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->glyphIndexArray:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Lc/a/a/b/b;->a(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLength()S
    .locals 2

    const/16 v0, 0xa

    iget-short v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->entryCount:S

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public map(B)B
    .locals 2

    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/CMapFormat6;->map(C)C

    move-result v0

    const/16 v1, -0x80

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    int-to-byte v0, v0

    goto :goto_0
.end method

.method public map(C)C
    .locals 2

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->firstCode:S

    if-lt p1, v0, :cond_0

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->firstCode:S

    iget-short v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->entryCount:S

    add-int/2addr v0, v1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->glyphIndexArray:[S

    iget-short v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->firstCode:S

    sub-int v1, p1, v1

    aget-short v0, v0, v1

    int-to-char v0, v0

    goto :goto_0
.end method

.method public reverseMap(S)C
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->glyphLookup:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Short;

    invoke-direct {v1, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    int-to-char v0, v0

    goto :goto_0
.end method

.method public setData(ILc/a/a/b/b;)V
    .locals 5

    invoke-virtual {p2}, Lc/a/a/b/b;->o()S

    move-result v0

    iput-short v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->firstCode:S

    invoke-virtual {p2}, Lc/a/a/b/b;->o()S

    move-result v0

    iput-short v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->entryCount:S

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->entryCount:S

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->glyphIndexArray:[S

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->glyphIndexArray:[S

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->glyphIndexArray:[S

    invoke-virtual {p2}, Lc/a/a/b/b;->o()S

    move-result v2

    aput-short v2, v1, v0

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->glyphLookup:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Short;

    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->glyphIndexArray:[S

    aget-short v3, v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    new-instance v3, Ljava/lang/Short;

    iget-short v4, p0, Lcom/sun/pdfview/font/ttf/CMapFormat6;->firstCode:S

    add-int/2addr v4, v0

    int-to-short v4, v4

    invoke-direct {v3, v4}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
