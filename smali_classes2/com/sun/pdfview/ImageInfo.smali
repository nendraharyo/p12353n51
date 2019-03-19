.class public Lcom/sun/pdfview/ImageInfo;
.super Ljava/lang/Object;


# instance fields
.field bgColor:I

.field clip:Landroid/graphics/RectF;

.field height:I

.field width:I


# direct methods
.method public constructor <init>(IILandroid/graphics/RectF;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/pdfview/ImageInfo;-><init>(IILandroid/graphics/RectF;I)V

    return-void
.end method

.method public constructor <init>(IILandroid/graphics/RectF;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/pdfview/ImageInfo;->width:I

    iput p2, p0, Lcom/sun/pdfview/ImageInfo;->height:I

    iput-object p3, p0, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    iput p4, p0, Lcom/sun/pdfview/ImageInfo;->bgColor:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/sun/pdfview/ImageInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/sun/pdfview/ImageInfo;

    iget v1, p0, Lcom/sun/pdfview/ImageInfo;->width:I

    iget v2, p1, Lcom/sun/pdfview/ImageInfo;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sun/pdfview/ImageInfo;->height:I

    iget v2, p1, Lcom/sun/pdfview/ImageInfo;->height:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/sun/pdfview/ImageInfo;->width:I

    iget v1, p0, Lcom/sun/pdfview/ImageInfo;->height:I

    shl-int/lit8 v1, v1, 0x10

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/sun/pdfview/ImageInfo;->clip:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method
