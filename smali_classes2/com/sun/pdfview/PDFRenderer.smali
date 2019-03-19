.class public Lcom/sun/pdfview/PDFRenderer;
.super Lcom/sun/pdfview/BaseWatchable;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/PDFRenderer$GraphicsState;
    }
.end annotation


# static fields
.field public static final NOCAP:Landroid/graphics/Paint$Cap;

.field public static final NODASH:[F

.field public static final NOJOIN:Landroid/graphics/Paint$Join;

.field public static final NOLIMIT:F = -1000.0f

.field public static final NOPHASE:F = -1000.0f

.field public static final NOWIDTH:F = -1000.0f

.field private static final TAG:Ljava/lang/String; = "APV.PDFRenderer"

.field public static final UPDATE_DURATION:J = 0xc8L


# instance fields
.field private cmdCnt:I

.field private currentCommand:I

.field private g:Landroid/graphics/Canvas;

.field private globalDirtyRegion:Landroid/graphics/RectF;

.field private imageRef:Lc/a/a/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/a/d/c",
            "<",
            "Lc/a/a/e/a;",
            ">;"
        }
    .end annotation
.end field

.field private imageinfo:Lcom/sun/pdfview/ImageInfo;

.field private lastShape:Landroid/graphics/Path;

.field private page:Lcom/sun/pdfview/PDFPage;

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sun/pdfview/PDFRenderer$GraphicsState;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

.field private then:J

.field private unupdatedRegion:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sun/pdfview/PDFRenderer;->NOCAP:Landroid/graphics/Paint$Cap;

    sput-object v0, Lcom/sun/pdfview/PDFRenderer;->NODASH:[F

    sput-object v0, Lcom/sun/pdfview/PDFRenderer;->NOJOIN:Landroid/graphics/Paint$Join;

    return-void
.end method

.method public constructor <init>(Lcom/sun/pdfview/PDFPage;Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/RectF;I)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/pdfview/BaseWatchable;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/pdfview/PDFRenderer;->then:J

    iput-object p1, p0, Lcom/sun/pdfview/PDFRenderer;->page:Lcom/sun/pdfview/PDFPage;

    iput-object p2, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    new-instance v0, Lcom/sun/pdfview/ImageInfo;

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2, p4, p5}, Lcom/sun/pdfview/ImageInfo;-><init>(IILandroid/graphics/RectF;I)V

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->imageinfo:Lcom/sun/pdfview/ImageInfo;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFRenderer;->cmdCnt:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/ImageInfo;Landroid/graphics/Bitmap;)V
    .locals 3

    invoke-direct {p0}, Lcom/sun/pdfview/BaseWatchable;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/pdfview/PDFRenderer;->then:J

    iput-object p1, p0, Lcom/sun/pdfview/PDFRenderer;->page:Lcom/sun/pdfview/PDFPage;

    iput-object p2, p0, Lcom/sun/pdfview/PDFRenderer;->imageinfo:Lcom/sun/pdfview/ImageInfo;

    new-instance v0, Lc/a/a/d/c;

    new-instance v1, Lc/a/a/e/a;

    iget-object v2, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    invoke-direct {v1, p3, v2}, Lc/a/a/e/a;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    invoke-direct {v0, v1}, Lc/a/a/d/c;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->imageRef:Lc/a/a/d/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFRenderer;->cmdCnt:I

    return-void
.end method

