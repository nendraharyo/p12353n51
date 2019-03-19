.class public Lcom/sun/pdfview/font/ttf/LocaTable;
.super Lcom/sun/pdfview/font/ttf/TrueTypeTable;


# instance fields
.field private isLong:Z

.field private offsets:[I


# direct methods
.method protected constructor <init>(Lcom/sun/pdfview/font/ttf/TrueTypeFont;)V
    .locals 3

    const/4 v1, 0x1

    const v0, 0x6c6f6361

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;-><init>(I)V

    const-string v0, "maxp"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/MaxpTable;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;->getNumGlyphs()I

    move-result v2

    const-string v0, "head"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/HeadTable;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/HeadTable;->getIndexToLocFormat()S

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->isLong:Z

    add-int/lit8 v0, v2, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->offsets:[I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getData()Lc/a/a/b/b;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/LocaTable;->getLength()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->offsets:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Lc/a/a/b/b;->j()V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/LocaTable;->isLongFormat()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->offsets:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Lc/a/a/b/b;->f(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->offsets:[I

    aget v2, v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    invoke-virtual {v1, v2}, Lc/a/a/b/b;->a(S)V

    goto :goto_1
.end method

.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/LocaTable;->isLongFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->offsets:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->offsets:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->offsets:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSize(I)I
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->offsets:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->offsets:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    return v0
.end method

.method public isLongFormat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->isLong:Z

    return v0
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->offsets:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/LocaTable;->isLongFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->offsets:[I

    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v2

    aput v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/LocaTable;->offsets:[I

    const v2, 0xffff

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v3

    and-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    aput v2, v1, v0

    goto :goto_1
.end method
