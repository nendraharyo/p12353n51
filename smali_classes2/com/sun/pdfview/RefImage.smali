.class public Lcom/sun/pdfview/RefImage;
.super Ljava/lang/Object;


# instance fields
.field private bi:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap$Config;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/RefImage;->bi:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public createGraphics()Landroid/graphics/Canvas;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/RefImage;->g:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sun/pdfview/RefImage;->bi:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sun/pdfview/RefImage;->g:Landroid/graphics/Canvas;

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/RefImage;->g:Landroid/graphics/Canvas;

    return-object v0
.end method
