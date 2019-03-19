.class public Lid/ac/ugm/presensi/presensimahasiswa/utils/b;
.super Lcom/bumptech/glide/request/target/ImageViewTarget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/ImageViewTarget",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/target/ImageViewTarget;-><init>(Landroid/widget/ImageView;)V

    const/4 v0, -0x1

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/b;->a:I

    iput p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/b;->a:I

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    instance-of v0, p1, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/b;->a:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->setLoopCount(I)V

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/b;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected synthetic setResource(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
