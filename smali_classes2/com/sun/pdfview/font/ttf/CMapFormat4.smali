.class public Lcom/sun/pdfview/font/ttf/CMapFormat4;
.super Lcom/sun/pdfview/font/ttf/CMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;
    }
.end annotation


# instance fields
.field public segments:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(S)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/sun/pdfview/font/ttf/CMap;-><init>(SS)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    const/4 v0, 0x1

    new-array v0, v0, [C

    aput-char v2, v0, v2

    invoke-virtual {p0, v1, v1, v0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->addSegment(SS[C)V

    return-void
.end method


# virtual methods
.method public addSegment(SSS)V
    .locals 3

    new-instance v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;-><init>(Lcom/sun/pdfview/font/ttf/CMapFormat4;SSZ)V

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v0, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSegment(SS[C)V
    .locals 2

    array-length v0, p3

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong number of entries in map"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;-><init>(Lcom/sun/pdfview/font/ttf/CMapFormat4;SSZ)V

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v1, v0, p3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getData()Lc/a/a/b/b;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getLength()S

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getFormat()S

    move-result v0

    invoke-virtual {v4, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getLength()S

    move-result v0

    invoke-virtual {v4, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getLanguage()S

    move-result v0

    invoke-virtual {v4, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getSegmentCount()S

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    invoke-virtual {v4, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getSearchRange()S

    move-result v0

    invoke-virtual {v4, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getEntrySelector()S

    move-result v0

    invoke-virtual {v4, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getRangeShift()S

    move-result v0

    invoke-virtual {v4, v0}, Lc/a/a/b/b;->a(S)V

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4, v3}, Lc/a/a/b/b;->a(S)V

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getSegmentCount()S

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4, v1}, Lc/a/a/b/b;->a(I)V

    invoke-virtual {v4}, Lc/a/a/b/b;->j()V

    return-object v4

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    iget v0, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    int-to-short v0, v0

    invoke-virtual {v4, v0}, Lc/a/a/b/b;->a(S)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    iget v0, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->startCode:I

    int-to-short v0, v0

    invoke-virtual {v4, v0}, Lc/a/a/b/b;->a(S)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    iget-boolean v2, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->hasMap:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->shortValue()S

    move-result v0

    invoke-virtual {v4, v0}, Lc/a/a/b/b;->a(S)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4, v3}, Lc/a/a/b/b;->a(S)V

    goto :goto_2

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    iget-boolean v2, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->hasMap:Z

    if-eqz v2, :cond_6

    invoke-virtual {v4}, Lc/a/a/b/b;->a()I

    move-result v2

    sub-int v2, v1, v2

    int-to-short v2, v2

    invoke-virtual {v4, v2}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v4}, Lc/a/a/b/b;->p()V

    invoke-virtual {v4, v1}, Lc/a/a/b/b;->a(I)V

    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    move v2, v3

    :goto_4
    array-length v6, v0

    if-lt v2, v6, :cond_5

    invoke-virtual {v4}, Lc/a/a/b/b;->q()V

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_3

    :cond_5
    aget-char v6, v0, v2

    invoke-virtual {v4, v6}, Lc/a/a/b/b;->a(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v4, v3}, Lc/a/a/b/b;->a(S)V

    goto :goto_3
.end method

.method public getEntrySelector()S
    .locals 4

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getSearchRange()S

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getLength()S
    .locals 4

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    int-to-short v0, v0

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    iget-boolean v3, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->hasMap:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-short v0, v0

    move v1, v0

    goto :goto_0
.end method

.method public getRangeShift()S
    .locals 2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getSegmentCount()S

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getSearchRange()S

    move-result v1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public getSearchRange()S
    .locals 6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getSegmentCount()S

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getSegmentCount()S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public map(B)B
    .locals 2

    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->map(C)C

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
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    iget v3, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    if-lt v3, p1, :cond_0

    iget v2, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->startCode:I

    if-gt v2, p1, :cond_3

    iget-boolean v1, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->hasMap:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iget v0, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->startCode:I

    sub-int v0, p1, v0

    aget-char v0, v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p1

    int-to-char v0, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public removeSegment(SS)V
    .locals 2

    new-instance v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;-><init>(Lcom/sun/pdfview/font/ttf/CMapFormat4;SSZ)V

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reverseMap(S)C
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v3

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    iget-boolean v1, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->hasMap:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    move v2, v3

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_0

    aget-char v5, v1, v2

    if-ne v5, p1, :cond_2

    iget v0, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->startCode:I

    add-int/2addr v0, v2

    int-to-char v3, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget v2, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->startCode:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v2, v5

    iget v0, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v0, v5

    if-lt p1, v2, :cond_0

    if-gt p1, v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, p1, v0

    int-to-char v3, v0

    goto :goto_0
.end method

.method public setData(ILc/a/a/b/b;)V
    .locals 12

    const/4 v1, 0x0

    invoke-virtual {p2}, Lc/a/a/b/b;->o()S

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-short v3, v0

    invoke-virtual {p2}, Lc/a/a/b/b;->o()S

    invoke-virtual {p2}, Lc/a/a/b/b;->o()S

    invoke-virtual {p2}, Lc/a/a/b/b;->o()S

    new-array v4, v3, [S

    new-array v5, v3, [S

    new-array v6, v3, [S

    new-array v7, v3, [S

    mul-int/lit8 v0, v3, 0x8

    add-int/lit8 v0, v0, 0x10

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_0

    invoke-virtual {p2}, Lc/a/a/b/b;->o()S

    move v0, v1

    :goto_1
    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_2
    if-lt v0, v3, :cond_2

    move v2, v1

    :goto_3
    if-lt v2, v3, :cond_3

    return-void

    :cond_0
    invoke-virtual {p2}, Lc/a/a/b/b;->o()S

    move-result v2

    aput-short v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lc/a/a/b/b;->o()S

    move-result v2

    aput-short v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lc/a/a/b/b;->o()S

    move-result v2

    aput-short v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lc/a/a/b/b;->o()S

    move-result v0

    aput-short v0, v7, v2

    aget-short v0, v7, v2

    if-gtz v0, :cond_4

    aget-short v0, v5, v2

    aget-short v8, v4, v2

    aget-short v9, v6, v2

    invoke-virtual {p0, v0, v8, v9}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->addSegment(SSS)V

    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lc/a/a/b/b;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    aget-short v8, v7, v2

    add-int/2addr v8, v0

    aget-short v0, v4, v2

    aget-short v9, v5, v2

    sub-int/2addr v0, v9

    add-int/lit8 v9, v0, 0x1

    new-array v10, v9, [C

    invoke-virtual {p2}, Lc/a/a/b/b;->p()V

    move v0, v1

    :goto_5
    if-lt v0, v9, :cond_5

    invoke-virtual {p2}, Lc/a/a/b/b;->q()V

    aget-short v0, v5, v2

    aget-short v8, v4, v2

    invoke-virtual {p0, v0, v8, v10}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->addSegment(SS[C)V

    goto :goto_4

    :cond_5
    mul-int/lit8 v11, v0, 0x2

    add-int/2addr v11, v8

    invoke-virtual {p2, v11}, Lc/a/a/b/b;->a(I)V

    invoke-virtual {p2}, Lc/a/a/b/b;->n()C

    move-result v11

    aput-char v11, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "        "

    invoke-super {p0}, Lcom/sun/pdfview/font/ttf/CMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SegmentCount : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getSegmentCount()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "SearchRange  : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getSearchRange()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "EntrySelector: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getEntrySelector()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "RangeShift   : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMapFormat4;->getRangeShift()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Segment: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->startCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hasMap: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->hasMap:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v4, v0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->hasMap:Z

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "delta: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4;->segments:Ljava/util/SortedMap;

    invoke-interface {v5, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
