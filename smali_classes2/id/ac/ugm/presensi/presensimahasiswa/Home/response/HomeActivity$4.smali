.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

.field final synthetic b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$4;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$4;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$4;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$4;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->f()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$4;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$4;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->d(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$4$1;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$4$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
