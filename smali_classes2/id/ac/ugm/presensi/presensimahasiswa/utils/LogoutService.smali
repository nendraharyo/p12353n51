.class public Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;
.super Landroid/app/Service;


# instance fields
.field a:Landroid/content/Intent;

.field b:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

.field c:Landroid/os/CountDownTimer;

.field private d:Lcom/loopj/android/http/PersistentCookieStore;

.field private e:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "id.ac.ugm.presensi.presensimahasiswa.countdown_br"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->a:Landroid/content/Intent;

    const/4 v0, 0x0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->c:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;)Lcom/google/gson/Gson;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->e:Lcom/google/gson/Gson;

    return-object v0
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;Lcom/loopj/android/http/PersistentCookieStore;)Lcom/loopj/android/http/PersistentCookieStore;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->d:Lcom/loopj/android/http/PersistentCookieStore;

    return-object p1
.end method

.method private a()V
    .locals 5

    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    const-string v1, "UGMFWSERVICE"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lid/ac/ugm/presensi/presensimahasiswa/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lid/ac/ugm/presensi/presensimahasiswa/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0x3e7

    invoke-virtual {v0, v3, v4}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->d:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v0, v3}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$2;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "kode_mk"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    const-string v0, "UGMFWSERVICE"

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lid/ac/ugm/presensi/presensimahasiswa/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lid/ac/ugm/presensi/presensimahasiswa/a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v3}, Lcom/loopj/android/http/RequestParams;-><init>()V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "android_id"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, p2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "device"

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dosen"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "kelas"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pertemuan"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->d:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v2, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    const/4 v1, 0x1

    const/16 v4, 0x3e7

    invoke-virtual {v2, v1, v4}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$3;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$3;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;)V

    invoke-virtual {v2, v0, v3, v1}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->a()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->e:Lcom/google/gson/Gson;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;

    const-wide/32 v2, 0x36ee80

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;JJ)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->c:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->c:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/LogoutService;->c:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method