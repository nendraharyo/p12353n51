.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Z

.field final synthetic b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;[Z)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7$1;->a:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->g(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->e(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)I

    move-result v0

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;

    iget-object v1, v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    invoke-static {v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7$1;->a:[Z

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7$1;->a:[Z

    aput-boolean v2, v0, v2

    const/4 v0, 0x0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/util/SparseArray;)V

    invoke-static {v3, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(II)V

    goto :goto_0
.end method
