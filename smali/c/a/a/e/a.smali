.class public Lc/a/a/e/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/a/e/a;->a:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lc/a/a/e/a;->b:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Canvas;
    .locals 2

    iget-object v0, p0, Lc/a/a/e/a;->b:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lc/a/a/e/a;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lc/a/a/e/a;->b:Landroid/graphics/Canvas;

    :cond_0
    iget-object v0, p0, Lc/a/a/e/a;->b:Landroid/graphics/Canvas;

    return-object v0
.end method
