.class public Lcom/sun/pdfview/PDFPage;
.super Ljava/lang/Object;


# static fields
.field private static lastRenderedCommand:I

.field private static parsedCommands:I


# instance fields
.field private bbox:Landroid/graphics/RectF;

.field private cache:Lcom/sun/pdfview/Cache;

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/pdfview/PDFCmd;",
            ">;"
        }
    .end annotation
.end field

.field private finished:Z

.field private pageNumber:I

.field private final renderers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/pdfview/ImageInfo;",
            "Lc/a/a/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private rotation:I


# direct methods
.method public constructor <init>(ILandroid/graphics/RectF;ILcom/sun/pdfview/Cache;)V
    .locals 6

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/PDFPage;->commands:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/pdfview/PDFPage;->finished:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/PDFPage;->renderers:Ljava/util/Map;

    iput p1, p0, Lcom/sun/pdfview/PDFPage;->pageNumber:I

    iput-object p4, p0, Lcom/sun/pdfview/PDFPage;->cache:Lcom/sun/pdfview/Cache;

    if-nez p2, :cond_3

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_0
    if-gez p3, :cond_0

    add-int/lit16 p3, p3, 0x168

    :cond_0
    iput p3, p0, Lcom/sun/pdfview/PDFPage;->rotation:I

    const/16 v1, 0x5a

    if-eq p3, v1, :cond_1

    const/16 v1, 0x10e

    if-ne p3, v1, :cond_2

    :cond_1
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v4, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v4, v5

    iget v5, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    add-float/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v1

    :cond_2
    iput-object v0, p0, Lcom/sun/pdfview/PDFPage;->bbox:Landroid/graphics/RectF;

    return-void

    :cond_3
    move-object v0, p2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/RectF;I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sun/pdfview/PDFPage;-><init>(ILandroid/graphics/RectF;ILcom/sun/pdfview/Cache;)V

    return-void
.end method

.method public static getLastRenderedCommand()I
    .locals 1

    sget v0, Lcom/sun/pdfview/PDFPage;->lastRenderedCommand:I

    return v0
.end method

.method public static getParsedCommands()I
    .locals 1

    sget v0, Lcom/sun/pdfview/PDFPage;->parsedCommands:I

    return v0
.end method


