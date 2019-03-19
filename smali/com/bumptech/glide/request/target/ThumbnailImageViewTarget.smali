.class public abstract Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/ImageViewTarget",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;Z)V

    return-void
.end method


# virtual methods
.method protected abstract getDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method protected setResource(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;->getDrawable(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v2, :cond_0

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v0, :cond_0

    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/request/target/FixedSizeDrawable;

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v3, v2}, Lcom/bumptech/glide/request/target/FixedSizeDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v1, v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ThumbnailImageViewTarget;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
