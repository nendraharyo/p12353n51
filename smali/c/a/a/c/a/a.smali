.class public Lc/a/a/c/a/a;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:J

.field private final b:Landroid/graphics/Rect;

.field private c:Landroid/widget/Scroller;

.field protected d:I

.field protected e:I

.field private f:Z

.field private g:F

.field private h:F

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Z

.field private m:Landroid/view/VelocityTracker;

.field private n:Z

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/a/a/c/a/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lc/a/a/c/a/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lc/a/a/c/a/a;->i:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/c/a/a;->j:Landroid/view/View;

    iput-boolean v1, p0, Lc/a/a/c/a/a;->k:Z

    iput-boolean v1, p0, Lc/a/a/c/a/a;->l:Z

    iput-boolean v2, p0, Lc/a/a/c/a/a;->p:Z

    invoke-direct {p0}, Lc/a/a/c/a/a;->a()V

    return-void
.end method

.method private a(ZII)Landroid/view/View;
    .locals 11

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-lt v5, v7, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge p2, v8, :cond_8

    if-ge v4, p3, :cond_8

    if-ge p2, v4, :cond_1

    if-ge v8, p3, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v3, :cond_2

    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    if-lt v4, v9, :cond_5

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    if-gt v8, v4, :cond_5

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v2, :cond_6

    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    move-object v1, v0

    move v0, v2

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_8

    move-object v1, v0

    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method

