.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6;

    iget-object v1, v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Landroid/util/SparseArray;)V

    return-void
.end method
