.class Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$7;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$7;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a$7;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