.method private a(ZILandroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHorizontalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v1, p2, v0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getWidth()I

    move-result v2

    add-int/2addr v2, p2

    sub-int v0, v2, v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    if-ge v2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    if-le v2, v1, :cond_0

    :goto_0
    return-object p3

    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lc/a/a/c/a/a;->a(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->setFocusable(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->setDescendantFocusability(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->setWillNotDraw(Z)V

    return-void
.end method

.method private a(III)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollY()I

    move-result v4

    add-int v5, v4, v0

    const/16 v0, 0x21

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lc/a/a/c/a/a;->b(ZII)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, p0

    :cond_0
    if-lt p2, v4, :cond_3

    if-gt p3, v5, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lc/a/a/c/a/a;->findFocus()Landroid/view/View;

    move-result-object v4

    if-eq v3, v4, :cond_1

    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v1, p0, Lc/a/a/c/a/a;->f:Z

    iput-boolean v2, p0, Lc/a/a/c/a/a;->f:Z

    :cond_1
    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    sub-int v0, p2, v4

    :goto_2
    invoke-direct {p0, v0}, Lc/a/a/c/a/a;->g(I)V

    move v0, v1

    goto :goto_1

    :cond_4
    sub-int v0, p3, v5

    goto :goto_2
.end method

.method private a(Landroid/graphics/Rect;Z)Z
    .locals 3

    invoke-virtual {p0, p1}, Lc/a/a/c/a/a;->a(Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {p0, p1}, Lc/a/a/c/a/a;->b(Landroid/graphics/Rect;)I

    move-result v2

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p0, v1, v2}, Lc/a/a/c/a/a;->scrollBy(II)V

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v2}, Lc/a/a/c/a/a;->a(II)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/a/a/c/a/a;->a(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, v0}, Lc/a/a/c/a/a;->b(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private a(Landroid/view/View;I)Z
    .locals 3

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lc/a/a/c/a/a;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollX()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p2}, Lc/a/a/c/a/a;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(III)I
    .locals 1

    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1

    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private b(ZII)Landroid/view/View;
    .locals 11

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v0, 0x0

    move v5, v0

    :goto_0
    if-lt v5, v7, :cond_0

    return-object v3

    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge p2, v8, :cond_8

    if-ge v4, p3, :cond_8

    if-ge p2, v4, :cond_1

    if-ge v8, p3, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-nez v3, :cond_2

    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v3, v1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v4, v9, :cond_5

    :cond_3
    if-nez p1, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v8, v4, :cond_5

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v2, :cond_6

    if-eqz v1, :cond_8

    if-eqz v4, :cond_8

    move-object v1, v0

    move v0, v2

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move v10, v1

    move-object v1, v0

    move v0, v10

    goto :goto_2

    :cond_7
    if-eqz v4, :cond_8

    move-object v1, v0

    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    move-object v1, v3

    goto :goto_2
.end method

.method private b(ZILandroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getVerticalFadingEdgeLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int v1, p2, v0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    sub-int v0, v2, v0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    if-ge v2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v1, :cond_0

    :goto_0
    return-object p3

    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lc/a/a/c/a/a;->b(ZII)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lc/a/a/c/a/a;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->a(Landroid/graphics/Rect;)I

    move-result v0

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lc/a/a/c/a/a;->b(Landroid/graphics/Rect;)I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v0, v1}, Lc/a/a/c/a/a;->scrollBy(II)V

    :cond_1
    return-void
.end method

.method private b()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private b(Landroid/view/View;I)Z
    .locals 3

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lc/a/a/c/a/a;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private f(I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lc/a/a/c/a/a;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lc/a/a/c/a/a;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, v1}, Lc/a/a/c/a/a;->scrollBy(II)V

    goto :goto_0
.end method

.method private g(I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lc/a/a/c/a/a;->p:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p1}, Lc/a/a/c/a/a;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1, p1}, Lc/a/a/c/a/a;->scrollBy(II)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/graphics/Rect;)I
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollX()I

    move-result v0

    add-int v1, v0, v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHorizontalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-lez v5, :cond_0

    add-int/2addr v0, v4

    :cond_0
    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_1

    sub-int/2addr v1, v4

    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-le v4, v1, :cond_3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-le v4, v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v3, :cond_2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int v0, v3, v0

    add-int/2addr v0, v2

    :goto_0
    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    return v0

    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ge v4, v0, :cond_5

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ge v4, v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v3, :cond_4

    iget v0, p1, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v0

    sub-int v0, v2, v0

    :goto_2
    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollX()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sub-int v0, v2, v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public final a(II)V
    .locals 4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lc/a/a/c/a/a;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    iget v1, p0, Lc/a/a/c/a/a;->d:I

    iget v2, p0, Lc/a/a/c/a/a;->e:I

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lc/a/a/c/a/a;->invalidate()V

    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/a/a/c/a/a;->a:J

    return-void

    :cond_0
    iget-object v0, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lc/a/a/c/a/a;->scrollBy(II)V

    goto :goto_0
.end method

.method public a(I)Z
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollY()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_0
    :goto_1
    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Lc/a/a/c/a/a;->a(III)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 6

    const/16 v5, 0x42

    const/16 v4, 0x11

    const/16 v0, 0x21

    const/4 v2, 0x0

    const/16 v1, 0x82

    iget-object v3, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lc/a/a/c/a/a;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lc/a/a/c/a/a;->c()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    invoke-virtual {p0}, Lc/a/a/c/a/a;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2

    :cond_3
    invoke-direct {p0}, Lc/a/a/c/a/a;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_4
    :goto_1
    move v0, v2

    :goto_2
    invoke-direct {p0}, Lc/a/a/c/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_5
    :goto_3
    move v2, v0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->c(I)Z

    move-result v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->b(I)Z

    move-result v0

    goto :goto_2

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0, v1}, Lc/a/a/c/a/a;->c(I)Z

    move-result v0

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Lc/a/a/c/a/a;->b(I)Z

    move-result v0

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_4
    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->a(I)Z

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_4

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, v4}, Lc/a/a/c/a/a;->c(I)Z

    move-result v0

    goto :goto_3

    :cond_9
    invoke-virtual {p0, v4}, Lc/a/a/c/a/a;->b(I)Z

    move-result v0

    goto :goto_3

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v5}, Lc/a/a/c/a/a;->c(I)Z

    move-result v0

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v5}, Lc/a/a/c/a/a;->b(I)Z

    move-result v0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public addView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected b(Landroid/graphics/Rect;)I
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollY()I

    move-result v0

    add-int v1, v0, v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getVerticalFadingEdgeLength()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-lez v5, :cond_0

    add-int/2addr v0, v4

    :cond_0
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_1

    sub-int/2addr v1, v4

    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v1, :cond_3

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-le v4, v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v3, :cond_2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int v0, v3, v0

    add-int/2addr v0, v2

    :goto_0
    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v1, v2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    return v0

    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v4, v0, :cond_5

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v4, v1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v3, :cond_4

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    sub-int v0, v2, v0

    :goto_2
    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollY()I

    move-result v1

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1

    :cond_4
    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    sub-int v0, v2, v0

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public b(I)Z
    .locals 4

    const/4 v1, 0x0

    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v2

    iget-object v3, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iput v1, v3, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    :cond_0
    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v1}, Lc/a/a/c/a/a;->a(III)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public c(I)Z
    .locals 8

    const/16 v7, 0x21

    const/16 v6, 0x82

    invoke-virtual {p0}, Lc/a/a/c/a/a;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getMaxScrollAmountX()I

    move-result v2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getMaxScrollAmountY()I

    move-result v1

    if-eqz v3, :cond_3

    invoke-direct {p0, v3, v2}, Lc/a/a/c/a/a;->a(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v3, v1}, Lc/a/a/c/a/a;->b(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v1}, Lc/a/a/c/a/a;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lc/a/a/c/a/a;->a(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v1}, Lc/a/a/c/a/a;->f(I)V

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lc/a/a/c/a/a;->b(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v1}, Lc/a/a/c/a/a;->g(I)V

    invoke-virtual {v3, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lc/a/a/c/a/a;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    invoke-virtual {p0, v1}, Lc/a/a/c/a/a;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lc/a/a/c/a/a;->requestFocus()Z

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->setDescendantFocusability(I)V

    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    if-ne p1, v7, :cond_6

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollX()I

    move-result v3

    if-ge v3, v2, :cond_6

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollX()I

    move-result v2

    :cond_4
    :goto_2
    if-ne p1, v7, :cond_7

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollY()I

    move-result v3

    if-ge v3, v1, :cond_7

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollY()I

    move-result v1

    :cond_5
    :goto_3
    if-nez v2, :cond_8

    if-nez v1, :cond_8

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    if-ne p1, v6, :cond_4

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollX()I

    move-result v4

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v5, v3, v4

    if-ge v5, v2, :cond_4

    sub-int v2, v3, v4

    goto :goto_2

    :cond_7
    if-ne p1, v6, :cond_5

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sub-int v5, v3, v4

    if-ge v5, v1, :cond_5

    sub-int v1, v3, v4

    goto :goto_3

    :cond_8
    if-nez v2, :cond_a

    if-ne p1, v6, :cond_9

    :goto_4
    invoke-direct {p0, v1}, Lc/a/a/c/a/a;->g(I)V

    goto/16 :goto_0

    :cond_9
    neg-int v1, v1

    goto :goto_4

    :cond_a
    if-nez v1, :cond_1

    if-ne p1, v6, :cond_b

    move v1, v2

    :goto_5
    invoke-direct {p0, v1}, Lc/a/a/c/a/a;->f(I)V

    goto/16 :goto_0

    :cond_b
    neg-int v1, v2

    goto :goto_5
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    iget-object v0, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lc/a/a/c/a/a;->d:I

    iget v1, p0, Lc/a/a/c/a/a;->e:I

    iget-object v2, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lc/a/a/c/a/a;->b(III)I

    move-result v2

    iput v2, p0, Lc/a/a/c/a/a;->d:I

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lc/a/a/c/a/a;->b(III)I

    move-result v2

    iput v2, p0, Lc/a/a/c/a/a;->e:I

    :goto_0
    iget v2, p0, Lc/a/a/c/a/a;->d:I

    if-ne v0, v2, :cond_0

    iget v2, p0, Lc/a/a/c/a/a;->e:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget v2, p0, Lc/a/a/c/a/a;->d:I

    iget v3, p0, Lc/a/a/c/a/a;->e:I

    invoke-virtual {p0, v2, v3, v0, v1}, Lc/a/a/c/a/a;->onScrollChanged(IIII)V

    :cond_1
    invoke-virtual {p0}, Lc/a/a/c/a/a;->postInvalidate()V

    :cond_2
    return-void

    :cond_3
    iput v2, p0, Lc/a/a/c/a/a;->d:I

    iput v3, p0, Lc/a/a/c/a/a;->e:I

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method public d(I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v0, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    iget v1, p0, Lc/a/a/c/a/a;->d:I

    iget v2, p0, Lc/a/a/c/a/a;->e:I

    sub-int v8, v5, v3

    move v3, p1

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    if-lez p1, :cond_2

    move v0, v9

    :goto_0
    iget-object v1, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lc/a/a/c/a/a;->a(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p0

    :cond_0
    invoke-virtual {p0}, Lc/a/a/c/a/a;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_3

    const/16 v0, 0x82

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v9, p0, Lc/a/a/c/a/a;->f:Z

    iput-boolean v4, p0, Lc/a/a/c/a/a;->f:Z

    :cond_1
    invoke-virtual {p0}, Lc/a/a/c/a/a;->invalidate()V

    return-void

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    const/16 v0, 0x21

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lc/a/a/c/a/a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public e(I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget-object v0, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    iget v1, p0, Lc/a/a/c/a/a;->d:I

    iget v2, p0, Lc/a/a/c/a/a;->e:I

    sub-int v8, v5, v4

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    if-lez p1, :cond_2

    move v0, v9

    :goto_0
    iget-object v1, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lc/a/a/c/a/a;->b(ZILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, p0

    :cond_0
    invoke-virtual {p0}, Lc/a/a/c/a/a;->findFocus()Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_3

    const/16 v0, 0x82

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->requestFocus(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v9, p0, Lc/a/a/c/a/a;->f:Z

    iput-boolean v3, p0, Lc/a/a/c/a/a;->f:Z

    :cond_1
    invoke-virtual {p0}, Lc/a/a/c/a/a;->invalidate()V

    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/16 v0, 0x21

    goto :goto_1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lc/a/a/c/a/a;->getVerticalFadingEdgeLength()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lc/a/a/c/a/a;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHorizontalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Lc/a/a/c/a/a;->d:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Lc/a/a/c/a/a;->d:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getMaxScrollAmountX()I
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getMaxScrollAmountY()I
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHorizontalFadingEdgeLength()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, p0, Lc/a/a/c/a/a;->d:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lc/a/a/c/a/a;->getVerticalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Lc/a/a/c/a/a;->e:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Lc/a/a/c/a/a;->e:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-boolean v3, p0, Lc/a/a/c/a/a;->k:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lc/a/a/c/a/a;->l:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0}, Lc/a/a/c/a/a;->b()Z

    move-result v3

    if-nez v3, :cond_2

    iput-boolean v1, p0, Lc/a/a/c/a/a;->k:Z

    :cond_2
    invoke-direct {p0}, Lc/a/a/c/a/a;->c()Z

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v1, p0, Lc/a/a/c/a/a;->l:Z

    :cond_3
    invoke-direct {p0}, Lc/a/a/c/a/a;->c()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lc/a/a/c/a/a;->b()Z

    move-result v3

    if-nez v3, :cond_4

    move v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_1
    iget-boolean v0, p0, Lc/a/a/c/a/a;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc/a/a/c/a/a;->l:Z

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lc/a/a/c/a/a;->g:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    if-le v0, v3, :cond_6

    iput-boolean v2, p0, Lc/a/a/c/a/a;->k:Z

    :cond_6
    iget v0, p0, Lc/a/a/c/a/a;->h:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    if-le v0, v3, :cond_5

    iput-boolean v2, p0, Lc/a/a/c/a/a;->l:Z

    goto :goto_1

    :pswitch_1
    iput v3, p0, Lc/a/a/c/a/a;->g:F

    iput v4, p0, Lc/a/a/c/a/a;->h:F

    iget-object v0, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lc/a/a/c/a/a;->k:Z

    iget-object v0, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lc/a/a/c/a/a;->l:Z

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :pswitch_2
    iput-boolean v1, p0, Lc/a/a/c/a/a;->k:Z

    iput-boolean v1, p0, Lc/a/a/c/a/a;->l:Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a/a/c/a/a;->i:Z

    iget-object v0, p0, Lc/a/a/c/a/a;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/c/a/a;->j:Landroid/view/View;

    invoke-direct {p0, v0, p0}, Lc/a/a/c/a/a;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/a/c/a/a;->j:Landroid/view/View;

    invoke-direct {p0, v0}, Lc/a/a/c/a/a;->b(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/c/a/a;->j:Landroid/view/View;

    iget v0, p0, Lc/a/a/c/a/a;->d:I

    iget v1, p0, Lc/a/a/c/a/a;->e:I

    invoke-virtual {p0, v0, v1}, Lc/a/a/c/a/a;->scrollTo(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v0, p0, Lc/a/a/c/a/a;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/a/a/c/a/a;->o:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ge v5, v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ge v5, v4, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v5, p0, Lc/a/a/c/a/a;->n:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lc/a/a/c/a/a;->o:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingLeft()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingTop()I

    move-result v1

    sub-int v1, v4, v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ge v5, v4, :cond_4

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lc/a/a/c/a/a;->o:Z

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {p1, v1, v0}, Lc/a/a/c/a/a;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingTop()I

    move-result v1

    sub-int v1, v4, v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ge v1, v3, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/a/a/c/a/a;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingBottom()I

    move-result v4

    add-int/2addr v1, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p2, v1, v0}, Lc/a/a/c/a/a;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingLeft()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/16 p1, 0x82

    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_4

    :cond_1
    :goto_2
    return v0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x21

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1}, Lc/a/a/c/a/a;->a(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lc/a/a/c/a/a;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lc/a/a/c/a/a;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1}, Lc/a/a/c/a/a;->a(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lc/a/a/c/a/a;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lc/a/a/c/a/a;->a(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v1}, Lc/a/a/c/a/a;->f(I)V

    :cond_2
    invoke-direct {p0, v0, v2}, Lc/a/a/c/a/a;->b(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lc/a/a/c/a/a;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lc/a/a/c/a/a;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->b(Landroid/graphics/Rect;)I

    move-result v0

    invoke-direct {p0, v0}, Lc/a/a/c/a/a;->g(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lc/a/a/c/a/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lc/a/a/c/a/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lc/a/a/c/a/a;->m:Landroid/view/VelocityTracker;

    if-nez v1, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lc/a/a/c/a/a;->m:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v1, p0, Lc/a/a/c/a/a;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    packed-switch v1, :pswitch_data_0

    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lc/a/a/c/a/a;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_5
    iput v2, p0, Lc/a/a/c/a/a;->g:F

    iput v3, p0, Lc/a/a/c/a/a;->h:F

    goto :goto_1

    :pswitch_1
    iget v1, p0, Lc/a/a/c/a/a;->g:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v2, p0, Lc/a/a/c/a/a;->g:F

    iget v2, p0, Lc/a/a/c/a/a;->h:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v3, p0, Lc/a/a/c/a/a;->h:F

    if-gez v1, :cond_7

    iget v3, p0, Lc/a/a/c/a/a;->d:I

    if-ltz v3, :cond_6

    invoke-virtual {p0, v1, v0}, Lc/a/a/c/a/a;->scrollBy(II)V

    :cond_6
    :goto_2
    if-gez v2, :cond_8

    iget v1, p0, Lc/a/a/c/a/a;->e:I

    if-ltz v1, :cond_4

    invoke-virtual {p0, v0, v2}, Lc/a/a/c/a/a;->scrollBy(II)V

    goto :goto_1

    :cond_7
    if-lez v1, :cond_6

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lc/a/a/c/a/a;->d:I

    sub-int/2addr v4, v5

    sub-int v3, v4, v3

    if-lez v3, :cond_6

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lc/a/a/c/a/a;->scrollBy(II)V

    goto :goto_2

    :cond_8
    if-lez v2, :cond_4

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lc/a/a/c/a/a;->e:I

    sub-int/2addr v3, v4

    sub-int v1, v3, v1

    if-lez v1, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lc/a/a/c/a/a;->scrollBy(II)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lc/a/a/c/a/a;->m:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    if-le v2, v3, :cond_9

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v2

    if-lez v2, :cond_9

    neg-int v1, v1

    invoke-virtual {p0, v1}, Lc/a/a/c/a/a;->d(I)V

    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v2

    if-le v1, v2, :cond_a

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v1

    if-lez v1, :cond_a

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->e(I)V

    :cond_a
    iget-object v0, p0, Lc/a/a/c/a/a;->m:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/a/a/c/a/a;->m:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/a/a/c/a/a;->m:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lc/a/a/c/a/a;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc/a/a/c/a/a;->i:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lc/a/a/c/a/a;->b(Landroid/view/View;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_1
    iput-object p2, p0, Lc/a/a/c/a/a;->j:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Lc/a/a/c/a/a;->a(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/a/a/c/a/a;->i:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/a/a/c/a/a;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lc/a/a/c/a/a;->b(III)I

    move-result v1

    invoke-virtual {p0}, Lc/a/a/c/a/a;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, v2, v0}, Lc/a/a/c/a/a;->b(III)I

    move-result v0

    iget v2, p0, Lc/a/a/c/a/a;->d:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lc/a/a/c/a/a;->e:I

    if-eq v0, v2, :cond_1

    :cond_0
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    iput v1, p0, Lc/a/a/c/a/a;->d:I

    iput v0, p0, Lc/a/a/c/a/a;->e:I

    :cond_1
    return-void
.end method

.method public setFillViewportX(Z)V
    .locals 1

    iget-boolean v0, p0, Lc/a/a/c/a/a;->n:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lc/a/a/c/a/a;->n:Z

    invoke-virtual {p0}, Lc/a/a/c/a/a;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setFillViewportY(Z)V
    .locals 1

    iget-boolean v0, p0, Lc/a/a/c/a/a;->o:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lc/a/a/c/a/a;->o:Z

    invoke-virtual {p0}, Lc/a/a/c/a/a;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lc/a/a/c/a/a;->p:Z

    return-void
.end method
