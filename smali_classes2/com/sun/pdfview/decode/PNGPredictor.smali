.class public Lcom/sun/pdfview/decode/PNGPredictor;
.super Lcom/sun/pdfview/decode/Predictor;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decode/Predictor;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doAverageLine([B[B)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/pdfview/decode/PNGPredictor;->getBitsPerComponent()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/pdfview/decode/PNGPredictor;->getColors()I

    move-result v2

    mul-int/2addr v0, v2

    int-to-double v2, v0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v4, v2

    move v0, v1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    sub-int v2, v0, v4

    if-ltz v2, :cond_2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    move v3, v2

    :goto_1
    if-eqz p2, :cond_1

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    :goto_2
    aget-byte v5, p1, v0

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    add-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_2

    :cond_2
    move v3, v1

    goto :goto_1
.end method

.method protected doPaethLine([B[B)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/pdfview/decode/PNGPredictor;->getBitsPerComponent()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/pdfview/decode/PNGPredictor;->getColors()I

    move-result v2

    mul-int/2addr v0, v2

    int-to-double v2, v0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v5, v2

    move v0, v1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    sub-int v6, v0, v5

    if-ltz v6, :cond_3

    aget-byte v2, p1, v6

    and-int/lit16 v2, v2, 0xff

    move v4, v2

    :goto_1
    if-eqz p2, :cond_2

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    move v3, v2

    :goto_2
    if-lez v6, :cond_1

    if-eqz p2, :cond_1

    aget-byte v2, p2, v6

    and-int/lit16 v2, v2, 0xff

    :goto_3
    aget-byte v6, p1, v0

    invoke-virtual {p0, v4, v3, v2}, Lcom/sun/pdfview/decode/PNGPredictor;->paeth(III)I

    move-result v2

    int-to-byte v2, v2

    add-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_3

    :cond_2
    move v3, v1

    goto :goto_2

    :cond_3
    move v4, v1

    goto :goto_1
.end method

.method protected doSubLine([B)V
    .locals 4

    invoke-virtual {p0}, Lcom/sun/pdfview/decode/PNGPredictor;->getBitsPerComponent()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/pdfview/decode/PNGPredictor;->getColors()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    sub-int v2, v0, v1

    if-ltz v2, :cond_1

    aget-byte v3, p1, v0

    aget-byte v2, p1, v2

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected doUpLine([B[B)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected paeth(III)I
    .locals 3

    add-int v0, p1, p2

    sub-int/2addr v0, p3

    sub-int v1, v0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v2, v0, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v1, v2, :cond_0

    if-gt v1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    if-gt v2, v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p3

    goto :goto_0
.end method

.method public unpredict(Lc/a/a/b/b;)Lc/a/a/b/b;
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    check-cast v0, [B

    check-cast v1, [B

    invoke-virtual {p0}, Lcom/sun/pdfview/decode/PNGPredictor;->getColumns()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/pdfview/decode/PNGPredictor;->getColors()I

    move-result v3

    mul-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/sun/pdfview/decode/PNGPredictor;->getBitsPerComponent()I

    move-result v3

    mul-int/2addr v0, v3

    int-to-double v4, v0

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    :goto_0
    invoke-virtual {p1}, Lc/a/a/b/b;->c()I

    move-result v0

    add-int/lit8 v4, v3, 0x1

    if-ge v0, v4, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    mul-int/2addr v0, v3

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lc/a/a/b/b;->j()V

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v0

    and-int/lit16 v4, v0, 0xff

    new-array v0, v3, [B

    invoke-virtual {p1, v0}, Lc/a/a/b/b;->a([B)V

    packed-switch v4, :pswitch_data_0

    :goto_2
    :pswitch_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/sun/pdfview/decode/PNGPredictor;->doSubLine([B)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0, v0, v1}, Lcom/sun/pdfview/decode/PNGPredictor;->doUpLine([B[B)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, v0, v1}, Lcom/sun/pdfview/decode/PNGPredictor;->doAverageLine([B[B)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v0, v1}, Lcom/sun/pdfview/decode/PNGPredictor;->doPaethLine([B[B)V

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lc/a/a/b/b;->c([B)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
