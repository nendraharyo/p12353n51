.class Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;

    new-instance v1, Lcom/loopj/android/http/PersistentCookieStore;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;

    invoke-direct {v1, v2}, Lcom/loopj/android/http/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;Lcom/loopj/android/http/PersistentCookieStore;)Lcom/loopj/android/http/PersistentCookieStore;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;Lcom/google/gson/Gson;)Lcom/google/gson/Gson;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "data_history"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;->b(Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;)V

    :cond_0
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    const/4 v0, 0x1

    return v0
.end method
