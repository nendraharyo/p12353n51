.class Lcom/sun/pdfview/PDFRenderer$GraphicsState;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/PDFRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GraphicsState"
.end annotation


# instance fields
.field cap:Landroid/graphics/Paint$Cap;

.field cliprgn:Landroid/graphics/Rect;

.field fillPaint:Lcom/sun/pdfview/PDFPaint;

.field join:Landroid/graphics/Paint$Join;

.field lineWidth:F

.field miterLimit:F

.field strokePaint:Lcom/sun/pdfview/PDFPaint;

.field final synthetic this$0:Lcom/sun/pdfview/PDFRenderer;

.field xform:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Lcom/sun/pdfview/PDFRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->this$0:Lcom/sun/pdfview/PDFRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->this$0:Lcom/sun/pdfview/PDFRenderer;

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFRenderer$GraphicsState;-><init>(Lcom/sun/pdfview/PDFRenderer;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->cliprgn:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->cap:Landroid/graphics/Paint$Cap;

    iput-object v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->cap:Landroid/graphics/Paint$Cap;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->join:Landroid/graphics/Paint$Join;

    iput-object v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->join:Landroid/graphics/Paint$Join;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->strokePaint:Lcom/sun/pdfview/PDFPaint;

    iput-object v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->strokePaint:Lcom/sun/pdfview/PDFPaint;

    iget-object v1, p0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->fillPaint:Lcom/sun/pdfview/PDFPaint;

    iput-object v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->fillPaint:Lcom/sun/pdfview/PDFPaint;

    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->xform:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->xform:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->lineWidth:F

    iput v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->lineWidth:F

    iget v1, p0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->miterLimit:F

    iput v1, v0, Lcom/sun/pdfview/PDFRenderer$GraphicsState;->miterLimit:F

    return-object v0
.end method
