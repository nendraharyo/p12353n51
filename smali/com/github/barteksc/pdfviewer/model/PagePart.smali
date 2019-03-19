.class public Lcom/github/barteksc/pdfviewer/model/PagePart;
.super Ljava/lang/Object;


# instance fields
.field private cacheOrder:I

.field private height:F

.field private page:I

.field private pageRelativeBounds:Landroid/graphics/RectF;

.field private renderedBitmap:Landroid/graphics/Bitmap;

.field private thumbnail:Z

.field private userPage:I

.field private width:F


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap;FFLandroid/graphics/RectF;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->userPage:I

    iput p2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->page:I

    iput-object p3, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->renderedBitmap:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iput-boolean p7, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->thumbnail:Z

    iput p8, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->cacheOrder:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/github/barteksc/pdfviewer/model/PagePart;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/github/barteksc/pdfviewer/model/PagePart;

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPage()I

    move-result v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->page:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getUserPage()I

    move-result v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->userPage:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getWidth()F

    move-result v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->width:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getHeight()F

    move-result v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->height:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/model/PagePart;->getPageRelativeBounds()Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCacheOrder()I
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->cacheOrder:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->height:F

    return v0
.end method

.method public getPage()I
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->page:I

    return v0
.end method

.method public getPageRelativeBounds()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->pageRelativeBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRenderedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->renderedBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUserPage()I
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->userPage:I

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->width:F

    return v0
.end method

.method public isThumbnail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->thumbnail:Z

    return v0
.end method

.method public setCacheOrder(I)V
    .locals 0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/model/PagePart;->cacheOrder:I

    return-void
.end method
