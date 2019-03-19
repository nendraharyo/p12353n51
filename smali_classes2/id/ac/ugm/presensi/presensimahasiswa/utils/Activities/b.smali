.class public abstract Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;
    }
.end annotation


# instance fields
.field private a:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

.field private b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

.field private c:Ljava/lang/String;

.field private d:Lcom/sun/pdfview/PDFFile;

.field private e:I

.field private f:F

.field private g:Ljava/io/File;

.field private h:Landroid/app/ProgressDialog;

.field private i:Lcom/sun/pdfview/PDFPage;

.field private j:Ljava/lang/Thread;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;I)I
    .locals 0

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    return p1
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->h:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lcom/sun/pdfview/PDFFile;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "external storage dir not found"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_0
    const-string v2, "PDFVIEWER"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "AndroidPdfViewer/AndroidPdfViewer_temp.pdf"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :goto_2
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    new-array v4, v0, [B

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_3
    if-lez v0, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :try_start_2
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->j:Ljava/lang/Thread;

    return-object p1
.end method

.method private declared-synchronized a(IF)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->j:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reading page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", zoom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$3;

    invoke-direct {v1, p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$3;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;IF)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->j:Ljava/lang/Thread;

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->l()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b(IF)V

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->setContentView(Landroid/view/View;)V

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    invoke-direct {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(IF)V
    :try_end_0
    .catch Lcom/sun/pdfview/decrypt/PDFAuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->setContentView(I)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->h()I

    move-result v1

    invoke-virtual {p0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->i()I

    move-result v2

    invoke-virtual {p0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$1;

    invoke-direct {v3, p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$2;

    invoke-direct {v0, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/pdfview/decrypt/PDFAuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(IF)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->d(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->i:Lcom/sun/pdfview/PDFPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->i:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPage;->getPageNumber()I

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sun/pdfview/PDFFile;->getPage(IZ)Lcom/sun/pdfview/PDFPage;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->i:Lcom/sun/pdfview/PDFPage;

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->i:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPage;->getWidth()F

    move-result v1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->i:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPage;->getHeight()F

    move-result v2

    const/4 v3, 0x0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->i:Lcom/sun/pdfview/PDFPage;

    mul-float/2addr v1, p2

    float-to-int v1, v1

    mul-float/2addr v2, p2

    float-to-int v2, v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/sun/pdfview/PDFPage;->getImage(IILandroid/graphics/RectF;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-static {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->d(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->h:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->h:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PDFVIEWER"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->l()V

    return-void
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(IF)V

    return-void
.end method

.method static synthetic c(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    return v0
.end method

.method static synthetic d(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    return-object v0
.end method

.method static synthetic e(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)F
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    return v0
.end method

.method static synthetic f(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    return-object v0
.end method

.method static synthetic g(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->n()V

    return-void
.end method

.method static synthetic h(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->m()V

    return-void
.end method

.method static synthetic i(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->p()V

    return-void
.end method

.method static synthetic j(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->q()V

    return-void
.end method

.method static synthetic k(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->o()V

    return-void
.end method

.method private k()Z
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    const-string v0, "PDFVIEWER"

    const-string v1, "restoreInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    if-eq v0, p0, :cond_1

    const-string v1, "PDFVIEWER"

    const-string v2, "restoring Instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget v1, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    iget-object v1, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    iget-object v1, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->i:Lcom/sun/pdfview/PDFPage;

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->i:Lcom/sun/pdfview/PDFPage;

    iget-object v1, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    iget v1, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    iget-object v1, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c:Ljava/lang/String;

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c:Ljava/lang/String;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->j:Ljava/lang/Thread;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->j:Ljava/lang/Thread;

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic l(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->j:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$4;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$4;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method static synthetic m(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lcom/sun/pdfview/PDFPage;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->i:Lcom/sun/pdfview/PDFPage;

    return-object v0
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x40400000    # 3.0f

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    if-eqz v0, :cond_1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iput v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    :cond_0
    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    const-string v0, "PDFVIEWER"

    const-string v1, "Disabling zoom in button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    invoke-direct {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(IF)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private n()V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x3e800000    # 0.25f

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    if-eqz v0, :cond_1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iput v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    :cond_0
    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    const-string v0, "PDFVIEWER"

    const-string v1, "Disabling zoom out button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    invoke-direct {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(IF)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private o()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    if-eqz v0, :cond_0

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFFile;->getNumPages()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const-string v0, "Loading"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading PDF Page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->h:Landroid/app/ProgressDialog;

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    invoke-direct {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(IF)V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    if-eqz v0, :cond_0

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    if-le v0, v3, :cond_0

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const-string v0, "Loading"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading PDF Page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->h:Landroid/app/ProgressDialog;

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    invoke-direct {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(IF)V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->showDialog(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Ljava/io/File;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/b;->a(Ljava/nio/MappedByteBuffer;)Lc/a/a/b/b;

    move-result-object v0

    if-nez p2, :cond_0

    new-instance v1, Lcom/sun/pdfview/PDFFile;

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFFile;-><init>(Lc/a/a/b/b;)V

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Anzahl Seiten:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFFile;->getNumPages()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/sun/pdfview/PDFFile;

    new-instance v2, Lcom/sun/pdfview/decrypt/PDFPassword;

    invoke-direct {v2, p2}, Lcom/sun/pdfview/decrypt/PDFPassword;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0, v2}, Lcom/sun/pdfview/PDFFile;-><init>(Lc/a/a/b/b;Lcom/sun/pdfview/decrypt/PDFPassword;)V

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d:Lcom/sun/pdfview/PDFFile;

    goto :goto_0
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "PDFVIEWER"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->k:Landroid/os/Handler;

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->k()Z

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    if-eqz v0, :cond_0

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-direct {v0, p0, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Landroid/content/Context;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iput-object v6, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-direct {v0, p0, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Landroid/content/Context;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PDFVIEWER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.sf.andpdf.extra.SHOWIMAGES"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sun/pdfview/PDFImage;->sShowImages:Z

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.sf.andpdf.extra.ANTIALIAS"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sun/pdfview/PDFPaint;->s_doAntiAlias:Z

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.sf.andpdf.extra.USEFONTSUBSTITUTION"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/sun/pdfview/font/PDFFont;->sUseFontSubstitution:Z

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "net.sf.andpdf.extra.KEEPCACHES"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lc/a/a/d/a;->a:Z

    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "no file selected"

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c:Ljava/lang/String;

    :cond_2
    iput v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    const v0, 0x3fe51eb8    # 1.79f

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f:F

    invoke-direct {p0, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "net.sf.andpdf.extra.PDFFILENAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->f()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->j()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$5;

    invoke-direct {v2, p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$5;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Jump to page"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;

    invoke-direct {v3, p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$6;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$6;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x2

    const-string v1, "Previous Page"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const-string v0, "Next Page"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const-string v1, "Goto Page"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const/4 v0, 0x5

    const-string v1, "Zoom Out"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const-string v1, "Zoom In"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    sget-boolean v0, Lc/a/a/d/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    const-string v1, "Clear Caches"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_0
    return v3
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->g:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->o()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->p()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->q()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->m()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->n()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->finish()V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lc/a/a/d/a;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    const-string v0, "PDFVIEWER"

    const-string v1, "onRetainNonConfigurationInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
