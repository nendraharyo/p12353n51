.class Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;IF)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$3;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    iput p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$3;->a:I

    iput p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$3;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$3;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lcom/sun/pdfview/PDFFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$3;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$3;->a:I

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$3;->b:F

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$3;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void

    :catch_0
    move-exception v0

    const-string v1, "PDFVIEWER"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
