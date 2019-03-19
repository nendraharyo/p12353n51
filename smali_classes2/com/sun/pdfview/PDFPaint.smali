.class public Lcom/sun/pdfview/PDFPaint;
.super Ljava/lang/Object;


# static fields
.field public static s_doAntiAlias:Z


# instance fields
.field private mainPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/pdfview/PDFPaint;->s_doAntiAlias:Z

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFPaint;->mainPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sun/pdfview/PDFPaint;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFPaint;->mainPaint:Landroid/graphics/Paint;

    sget-boolean v1, Lcom/sun/pdfview/PDFPaint;->s_doAntiAlias:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public static getColorPaint(I)Lcom/sun/pdfview/PDFPaint;
    .locals 3

    new-instance v0, Lcom/sun/pdfview/PDFPaint;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/PDFPaint;-><init>(I)V

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method public static getPaint(I)Lcom/sun/pdfview/PDFPaint;
    .locals 3

    new-instance v0, Lcom/sun/pdfview/PDFPaint;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/PDFPaint;-><init>(I)V

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPaint;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method


# virtual methods
.method public fill(Lcom/sun/pdfview/PDFRenderer;Landroid/graphics/Canvas;Landroid/graphics/Path;)Landroid/graphics/RectF;
    .locals 3

    iget-object v0, p0, Lcom/sun/pdfview/PDFPaint;->mainPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFPaint;->mainPaint:Landroid/graphics/Paint;

    return-object v0
.end method
