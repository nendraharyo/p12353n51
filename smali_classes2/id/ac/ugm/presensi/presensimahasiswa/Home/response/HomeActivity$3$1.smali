.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;

    iget-object v1, v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V

    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/util/SparseArray;)V

    invoke-static {v2, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(II)V

    goto :goto_0
.end method
