.class public Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;
.super Lid/ac/ugm/presensi/presensimahasiswa/b;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/app/ProgressDialog;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/EditText;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/EditText;

.field private g:Landroid/nfc/NfcAdapter;

.field private h:Landroid/app/PendingIntent;

.field private i:Landroid/nfc/NdefMessage;

.field private j:Ljava/io/File;

.field private k:I

.field private l:I

.field private m:I

.field private final n:Landroid/os/Handler;

.field private o:Z

.field private p:Lcom/loopj/android/http/PersistentCookieStore;

.field private q:Lcom/google/gson/Gson;

.field private r:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;I)I
    .locals 0

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->m:I

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/util/Locale;Z)Landroid/nfc/NdefRecord;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    if-eqz p3, :cond_0

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    if-eqz p3, :cond_1

    move v0, v1

    :goto_1
    array-length v4, v2

    add-int/2addr v0, v4

    int-to-char v0, v0

    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    int-to-byte v0, v0

    aput-byte v0, v4, v1

    array-length v0, v2

    invoke-static {v2, v1, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v2

    add-int/lit8 v0, v0, 0x1

    array-length v2, v3

    invoke-static {v3, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_TEXT:[B

    new-array v1, v1, [B

    invoke-direct {v0, v6, v2, v1, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0

    :cond_0
    const-string v0, "UTF-16"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    goto :goto_1
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->v:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->e:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    move v2, v1

    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_3

    if-nez v3, :cond_0

    invoke-static {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const-string v0, "/PresensiUGM/key-files"

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->d()V

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->e:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->e:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Fail to read sector binary"

    const-string v0, ""

    const-string v0, ""

    const-wide/16 v2, 0x0

    const-string v0, ""

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->g()I

    move-result v0

    move v4, v0

    :goto_0
    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->h()I

    move-result v0

    if-gt v4, v0, :cond_5

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+Sector: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    const/4 v1, 0x6

    if-ne v4, v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v6, 0x4

    aget-byte v6, v1, v6

    aput-byte v6, v2, v3

    const/4 v3, 0x1

    const/4 v6, 0x3

    aget-byte v6, v1, v6

    aput-byte v6, v2, v3

    const/4 v3, 0x2

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    aput-byte v6, v2, v3

    const/4 v3, 0x3

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    aput-byte v6, v2, v3

    const/4 v3, 0x4

    const/4 v6, 0x0

    aget-byte v1, v1, v6

    aput-byte v1, v2, v3

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a([BZ)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v6, 0x580

    sub-long/2addr v2, v6

    long-to-double v2, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide v6, 0x218711a00L

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    const-wide v6, 0x218711a00L

    sub-long/2addr v2, v6

    :cond_1
    const/4 v1, 0x2

    if-ne v4, v1, :cond_3

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a(Ljava/lang/String;)[B

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a([BZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_2

    const/4 v8, 0x0

    invoke-static {v6, v8}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a([BZ)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    invoke-static {v5, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-wide v0, v2

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "*No keys found or dead sector"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v2

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->s:Ljava/lang/String;

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->b()V

    :cond_6
    :goto_3
    return-void

    :cond_7
    const v0, 0x7f0f0109

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->b()V

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V
    .locals 1

    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/util/SparseArray;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/util/SparseArray;)V

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->e()V

    goto :goto_0
.end method

.method private a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;

    invoke-direct {v1, p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$7;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

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

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "android_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p2, p3}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "device"

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "username"

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->t:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "password"

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->u:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "user"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->r:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "kode_mk"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->p:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    const/4 v3, 0x1

    const/16 v4, 0x3e7

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$4;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$4;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->o:Z

    return p1
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->t:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
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

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->b:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->b:Landroid/app/ProgressDialog;

    const-string v3, "Loading, please wait.."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->b:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->b:Landroid/app/ProgressDialog;

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

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->p:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v0, v3}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$3;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$3;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->a(Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

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

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getContentResolver()Landroid/content/ContentResolver;

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

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->r:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "kode_mk"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->p:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    const/4 v3, 0x1

    const/16 v4, 0x3e7

    invoke-virtual {v1, v3, v4}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$5;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$5;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method static synthetic c(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->v:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic c(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->u:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v1, ""

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "std.keys"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->j:Ljava/io/File;

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v7}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_used_key_files"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-static {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->c(Landroid/content/Context;)Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    invoke-virtual {v1, v0, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a([Ljava/io/File;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x2

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->k:I

    const/4 v0, 0x6

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->l:I

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->k:I

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->l:I

    invoke-virtual {v1, v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a(II)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g()V

    goto :goto_2

    :cond_5
    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->k:I

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->l:I

    invoke-static {v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(II)V

    const/4 v0, -0x1

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->m:I

    iput-boolean v8, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->o:Z

    invoke-direct {p0, v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic d(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->n:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 5

    const-string v0, "/PresensiUGM/key-files/std.keys"

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "/PresensiUGM/key-files/extended-std.keys"

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    const-string v3, "key-files/std.keys"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "key-files/extended-std.keys"

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->m:I

    return v0
.end method

.method private e()V
    .locals 3

    invoke-static {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->c(Landroid/content/Context;)Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6;

    invoke-direct {v2, p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$6;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic f(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->l:I

    return v0
.end method

.method static synthetic g(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->o:Z

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    :cond_0
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->e()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->setContentView(I)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->q:Lcom/google/gson/Gson;

    new-instance v0, Lcom/loopj/android/http/PersistentCookieStore;

    invoke-direct {v0, p0}, Lcom/loopj/android/http/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->p:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->g:Landroid/nfc/NfcAdapter;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->h:Landroid/app/PendingIntent;

    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v1, v4, [Landroid/nfc/NdefRecord;

    const-string v2, "Message from NFC Reader :-)"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, v2, v3, v4}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->a(Ljava/lang/String;Ljava/util/Locale;Z)Landroid/nfc/NdefRecord;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->i:Landroid/nfc/NdefMessage;

    invoke-static {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->a()V

    :goto_0
    const v0, 0x7f090033

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->a:Landroid/widget/Button;

    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->f:Landroid/widget/EditText;

    const v0, 0x7f090131

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f090130

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$1;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "at_current_mk"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->w:Lorg/json/JSONArray;

    :goto_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->w:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->d:Landroid/widget/EditText;

    const-string v2, "username"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "data_local"

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->q:Lcom/google/gson/Gson;

    const-class v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->r:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->r:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "kode_mk"

    invoke-static {v3, v4, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->c:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->e:Landroid/widget/EditText;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->r:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "kode_mk"

    invoke-static {v4, v5, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->b()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "username"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->d:Landroid/widget/EditText;

    const-string v1, "Triyogatama Wahyu Widodo, M.Kom."

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "presence"

    const/16 v1, 0x2711

    invoke-static {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->a:Landroid/widget/Button;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v6

    invoke-static {p0, v0, v4}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->w:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a(Landroid/nfc/Tag;)Landroid/nfc/Tag;

    move-result-object v0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/nfc/Tag;)V

    const-string v0, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v0, v2

    new-array v3, v0, [Landroid/nfc/NdefMessage;

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_2

    aget-object v0, v2, v1

    check-cast v0, Landroid/nfc/NdefMessage;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-array v0, v1, [B

    const-string v0, "android.nfc.extra.ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getId()[B

    const-string v0, "no_dialog_open"

    invoke-static {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->c()V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getSupportFragmentManager()Landroid/support/v4/app/m;

    move-result-object v0

    const-string v1, "presence"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/m;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->o:Z

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->g:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->g:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->g:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPush(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onResume()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->g:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->g:Landroid/nfc/NfcAdapter;

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->h:Landroid/app/PendingIntent;

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v1, v0}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->g:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->i:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, p0, v1}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onStart()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/PresensiUGM/key-files"

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->j:Ljava/io/File;

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->e:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->setResult(I)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->setResult(I)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->finish()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_used_key_files"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
