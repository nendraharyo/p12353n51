.class public Lcom/sun/pdfview/font/ttf/GlyfSimple;
.super Lcom/sun/pdfview/font/ttf/Glyf;


# instance fields
.field private contourEndPts:[S

.field private flags:[B

.field private instructions:[B

.field private xCoords:[S

.field private yCoords:[S


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/pdfview/font/ttf/Glyf;-><init>()V

    return-void
.end method


# virtual methods
.method public getContourEndPoint(I)S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfSimple;->contourEndPts:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public getData()Lc/a/a/b/b;
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sun/pdfview/font/ttf/Glyf;->getData()Lc/a/a/b/b;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumContours()S

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumInstructions()S

    move-result v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(S)V

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumInstructions()S

    move-result v2

    if-lt v0, v2, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumPoints()S

    move-result v2

    if-lt v0, v2, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumPoints()S

    move-result v2

    if-lt v0, v2, :cond_6

    :goto_4
    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumPoints()S

    move-result v0

    if-lt v1, v0, :cond_9

    return-object v3

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getContourEndPoint(I)S

    move-result v2

    invoke-virtual {v3, v2}, Lc/a/a/b/b;->a(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getInstruction(I)B

    move-result v2

    invoke-virtual {v3, v2}, Lc/a/a/b/b;->a(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    move v0, v1

    :goto_5
    if-lez v2, :cond_3

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getFlag(I)B

    move-result v4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getFlag(I)B

    move-result v5

    if-eq v4, v5, :cond_4

    :cond_3
    if-lez v0, :cond_5

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(B)V

    :goto_6
    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getFlag(I)B

    move-result v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(B)V

    goto :goto_6

    :cond_6
    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->xIsByte(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getXCoord(I)S

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {v3, v2}, Lc/a/a/b/b;->a(B)V

    :cond_7
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->xIsSame(I)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getXCoord(I)S

    move-result v2

    invoke-virtual {v3, v2}, Lc/a/a/b/b;->a(S)V

    goto :goto_7

    :cond_9
    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->yIsByte(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getYCoord(I)S

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(B)V

    :cond_a
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->yIsSame(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getYCoord(I)S

    move-result v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(S)V

    goto :goto_8
.end method

.method public getFlag(I)B
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfSimple;->flags:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getInstruction(I)B
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfSimple;->instructions:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getLength()S
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/sun/pdfview/font/ttf/Glyf;->getLength()S

    move-result v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumContours()S

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-short v0, v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumInstructions()S

    move-result v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-short v0, v0

    move v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumPoints()S

    move-result v3

    if-lt v0, v3, :cond_0

    :goto_1
    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumPoints()S

    move-result v0

    if-lt v1, v0, :cond_2

    return v2

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getFlag(I)B

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getFlag(I)B

    move-result v4

    if-eq v3, v4, :cond_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->xIsByte(I)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v2, 0x1

    int-to-short v2, v0

    :cond_3
    :goto_2
    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->yIsByte(I)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v2, 0x1

    int-to-short v2, v0

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->xIsSame(I)Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, v2, 0x2

    int-to-short v2, v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->yIsSame(I)Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v0, v2, 0x2

    int-to-short v2, v0

    goto :goto_3
.end method

.method public getNumInstructions()S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfSimple;->instructions:[B

    array-length v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getNumPoints()S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfSimple;->flags:[B

    array-length v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getXCoord(I)S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfSimple;->xCoords:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public getYCoord(I)S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/GlyfSimple;->yCoords:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public onCurve(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getFlag(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected repeat(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getFlag(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setContourEndPoints([S)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/GlyfSimple;->contourEndPts:[S

    return-void
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumContours()S

    move-result v0

    new-array v2, v0, [S

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->setContourEndPoints([S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getNumContours()S

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getContourEndPoint(I)S

    move-result v0

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Lc/a/a/b/b;->a([B)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->setInstructions([B)V

    new-array v5, v4, [B

    array-length v6, v5

    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_1

    invoke-virtual {p0, v5}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->setFlags([B)V

    new-array v3, v4, [S

    array-length v5, v3

    move v2, v1

    :goto_2
    if-lt v2, v5, :cond_4

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->setXCoords([S)V

    new-array v2, v4, [S

    array-length v3, v2

    :goto_3
    if-lt v1, v3, :cond_9

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->setYCoords([S)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v4

    aput-short v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v2

    aput-byte v2, v5, v0

    aget-byte v2, v5, v0

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_2

    aget-byte v7, v5, v0

    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v2

    and-int/lit16 v8, v2, 0xff

    move v2, v1

    :goto_4
    if-lt v2, v8, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v0, 0x1

    aput-byte v7, v5, v3

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_4

    :cond_4
    if-lez v2, :cond_5

    add-int/lit8 v0, v2, -0x1

    aget-short v0, v3, v0

    aput-short v0, v3, v2

    :cond_5
    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->xIsByte(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->xIsSame(I)Z

    move-result v6

    if-nez v6, :cond_6

    neg-int v0, v0

    :cond_6
    aget-short v6, v3, v2

    add-int/2addr v0, v6

    int-to-short v0, v0

    aput-short v0, v3, v2

    :cond_7
    :goto_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v2}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->xIsSame(I)Z

    move-result v0

    if-nez v0, :cond_7

    aget-short v0, v3, v2

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v6

    add-int/2addr v0, v6

    int-to-short v0, v0

    aput-short v0, v3, v2

    goto :goto_5

    :cond_9
    if-lez v1, :cond_a

    add-int/lit8 v0, v1, -0x1

    aget-short v0, v2, v0

    aput-short v0, v2, v1

    :cond_a
    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->yIsByte(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->yIsSame(I)Z

    move-result v4

    if-nez v4, :cond_b

    neg-int v0, v0

    :cond_b
    aget-short v4, v2, v1

    add-int/2addr v0, v4

    int-to-short v0, v0

    aput-short v0, v2, v1

    :cond_c
    :goto_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_d
    invoke-virtual {p0, v1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->yIsSame(I)Z

    move-result v0

    if-nez v0, :cond_c

    aget-short v0, v2, v1

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v4

    add-int/2addr v0, v4

    int-to-short v0, v0

    aput-short v0, v2, v1

    goto :goto_6
.end method

.method protected setFlags([B)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/GlyfSimple;->flags:[B

    return-void
.end method

.method protected setInstructions([B)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/GlyfSimple;->instructions:[B

    return-void
.end method

.method protected setXCoords([S)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/GlyfSimple;->xCoords:[S

    return-void
.end method

.method protected setYCoords([S)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/GlyfSimple;->yCoords:[S

    return-void
.end method

.method protected xIsByte(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getFlag(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected xIsSame(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getFlag(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected yIsByte(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getFlag(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected yIsSame(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getFlag(I)B

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