.method private addDirtyRegion(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    if-nez p2, :cond_1

    move-object p2, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method private getMaskedImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->fillPaint:Lcom/sun/pdfview/PDFPaint;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    or-int v9, v1, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    move v8, v2

    :goto_0
    if-lt v8, v10, :cond_0

    return-object v11

    :cond_0
    new-array v1, v6, [I

    array-length v0, v1

    new-array v12, v0, [I

    add-int v5, v2, v8

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v2

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_1

    add-int v5, v2, v8

    move-object v0, v11

    move-object v1, v12

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    aget v3, v1, v0

    const/high16 v4, -0x1000000

    if-ne v3, v4, :cond_2

    aput v9, v12, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aput v2, v12, v0

    goto :goto_2
.end method

.method private rendererFinished()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->page:Lcom/sun/pdfview/PDFPage;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->page:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFPage;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sun/pdfview/PDFRenderer;->currentCommand:I

    iget-object v2, p0, Lcom/sun/pdfview/PDFRenderer;->page:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFPage;->getCommandCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setClip(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iput-object p1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->cliprgn:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method private setupRendering(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x0

    const/high16 v6, -0x1000000

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->imageinfo:Lcom/sun/pdfview/ImageInfo;

    iget v0, v0, Lcom/sun/pdfview/ImageInfo;->bgColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->imageinfo:Lcom/sun/pdfview/ImageInfo;

    iget v0, v0, Lcom/sun/pdfview/ImageInfo;->width:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->imageinfo:Lcom/sun/pdfview/ImageInfo;

    iget v0, v0, Lcom/sun/pdfview/ImageInfo;->height:I

    int-to-float v4, v0

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFRenderer;->getInitialTransform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    new-instance v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/PDFRenderer$GraphicsState;-><init>(Lcom/sun/pdfview/PDFRenderer;)V

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->cliprgn:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    invoke-static {v6}, Lcom/sun/pdfview/PDFPaint;->getColorPaint(I)Lcom/sun/pdfview/PDFPaint;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->strokePaint:Lcom/sun/pdfview/PDFPaint;

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    invoke-static {v6}, Lcom/sun/pdfview/PDFPaint;->getPaint(I)Lcom/sun/pdfview/PDFPaint;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->fillPaint:Lcom/sun/pdfview/PDFPaint;

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->xform:Landroid/graphics/Matrix;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->stack:Ljava/util/Stack;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFRenderer;->currentCommand:I

    return-void
.end method

.method private showTrans(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    const-string v1, "APV.PDFRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "M="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "APV.PDFRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "src="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "APV.PDFRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dst="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->page:Lcom/sun/pdfview/PDFPage;

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->stack:Ljava/util/Stack;

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->globalDirtyRegion:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->lastShape:Landroid/graphics/Path;

    return-void
.end method

.method public clip(Landroid/graphics/Path;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Path;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v1, v1, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->fillPaint:Lcom/sun/pdfview/PDFPaint;

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v1, v1, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->strokePaint:Lcom/sun/pdfview/PDFPaint;

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawImage(Lcom/sun/pdfview/PDFImage;)Landroid/graphics/RectF;
    .locals 10

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFImage;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v6, v1

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFImage;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v3, v4

    move v3, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;FFFFFF)V

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFImage;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFImage;->isImageMask()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/sun/pdfview/PDFRenderer;->getMaskedImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v3, v1

    :goto_0
    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    const/4 v0, 0x4

    new-array v1, v0, [F

    aput v2, v1, v7

    aput v2, v1, v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, v2

    aput v0, v1, v9

    const/4 v0, 0x3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v1, v0

    move-object v0, v4

    move v2, v7

    move-object v3, v1

    move v4, v7

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    new-instance v0, Landroid/graphics/RectF;

    aget v2, v1, v7

    aget v3, v1, v8

    aget v4, v1, v9

    aget v5, v1, v7

    sub-float/2addr v4, v5

    const/4 v5, 0x3

    aget v5, v1, v5

    aget v1, v1, v8

    sub-float v1, v5, v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0

    :cond_0
    move-object v3, v1

    goto :goto_0
.end method

.method public drawNativeText(Ljava/lang/String;FF)Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->fillPaint:Lcom/sun/pdfview/PDFPaint;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0
.end method

.method public drawNativeText(Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->fillPaint:Lcom/sun/pdfview/PDFPaint;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    iget v4, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Matrix;->preScale(FFFF)Z

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-object p2
.end method

.method public fill(Landroid/graphics/Path;)Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->fillPaint:Lcom/sun/pdfview/PDFPaint;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    invoke-virtual {v0, p0, v1, p1}, Lcom/sun/pdfview/PDFPaint;->fill(Lcom/sun/pdfview/PDFRenderer;Landroid/graphics/Canvas;Landroid/graphics/Path;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getInitialTransform()Landroid/graphics/Matrix;
    .locals 4

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->page:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->imageinfo:Lcom/sun/pdfview/ImageInfo;

    iget v1, v1, Lcom/sun/pdfview/ImageInfo;->width:I

    iget-object v2, p0, Lcom/sun/pdfview/PDFRenderer;->imageinfo:Lcom/sun/pdfview/ImageInfo;

    iget v2, v2, Lcom/sun/pdfview/ImageInfo;->height:I

    iget-object v3, p0, Lcom/sun/pdfview/PDFRenderer;->imageinfo:Lcom/sun/pdfview/ImageInfo;

    iget-object v3, v3, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/pdfview/PDFPage;->getInitialTransform(IILandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getLastShape()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->lastShape:Landroid/graphics/Path;

    return-object v0
.end method

.method public getTransform()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->xform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public iterate()I
    .locals 6

    const/4 v2, 0x6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->page:Lcom/sun/pdfview/PDFPage;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->imageRef:Lc/a/a/d/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->imageRef:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/e/a;

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Image went away.  Stopping"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lc/a/a/e/a;->a()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    :cond_2
    iget v0, p0, Lcom/sun/pdfview/PDFRenderer;->currentCommand:I

    iget-object v3, p0, Lcom/sun/pdfview/PDFRenderer;->page:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFPage;->getCommandCount()I

    move-result v3

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->page:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPage;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->page:Lcom/sun/pdfview/PDFPage;

    iget v2, p0, Lcom/sun/pdfview/PDFRenderer;->currentCommand:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/PDFRenderer;->currentCommand:I

    invoke-virtual {v0, v2}, Lcom/sun/pdfview/PDFPage;->getCommand(I)Lcom/sun/pdfview/PDFCmd;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Command not found!"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/sun/pdfview/PDFCmd;->execute(Lcom/sun/pdfview/PDFRenderer;)Landroid/graphics/RectF;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/sun/pdfview/PDFRenderer;->globalDirtyRegion:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v2}, Lcom/sun/pdfview/PDFRenderer;->addDirtyRegion(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/pdfview/PDFRenderer;->globalDirtyRegion:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sun/pdfview/PDFRenderer;->unupdatedRegion:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v2}, Lcom/sun/pdfview/PDFRenderer;->addDirtyRegion(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->unupdatedRegion:Landroid/graphics/RectF;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sun/pdfview/PDFRenderer;->then:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_6

    invoke-direct {p0}, Lcom/sun/pdfview/PDFRenderer;->rendererFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iput-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->unupdatedRegion:Landroid/graphics/RectF;

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sun/pdfview/PDFRenderer;->then:J

    :cond_7
    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->imageRef:Lc/a/a/d/c;

    if-eqz v0, :cond_8

    iput-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    :cond_8
    const/4 v0, 0x4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "APV.PDFRenderer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1
.end method

.method public pop()V
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->xform:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFRenderer;->setTransform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->cliprgn:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFRenderer;->setClip(Landroid/graphics/Rect;)V

    return-void
.end method

.method public push()V
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->cliprgn:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->stack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iput-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    return-void
.end method

.method public setFillPaint(Lcom/sun/pdfview/PDFPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iput-object p1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->fillPaint:Lcom/sun/pdfview/PDFPaint;

    return-void
.end method

.method public setLastShape(Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/PDFRenderer;->lastShape:Landroid/graphics/Path;

    return-void
.end method

.method public setStrokePaint(Lcom/sun/pdfview/PDFPaint;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iput-object p1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->strokePaint:Lcom/sun/pdfview/PDFPaint;

    return-void
.end method

.method public setStrokeParts(FLandroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;F[FF)V
    .locals 2

    const/high16 v1, -0x3b860000    # -1000.0f

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget p1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->lineWidth:F

    :cond_0
    sget-object v0, Lcom/sun/pdfview/PDFRenderer;->NOCAP:Landroid/graphics/Paint$Cap;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object p2, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->cap:Landroid/graphics/Paint$Cap;

    :cond_1
    sget-object v0, Lcom/sun/pdfview/PDFRenderer;->NOJOIN:Landroid/graphics/Paint$Join;

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object p3, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->join:Landroid/graphics/Paint$Join;

    :cond_2
    cmpl-float v0, p4, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget p4, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->miterLimit:F

    :cond_3
    if-eqz p5, :cond_4

    array-length v0, p5

    if-nez v0, :cond_4

    const/4 v0, 0x0

    check-cast v0, [F

    :cond_4
    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iput p1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->lineWidth:F

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iput-object p2, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->cap:Landroid/graphics/Paint$Cap;

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iput-object p3, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->join:Landroid/graphics/Paint$Join;

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iput p4, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->miterLimit:F

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iput-object p1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->xform:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v1, v1, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->xform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public setup()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->imageRef:Lc/a/a/d/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->imageRef:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/e/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/a/a/e/a;->a()Landroid/graphics/Canvas;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFRenderer;->setupRendering(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public stroke(Landroid/graphics/Path;)Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->strokePaint:Lcom/sun/pdfview/PDFPaint;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    invoke-virtual {v0, p0, v1, p1}, Lcom/sun/pdfview/PDFPaint;->fill(Lcom/sun/pdfview/PDFRenderer;Landroid/graphics/Canvas;Landroid/graphics/Path;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->xform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/sun/pdfview/PDFRenderer;->g:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer;->state:Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v1, v1, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->xform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