# virtual methods
.method public addCommand(Lcom/sun/pdfview/PDFCmd;)V
    .locals 2

    iget-object v1, p0, Lcom/sun/pdfview/PDFPage;->commands:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFPage;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->updateImages()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addCommands(Lcom/sun/pdfview/PDFPage;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/pdfview/PDFPage;->addCommands(Lcom/sun/pdfview/PDFPage;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public addCommands(Lcom/sun/pdfview/PDFPage;Landroid/graphics/Matrix;)V
    .locals 3

    iget-object v1, p0, Lcom/sun/pdfview/PDFPage;->commands:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->addPush()V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/pdfview/PDFPage;->addXform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFPage;->commands:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFPage;->getCommands()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->addPop()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->updateImages()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addDash([FF)V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/PDFChangeStrokeCmd;

    invoke-direct {v0}, Lcom/sun/pdfview/PDFChangeStrokeCmd;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/sun/pdfview/PDFChangeStrokeCmd;->setDash([FF)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void
.end method

.method public addEndCap(I)V
    .locals 2

    new-instance v1, Lcom/sun/pdfview/PDFChangeStrokeCmd;

    invoke-direct {v1}, Lcom/sun/pdfview/PDFChangeStrokeCmd;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFChangeStrokeCmd;->setEndCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void

    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addFillAlpha(F)V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/PDFFillAlphaCmd;

    invoke-direct {v0, p1}, Lcom/sun/pdfview/PDFFillAlphaCmd;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void
.end method

.method public addFillPaint(Lcom/sun/pdfview/PDFPaint;)V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/PDFFillPaintCmd;

    invoke-direct {v0, p1}, Lcom/sun/pdfview/PDFFillPaintCmd;-><init>(Lcom/sun/pdfview/PDFPaint;)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void
.end method

.method public addImage(Lcom/sun/pdfview/PDFImage;)V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/PDFImageCmd;

    invoke-direct {v0, p1}, Lcom/sun/pdfview/PDFImageCmd;-><init>(Lcom/sun/pdfview/PDFImage;)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void
.end method

.method public addLineJoin(I)V
    .locals 2

    new-instance v1, Lcom/sun/pdfview/PDFChangeStrokeCmd;

    invoke-direct {v1}, Lcom/sun/pdfview/PDFChangeStrokeCmd;-><init>()V

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFChangeStrokeCmd;->setLineJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void

    :pswitch_0
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addMiterLimit(F)V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/PDFChangeStrokeCmd;

    invoke-direct {v0}, Lcom/sun/pdfview/PDFChangeStrokeCmd;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/pdfview/PDFChangeStrokeCmd;->setMiterLimit(F)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void
.end method

.method public addPath(Landroid/graphics/Path;I)V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/PDFShapeCmd;

    invoke-direct {v0, p1, p2}, Lcom/sun/pdfview/PDFShapeCmd;-><init>(Landroid/graphics/Path;I)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void
.end method

.method public addPop()V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/PDFPopCmd;

    invoke-direct {v0}, Lcom/sun/pdfview/PDFPopCmd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void
.end method

.method public addPush()V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/PDFPushCmd;

    invoke-direct {v0}, Lcom/sun/pdfview/PDFPushCmd;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void
.end method

.method public addStrokeAlpha(F)V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/PDFStrokeAlphaCmd;

    invoke-direct {v0, p1}, Lcom/sun/pdfview/PDFStrokeAlphaCmd;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void
.end method

.method public addStrokePaint(Lcom/sun/pdfview/PDFPaint;)V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/PDFStrokePaintCmd;

    invoke-direct {v0, p1}, Lcom/sun/pdfview/PDFStrokePaintCmd;-><init>(Lcom/sun/pdfview/PDFPaint;)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void
.end method

.method public addStrokeWidth(F)V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/PDFChangeStrokeCmd;

    invoke-direct {v0}, Lcom/sun/pdfview/PDFChangeStrokeCmd;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/pdfview/PDFChangeStrokeCmd;->setWidth(F)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void
.end method

.method public addXform(Landroid/graphics/Matrix;)V
    .locals 2

    new-instance v0, Lcom/sun/pdfview/PDFXformCmd;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFXformCmd;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    return-void
.end method

.method public clearCommands()V
    .locals 2

    iget-object v1, p0, Lcom/sun/pdfview/PDFPage;->commands:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFPage;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->updateImages()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized finish()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sun/pdfview/PDFPage;->finished:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->updateImages()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAspectRatio()F
    .locals 2

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->getHeight()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getBBox()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFPage;->bbox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getCommand(I)Lcom/sun/pdfview/PDFCmd;
    .locals 1

    sput p1, Lcom/sun/pdfview/PDFPage;->lastRenderedCommand:I

    iget-object v0, p0, Lcom/sun/pdfview/PDFPage;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFCmd;

    return-object v0
.end method

.method public getCommandCount()I
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFPage;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/pdfview/PDFCmd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/pdfview/PDFPage;->commands:Ljava/util/List;

    return-object v0
.end method

.method public getCommands(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->getCommandCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/pdfview/PDFPage;->getCommands(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCommands(II)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFPage;->commands:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFPage;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method public getImage(IILandroid/graphics/RectF;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/pdfview/PDFPage;->getImage(IILandroid/graphics/RectF;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getImage(IILandroid/graphics/RectF;ZZ)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    new-instance v2, Lcom/sun/pdfview/ImageInfo;

    invoke-direct {v2, p1, p2, p3, v1}, Lcom/sun/pdfview/ImageInfo;-><init>(IILandroid/graphics/RectF;I)V

    if-nez v0, :cond_2

    if-eqz p4, :cond_0

    iput v1, v2, Lcom/sun/pdfview/ImageInfo;->bgColor:I

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Lcom/sun/pdfview/PDFRenderer;

    invoke-direct {v0, p0, v2, v1}, Lcom/sun/pdfview/PDFRenderer;-><init>(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/sun/pdfview/PDFPage;->renderers:Ljava/util/Map;

    new-instance v4, Lc/a/a/d/c;

    invoke-direct {v4, v0}, Lc/a/a/d/c;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFRenderer;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p5}, Lcom/sun/pdfview/PDFRenderer;->go(Z)V

    :cond_1
    return-object v1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getInitialTransform(IILandroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 11

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->getRotation()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->getBBox()Landroid/graphics/RectF;

    move-result-object p3

    :cond_0
    :goto_1
    int-to-float v1, p1

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    int-to-float v2, p2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget v1, p3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-object v0

    :sswitch_0
    int-to-float v6, p2

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;FFFFFF)V

    goto :goto_0

    :sswitch_1
    move-object v3, v0

    move v4, v2

    move v5, v1

    move v6, v1

    move v7, v2

    move v8, v2

    move v9, v2

    invoke-static/range {v3 .. v9}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;FFFFFF)V

    goto :goto_0

    :sswitch_2
    int-to-float v8, p1

    move-object v3, v0

    move v5, v2

    move v6, v2

    move v7, v1

    move v9, v2

    invoke-static/range {v3 .. v9}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;FFFFFF)V

    goto :goto_0

    :sswitch_3
    int-to-float v6, p1

    int-to-float v7, p2

    move-object v1, v0

    move v3, v4

    move v5, v2

    invoke-static/range {v1 .. v7}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;FFFFFF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->getRotation()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->getRotation()I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_0

    :cond_2
    move v10, p1

    move p1, p2

    move p2, v10

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public getPageNumber()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFPage;->pageNumber:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFPage;->rotation:I

    return v0
.end method

.method public getUnstretchedSize(IILandroid/graphics/RectF;)Landroid/graphics/PointF;
    .locals 8

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/sun/pdfview/PDFPage;->bbox:Landroid/graphics/RectF;

    :cond_0
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    div-int v1, p2, p1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    add-double/2addr v0, v6

    double-to-int p2, v0

    :goto_1
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->getRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFPage;->getRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    :cond_2
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object p3, v0

    goto :goto_0

    :cond_3
    int-to-float v1, p2

    div-float v0, v1, v0

    float-to-double v0, v0

    add-double/2addr v0, v6

    double-to-int p1, v0

    goto :goto_1
.end method

.method public getWidth()F
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFPage;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/pdfview/PDFPage;->finished:Z

    return v0
.end method

.method public stop(IILandroid/graphics/RectF;)V
    .locals 3

    new-instance v0, Lcom/sun/pdfview/ImageInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/pdfview/ImageInfo;-><init>(IILandroid/graphics/RectF;)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFPage;->renderers:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sun/pdfview/PDFPage;->renderers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/d/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/a/a/d/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFRenderer;->stop()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateImages()V
    .locals 4

    iget-object v0, p0, Lcom/sun/pdfview/PDFPage;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/sun/pdfview/PDFPage;->parsedCommands:I

    iget-object v0, p0, Lcom/sun/pdfview/PDFPage;->renderers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFRenderer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFRenderer;->getStatus()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sun/pdfview/PDFRenderer;->setStatus(I)V

    goto :goto_0
.end method

.method public declared-synchronized waitForFinish()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/pdfview/PDFPage;->finished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
