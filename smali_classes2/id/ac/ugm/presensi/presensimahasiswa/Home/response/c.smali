.class public Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/app/ProgressDialog;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/google/gson/Gson;

.field private f:Landroid/app/Activity;

.field private g:Lorg/json/JSONArray;

.field private h:Lorg/json/JSONArray;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

.field private m:Lcom/loopj/android/http/PersistentCookieStore;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->c:Ljava/util/Vector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->d:Ljava/util/List;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->c:Ljava/util/Vector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->d:Ljava/util/List;

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->h:Lorg/json/JSONArray;

    return-object p1
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->c()V

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "kode_mk"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

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

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/support/v4/app/i;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "android_id"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, p2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "device"

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dosen"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "kelas"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pertemuan"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

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

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->m:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v2, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    const/4 v1, 0x1

    const/16 v4, 0x3e7

    invoke-virtual {v2, v1, v4}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$3;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$3;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)V

    invoke-virtual {v2, v0, v3, v1}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    const-string v0, "UGMFWSERVICE"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Authorization"

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

    invoke-virtual {v1, v0, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/i;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, p3}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "device"

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "username"

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "password"

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->k:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "user"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v4

    const-string v5, "kode_mk"

    invoke-static {v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dosen"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v4

    const-string v5, "kode_mk"

    invoke-static {v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "kelas"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v4

    const-string v5, "kode_mk"

    invoke-static {v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pertemuan"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v4

    const-string v5, "kode_mk"

    invoke-static {v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->m:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    const/4 v3, 0x1

    const/16 v4, 0x3e7

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$5;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$5;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->d()V

    return-void
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>()V

    const-string v0, "UGMFWSERVICE"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Authorization"

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

    invoke-virtual {v1, v0, v2}, Lcom/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v2}, Lcom/loopj/android/http/RequestParams;-><init>()V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/i;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, p3}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "device"

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hris"

    invoke-virtual {v2, v0, p1}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "user"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v4

    const-string v5, "kode_mk"

    invoke-static {v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "dosen"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v4

    const-string v5, "kode_mk"

    invoke-static {v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "kelas"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v4

    const-string v5, "kode_mk"

    invoke-static {v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pertemuan"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v4

    const-string v5, "kode_mk"

    invoke-static {v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->m:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    const/4 v3, 0x1

    const/16 v4, 0x3e7

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method static synthetic c(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->j:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
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

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->m:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v0, v3}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$2;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method static synthetic d(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->c:Ljava/util/Vector;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x1

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

    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b:Landroid/app/ProgressDialog;

    const-string v3, "Loading, please wait.."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

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

    const/16 v3, 0x3e7

    invoke-virtual {v0, v5, v3}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->m:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v0, v3}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$4;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$4;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method static synthetic e(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->h:Lorg/json/JSONArray;

    return-object v0
.end method

.method static synthetic f(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x2d1

    const/16 v3, 0x335

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->i:Ljava/lang/String;

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const v0, 0x7f090035

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    const v0, 0x7f090139

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09013a

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f090138

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f:Landroid/app/Activity;

    const-string v1, "data_local"

    const-string v7, ""

    invoke-static {v0, v1, v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->e:Lcom/google/gson/Gson;

    aget-object v1, v3, v8

    const-class v7, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0, v1, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-string v7, "kode_mk"

    invoke-static {v1, v7, v8}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;

    move-object v1, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Landroid/app/AlertDialog;[Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lorg/json/JSONArray;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 6

    const/16 v5, 0x2e5

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0037

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f090088

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "success"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-string v3, "data_history"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->g:Lorg/json/JSONArray;

    :goto_0
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->g:Lorg/json/JSONArray;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->g:Lorg/json/JSONArray;

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-string v3, "data_history"

    iget-object v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->g:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    const v3, 0x7f0e0001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v3}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/utils/b;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/b;-><init>(Landroid/widget/ImageView;I)V

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setLayout(II)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->c:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->g:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f:Landroid/app/Activity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->e:Lcom/google/gson/Gson;

    new-instance v0, Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loopj/android/http/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->m:Lcom/loopj/android/http/PersistentCookieStore;

    const v0, 0x7f0b003f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v0, ""

    const-string v0, ""

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v3, "data_local"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->e:Lcom/google/gson/Gson;

    const-class v4, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->l:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    const v0, 0x7f090032

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a:Landroid/widget/Button;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a:Landroid/widget/Button;

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_0

    const-string v0, "name"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hasil"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "name"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "hasil"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(Ljava/lang/String;I)V

    :cond_0
    return-object v1
.end method
