.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;
.super Landroid/view/View;


# static fields
.field private static final j:I


# instance fields
.field private a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

.field private b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/os/Handler;

.field private e:Landroid/graphics/RectF;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Bitmap;

.field private i:I

.field private k:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

.field private l:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

.field private m:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/h;

.field private n:Landroid/graphics/Paint;

.field private o:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/j;

.field private p:F

.field private q:F

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x96

    const/16 v0, 0xaf

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;)V
    .locals 5

    const/4 v1, 0x7

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->c:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->e:Landroid/graphics/RectF;

    const/16 v0, 0x32

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->i:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->n:Landroid/graphics/Paint;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->d:Landroid/os/Handler;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

    instance-of v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/z;->a()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    const-string v2, "image/zoom_in.png"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->f:Landroid/graphics/Bitmap;

    const-class v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    const-string v2, "image/zoom_out.png"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->g:Landroid/graphics/Bitmap;

    const-class v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    const-string v2, "image/zoom-1.png"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->h:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    instance-of v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->Z()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->n:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ab;->o(I)V

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->D()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->E()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

    const/4 v3, 0x1

    iget-object v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->F()F

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;ZF)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->k:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

    const/4 v3, 0x0

    iget-object v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->F()F

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;ZF)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->l:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/h;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

    invoke-direct {v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/h;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->m:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/h;

    :cond_4
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-ge v0, v1, :cond_6

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

    invoke-direct {v0, p0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/y;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->o:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/j;

    :goto_2
    return-void

    :cond_5
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/t;->a()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_6
    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

    invoke-direct {v0, p0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/x;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->o:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/j;

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->k:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->k:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;->b(I)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->d()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->l:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->l:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;->b(I)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->d()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->m:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->m:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/h;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/h;->a()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->k:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;->a()V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->d()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->d:Landroid/os/Handler;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i$1;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getChart()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

    return-object v0
.end method

.method public getCurrentSeriesAndPoint()Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->p:F

    iget v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->q:F

    invoke-direct {v1, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;-><init>(FF)V

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/r;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/v;

    move-result-object v0

    return-object v0
.end method

.method protected getZoomRectangle()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->e:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->c:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->c:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->c:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->L()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->getMeasuredHeight()I

    move-result v5

    move v3, v2

    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->a:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;

    iget-object v6, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->n:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/a;->a(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->n:Landroid/graphics/Paint;

    sget v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->j:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->i:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->i:I

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->e:Landroid/graphics/RectF;

    add-int v1, v2, v4

    iget v6, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->i:I

    mul-int/lit8 v6, v6, 0x3

    sub-int/2addr v1, v6

    int-to-float v1, v1

    add-int v6, v3, v5

    int-to-float v6, v6

    iget v7, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->i:I

    int-to-float v7, v7

    const v8, 0x3f466666    # 0.775f

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    add-int v7, v2, v4

    int-to-float v7, v7

    add-int v8, v3, v5

    int-to-float v8, v8

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->e:Landroid/graphics/RectF;

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->i:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget v6, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->i:I

    div-int/lit8 v6, v6, 0x3

    int-to-float v6, v6

    iget-object v7, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int v0, v3, v5

    int-to-float v0, v0

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->i:I

    int-to-float v1, v1

    const/high16 v3, 0x3f200000    # 0.625f

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->f:Landroid/graphics/Bitmap;

    add-int v3, v2, v4

    int-to-float v3, v3

    iget v5, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->i:I

    int-to-float v5, v5

    const/high16 v6, 0x40300000    # 2.75f

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-virtual {p1, v1, v3, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->g:Landroid/graphics/Bitmap;

    add-int v3, v2, v4

    int-to-float v3, v3

    iget v5, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->i:I

    int-to-float v5, v5

    const/high16 v6, 0x3fe00000    # 1.75f

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    invoke-virtual {p1, v1, v3, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->h:Landroid/graphics/Bitmap;

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->i:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2, v0, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->r:Z

    return-void

    :cond_1
    move v2, v0

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->q:F

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->r:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->G()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->o:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/j;

    invoke-interface {v0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/j;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setZoomRate(F)V
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->k:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->l:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->k:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    invoke-virtual {v0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;->a(F)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->l:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;

    invoke-virtual {v0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/ae;->a(F)V

    :cond_0
    return-void
.end method
