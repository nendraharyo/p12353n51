.class Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;
.super Lc/a/a/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageButton;

.field b:Landroid/widget/ImageButton;

.field final synthetic c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Landroid/content/Context;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x5

    const/4 v3, -0x2

    const/4 v4, 0x1

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-direct {p0, p2}, Lc/a/a/c/a/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "Loading"

    const-string v3, "Loading PDF Page"

    invoke-static {p1, v1, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {p1, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    invoke-direct {p0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->h:Landroid/widget/Button;

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->i:Landroid/widget/Button;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c()V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x64

    invoke-direct {v0, v6, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, -0x333334

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->setBackgroundColor(I)V

    invoke-virtual {p0, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->setVerticalFadingEdgeEnabled(Z)V

    invoke-virtual {p0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->f:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->f:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 10

    const/16 v9, 0x14

    const/4 v8, 0x0

    const/4 v3, -0x2

    const/4 v7, 0x6

    invoke-direct {p0, p1, v7, v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Landroid/view/ViewGroup;II)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {v0, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a:Landroid/widget/ImageButton;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a:Landroid/widget/ImageButton;

    iget-object v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a:Landroid/widget/ImageButton;

    new-instance v4, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$1;

    invoke-direct {v4, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b:Landroid/widget/ImageButton;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b:Landroid/widget/ImageButton;

    iget-object v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b:Landroid/widget/ImageButton;

    new-instance v4, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$2;

    invoke-direct {v4, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, v3, v7, v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Landroid/view/ViewGroup;II)V

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-virtual {v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v4, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$3;

    invoke-direct {v4, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$3;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->h:Landroid/widget/Button;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lcom/sun/pdfview/PDFFile;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "0"

    :goto_0
    iget-object v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->h:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->h:Landroid/widget/Button;

    new-instance v4, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$4;

    invoke-direct {v4, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$4;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->h:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$5;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$5;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, v3, v9, v9}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Landroid/view/ViewGroup;II)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, v7, v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Landroid/view/ViewGroup;II)V

    return-void

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lcom/sun/pdfview/PDFFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFFile;->getNumPages()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;II)V
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, p2, p3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "PDFVIEWER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ST=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b()V

    return-void
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->l(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$6;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$6;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->l(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$7;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$7;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b()V

    return-void
.end method

.method static synthetic d(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->m(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lcom/sun/pdfview/PDFPage;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->h:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->h:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->m(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lcom/sun/pdfview/PDFPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFPage;->getPageNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lcom/sun/pdfview/PDFFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFFile;->getNumPages()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->i:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->i:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->m(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lcom/sun/pdfview/PDFPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFPage;->getPageNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lcom/sun/pdfview/PDFFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFFile;->getNumPages()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
