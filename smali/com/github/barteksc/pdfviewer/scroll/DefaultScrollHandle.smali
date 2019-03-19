.class public Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/github/barteksc/pdfviewer/scroll/ScrollHandle;


# static fields
.field private static final DEFAULT_TEXT_SIZE:I = 0x10

.field private static final HANDLE_LONG:I = 0x41

.field private static final HANDLE_SHORT:I = 0x28


# instance fields
.field protected context:Landroid/content/Context;

.field private currentPos:F

.field private handler:Landroid/os/Handler;

.field private hidePageScrollerRunnable:Ljava/lang/Runnable;

.field private inverted:Z

.field private pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

.field private relativeHandlerMiddle:F

.field protected textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle$1;

    invoke-direct {v0, p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle$1;-><init>(Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->hidePageScrollerRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->inverted:Z

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->textView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setVisibility(I)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setTextColor(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setTextSize(I)V

    return-void
.end method

.method private calculateMiddle()V
    .locals 4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getHeight()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    iget v3, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    add-float/2addr v2, v3

    div-float v0, v2, v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getWidth()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private isPDFViewReady()Z
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getPageCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->documentFitsView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPosition(F)V
    .locals 5

    const/16 v4, 0x28

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    :goto_1
    iget v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    sub-float v2, p1, v2

    cmpg-float v3, v2, v1

    if-gez v3, :cond_3

    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setY(F)V

    :goto_3
    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->calculateMiddle()V

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setX(F)V

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method public destroyLayout()V
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0, p0}, Lcom/github/barteksc/pdfviewer/PDFView;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setVisibility(I)V

    return-void
.end method

.method public hideDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->hidePageScrollerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->isPDFViewReady()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->stopFling()V

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->hidePageScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->currentPos:F

    :goto_1
    :pswitch_2
    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->currentPos:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setPosition(F)V

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->setPositionOffset(FZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->currentPos:F

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->currentPos:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setPosition(F)V

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    iget v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->relativeHandlerMiddle:F

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->setPositionOffset(FZ)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->hideDelayed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setPageNum(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setScroll(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->shown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->show()V

    :goto_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getHeight()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setPosition(F)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->hidePageScrollerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->getWidth()I

    move-result v0

    goto :goto_1
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 3

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->textView:Landroid/widget/TextView;

    const/4 v1, 0x1

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setupLayout(Lcom/github/barteksc/pdfviewer/PDFView;)V
    .locals 9

    const/16 v2, 0x41

    const/16 v1, 0x28

    const/4 v7, -0x2

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/github/barteksc/pdfviewer/PDFView;->isSwipeVertical()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->inverted:Z

    if-eqz v0, :cond_0

    const/16 v3, 0x9

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    sget v4, Lcom/github/barteksc/pdfviewer/R$drawable;->default_scroll_handle_left:I

    invoke-static {v0, v4}, Landroid/support/v4/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result v2

    iget-object v4, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/github/barteksc/pdfviewer/util/Util;->getDP(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->textView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p1, p0, v0}, Lcom/github/barteksc/pdfviewer/PDFView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->pdfView:Lcom/github/barteksc/pdfviewer/PDFView;

    return-void

    :cond_0
    const/16 v3, 0xb

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    sget v4, Lcom/github/barteksc/pdfviewer/R$drawable;->default_scroll_handle_right:I

    invoke-static {v0, v4}, Landroid/support/v4/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->inverted:Z

    if-eqz v0, :cond_2

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    sget v4, Lcom/github/barteksc/pdfviewer/R$drawable;->default_scroll_handle_top:I

    invoke-static {v0, v4}, Landroid/support/v4/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_0

    :cond_2
    const/16 v3, 0xc

    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->context:Landroid/content/Context;

    sget v4, Lcom/github/barteksc/pdfviewer/R$drawable;->default_scroll_handle_bottom:I

    invoke-static {v0, v4}, Landroid/support/v4/a/b;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->setVisibility(I)V

    return-void
.end method

.method public shown()Z
    .locals 1

    invoke-virtual {p0}, Lcom/github/barteksc/pdfviewer/scroll/DefaultScrollHandle;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
