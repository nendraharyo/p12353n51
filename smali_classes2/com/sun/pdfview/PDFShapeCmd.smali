.class public Lcom/sun/pdfview/PDFShapeCmd;
.super Lcom/sun/pdfview/PDFCmd;


# static fields
.field public static final BOTH:I = 0x3

.field public static final CLIP:I = 0x4

.field public static final FILL:I = 0x2

.field public static final STROKE:I = 0x1


# instance fields
.field private bounds:Landroid/graphics/RectF;

.field private gp:Landroid/graphics/Path;

.field private style:I


# direct methods
.method public constructor <init>(Landroid/graphics/Path;I)V
    .locals 2

    invoke-direct {p0}, Lcom/sun/pdfview/PDFCmd;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Lcom/sun/pdfview/PDFShapeCmd;->gp:Landroid/graphics/Path;

    iput p2, p0, Lcom/sun/pdfview/PDFShapeCmd;->style:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFShapeCmd;->bounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sun/pdfview/PDFShapeCmd;->bounds:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/pdfview/PDFRenderer;)Landroid/graphics/RectF;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/sun/pdfview/PDFShapeCmd;->style:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFShapeCmd;->gp:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFRenderer;->fill(Landroid/graphics/Path;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFShapeCmd;->gp:Landroid/graphics/Path;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/PDFShapeCmd;->gp:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Lcom/sun/pdfview/PDFRenderer;->setLastShape(Landroid/graphics/Path;)V

    :cond_0
    iget v1, p0, Lcom/sun/pdfview/PDFShapeCmd;->style:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/pdfview/PDFShapeCmd;->gp:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Lcom/sun/pdfview/PDFRenderer;->stroke(Landroid/graphics/Path;)Landroid/graphics/RectF;

    move-result-object v1

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/sun/pdfview/PDFShapeCmd;->style:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sun/pdfview/PDFShapeCmd;->gp:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Lcom/sun/pdfview/PDFRenderer;->clip(Landroid/graphics/Path;)V

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iget-object v2, p0, Lcom/sun/pdfview/PDFShapeCmd;->gp:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ShapeCommand at: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/sun/pdfview/PDFShapeCmd;->style:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const-string v1, "FILL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v1, p0, Lcom/sun/pdfview/PDFShapeCmd;->style:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string v1, "STROKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget v1, p0, Lcom/sun/pdfview/PDFShapeCmd;->style:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "CLIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
