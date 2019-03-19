.class public Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;
.super Lid/ac/ugm/presensi/presensimahasiswa/b;


# instance fields
.field private A:Landroid/support/design/widget/BottomNavigationView$b;

.field a:Landroid/app/ProgressDialog;

.field b:Landroid/content/DialogInterface;

.field c:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

.field private d:Landroid/support/v7/widget/Toolbar;

.field private e:Landroid/support/v4/app/Fragment;

.field private f:Landroid/nfc/NfcAdapter;

.field private g:Landroid/app/PendingIntent;

.field private h:Landroid/nfc/NdefMessage;

.field private i:Ljava/io/File;

.field private j:I

.field private k:I

.field private l:I

.field private final m:Landroid/os/Handler;

.field private n:Z

.field private o:Lcom/loopj/android/http/PersistentCookieStore;

.field private p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/google/gson/Gson;

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:I

.field private u:Landroid/app/job/JobScheduler;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/nfc/NfcAdapter;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->m:Landroid/os/Handler;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->x:Ljava/lang/String;

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->y:Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/String;

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->z:[[Ljava/lang/String;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;

    invoke-direct {v0, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$9;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->A:Landroid/support/design/widget/BottomNavigationView$b;

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;I)I
    .locals 0

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->l:I

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

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->e:Landroid/support/v4/app/Fragment;

    return-object p1
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->p:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->p:Landroid/util/SparseArray;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Landroid/nfc/Tag;)V

    invoke-direct {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->b(Landroid/nfc/Tag;)[Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 2

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/p;

    move-result-object v0

    const v1, 0x7f090077

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    invoke-virtual {v0}, Landroid/support/v4/app/p;->c()I

    return-void
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Fail to read sector binary"

    const-string v0, ""

    const-string v0, ""

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const-string v1, ""

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    aget-object v0, v0, v5

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->g()I

    move-result v0

    move v5, v0

    :goto_0
    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->h()I

    move-result v0

    if-gt v5, v0, :cond_5

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+Sector: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    const/4 v7, 0x6

    if-ne v5, v7, :cond_1

    const/4 v4, 0x0

    aget-object v7, v0, v4

    invoke-static {v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v8, 0x4

    new-array v8, v8, [B

    const/4 v9, 0x0

    const/4 v10, 0x3

    aget-byte v10, v4, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x2

    aget-byte v10, v4, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    aget-byte v10, v4, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aget-byte v4, v4, v10

    aput-byte v4, v8, v9

    const/4 v4, 0x0

    invoke-static {v8, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a([BZ)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0x10

    invoke-static {v4, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    const-wide/16 v10, 0x580

    sub-long/2addr v8, v10

    long-to-double v8, v8

    const-wide/high16 v10, 0x40b0000000000000L    # 4096.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v4, v8

    const v8, 0x30d40

    if-ge v4, v8, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->s:Z

    invoke-static {v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [B

    const/4 v7, 0x0

    const/4 v8, 0x4

    aget-byte v8, v2, v8

    aput-byte v8, v3, v7

    const/4 v7, 0x1

    const/4 v8, 0x3

    aget-byte v8, v2, v8

    aput-byte v8, v3, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    aget-byte v8, v2, v8

    aput-byte v8, v3, v7

    const/4 v7, 0x3

    const/4 v8, 0x1

    aget-byte v8, v2, v8

    aput-byte v8, v3, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aget-byte v2, v2, v8

    aput-byte v2, v3, v7

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a([BZ)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v8, 0x580

    sub-long/2addr v2, v8

    long-to-double v2, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    const-wide v8, 0x218711a00L

    cmp-long v7, v2, v8

    if-lez v7, :cond_1

    const-wide v8, 0x218711a00L

    sub-long/2addr v2, v8

    :cond_1
    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a(Ljava/lang/String;)[B

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    const/4 v9, 0x0

    invoke-static {v7, v9}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a([BZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v1, v9, :cond_2

    const/4 v9, 0x0

    invoke-static {v7, v9}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a([BZ)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v10, v1, 0x2

    invoke-virtual {v9, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    int-to-char v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v6, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move v0, v4

    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "*No keys found or dead sector"

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->s:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->e:Landroid/support/v4/app/Fragment;

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v0, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->s:Z

    :cond_6
    :goto_3
    return-void

    :cond_7
    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->r:Ljava/lang/String;

    iput v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->t:I

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->e:Landroid/support/v4/app/Fragment;

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->r:Ljava/lang/String;

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->t:I

    invoke-virtual {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(Ljava/lang/String;I)V

    goto :goto_3

    :cond_8
    const v0, 0x7f0f0109

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;

    invoke-direct {v1, p0, p1, p3}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/util/SparseArray;)V

    invoke-direct {p0, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/util/SparseArray;)V

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->g()V

    goto :goto_0
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

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "android_id"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, p2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "device"

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dosen"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "kelas"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "user"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pertemuan"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

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

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->o:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v2, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    const/4 v1, 0x1

    const/16 v4, 0x3e7

    invoke-virtual {v2, v1, v4}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$7;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$7;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)V

    invoke-virtual {v2, v0, v3, v1}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->n:Z

    return p1
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
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

    iget-object v6, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->i:Ljava/io/File;

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

    invoke-virtual {p0, v7}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getPreferences(I)Landroid/content/SharedPreferences;

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

    invoke-direct {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Landroid/content/Intent;)V

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
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x2

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->j:I

    const/4 v0, 0x6

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->k:I

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->j:I

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->k:I

    invoke-virtual {v1, v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a(II)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g()V

    goto :goto_2

    :cond_5
    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->j:I

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->k:I

    invoke-static {v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(II)V

    const/4 v0, -0x1

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->l:I

    iput-boolean v8, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->n:Z

    invoke-direct {p0, v1, p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Landroid/support/v4/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Landroid/util/SparseArray;)V

    return-void
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "android_id"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, p2}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "device"

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mahasiswa"

    iget v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->t:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "dosen"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "kelas"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "user"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pertemuan"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

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

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->o:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v2, v1}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    const/4 v1, 0x1

    const/16 v4, 0x3e7

    invoke-virtual {v2, v1, v4}, Lcom/loopj/android/http/AsyncHttpClient;->setMaxRetriesAndTimeout(II)V

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$8;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$8;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)V

    invoke-virtual {v2, v0, v3, v1}, Lcom/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method private b(Landroid/nfc/Tag;)[Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-string v3, "android.nfc.tech."

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UID In Hex: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->b([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v5

    const-string v0, "Technologies: "

    array-length v6, v5

    move-object v1, v0

    move v0, v2

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v5, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v4, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Card Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Unknown"

    move v1, v2

    :goto_1
    array-length v3, v5

    if-ge v1, v3, :cond_6

    aget-object v3, v5, v1

    const-class v6, Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "Mifare Classic"

    aput-object v3, v4, v9

    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/tech/MifareClassic;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Mifare "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/nfc/tech/MifareClassic;->getSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes \nSector Count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\nBlock Count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/nfc/tech/MifareClassic;->getBlockCount()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_0
    const-string v0, "Classic"

    goto :goto_2

    :pswitch_1
    const-string v0, "Plus"

    goto :goto_2

    :pswitch_2
    const-string v0, "Pro"

    goto :goto_2

    :cond_2
    aget-object v3, v5, v1

    const-class v6, Landroid/nfc/tech/MifareUltralight;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Mifare UltraLight"

    aput-object v3, v4, v9

    invoke-static {p1}, Landroid/nfc/tech/MifareUltralight;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareUltralight;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/tech/MifareUltralight;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Mifare "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    goto :goto_3

    :pswitch_3
    const-string v0, "Ultralight"

    goto :goto_4

    :pswitch_4
    const-string v0, "Ultralight C"

    goto :goto_4

    :cond_3
    aget-object v3, v5, v1

    const-class v6, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "IsoDep"

    aput-object v3, v4, v9

    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "IsoDep \n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    goto :goto_3

    :cond_4
    aget-object v3, v5, v1

    const-class v6, Landroid/nfc/tech/Ndef;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Is Writable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "\nCan Make ReadOnly: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/nfc/tech/Ndef;->canMakeReadOnly()Z

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    goto/16 :goto_3

    :cond_5
    aget-object v3, v5, v1

    const-class v6, Landroid/nfc/tech/NdefFormatable;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/nfc/tech/NdefFormatable;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "NdefFormatable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/nfc/tech/NdefFormatable;->getTag()Landroid/nfc/Tag;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    goto/16 :goto_3

    :cond_6
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->v:Landroid/widget/TextView;

    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic c(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->l:I

    return v0
.end method

.method public static c()Z
    .locals 2

    const-string v0, "ping -c 1 google.com"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->k:I

    return v0
.end method

.method private e()V
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
    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f()V

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

.method static synthetic e(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->n:Z

    return v0
.end method

.method static synthetic f(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->e:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method private f()V
    .locals 5

    const-string v0, "/PresensiUGM/key-files/std.keys"

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "/PresensiUGM/key-files/extended-std.keys"

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getAssets()Landroid/content/res/AssetManager;

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

.method static synthetic g(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method private g()V
    .locals 3

    invoke-static {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->c(Landroid/content/Context;)Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$1;

    invoke-direct {v2, p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic h(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->t:I

    return v0
.end method

.method private h()V
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

    iput-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a:Landroid/app/ProgressDialog;

    const-string v3, "Loading, please wait.."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a:Landroid/app/ProgressDialog;

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

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->o:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-virtual {v0, v3}, Lcom/loopj/android/http/AsyncHttpClient;->setCookieStore(Lb/a/a/a/b/h;)V

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$6;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$6;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->h()V

    return-void
.end method

.method protected a(Landroid/nfc/Tag;)V
    .locals 4

    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Landroid/nfc/tech/IsoDep;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->e:[B

    invoke-virtual {v1, v0}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a([B)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;

    invoke-direct {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;-><init>(Landroid/nfc/tech/IsoDep;)V

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "-"

    iput-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->r:Ljava/lang/String;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->t:I

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->e:Landroid/support/v4/app/Fragment;

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->r:Ljava/lang/String;

    iget v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->t:I

    invoke-virtual {v0, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Landroid/nfc/tech/IsoDep;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0f0145

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public b()V
    .locals 1

    const-string v0, "Dosen"

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->r:Ljava/lang/String;

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->h()V

    return-void
.end method

.method public d()V
    .locals 3

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Login failed"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

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
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->finish()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->g()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    invoke-super {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const v7, 0x10008000

    const/16 v6, 0x2711

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001c

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->setContentView(I)V

    new-instance v0, Lcom/loopj/android/http/PersistentCookieStore;

    invoke-direct {v0, p0}, Lcom/loopj/android/http/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->o:Lcom/loopj/android/http/PersistentCookieStore;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f:Landroid/nfc/NfcAdapter;

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->q:Lcom/google/gson/Gson;

    iput-boolean v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->s:Z

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->g:Landroid/app/PendingIntent;

    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v1, v5, [Landroid/nfc/NdefRecord;

    const-string v2, "Message from NFC Reader :-)"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, v2, v3, v5}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Ljava/lang/String;Ljava/util/Locale;Z)Landroid/nfc/NdefRecord;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->h:Landroid/nfc/NdefMessage;

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->u:Landroid/app/job/JobScheduler;

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lid/ac/ugm/presensi/presensimahasiswa/utils/JobRunnerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v5, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->u:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    if-gtz v0, :cond_0

    :cond_0
    invoke-static {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->e()V

    :goto_0
    const v0, 0x7f09012c

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->d:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->d:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomNavigationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomNavigationView;->setVisibility(I)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->A:Landroid/support/design/widget/BottomNavigationView$b;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$b;)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user_login"

    invoke-static {v0, v1, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mk_finished"

    invoke-static {v1, v2, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->finish()V

    :goto_1
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->w:Landroid/nfc/NfcAdapter;

    new-array v0, v5, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-class v2, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-class v2, Landroid/nfc/tech/NfcA;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->z:[[Ljava/lang/String;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "presence"

    invoke-static {v0, v1, v6}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_4

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;

    invoke-direct {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;-><init>()V

    invoke-direct {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Landroid/support/v4/app/Fragment;)V

    :goto_2
    const-string v0, "data_local"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->q:Lcom/google/gson/Gson;

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "user_username"

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    invoke-static {p0, v0, v5}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mk_finished"

    invoke-static {v0, v1, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/AccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mk_finished"

    invoke-static {v0, v1, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-direct {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->e:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->e:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090019

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090013

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f090006

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v0, 0x7f0900c9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->setIntent(Landroid/content/Intent;)V

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

    if-eqz v0, :cond_4

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

    if-ge v1, v0, :cond_4

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

    if-eqz v0, :cond_4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->e:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->b:Landroid/content/DialogInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->b:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_2
    invoke-direct {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->b(Landroid/content/Intent;)V

    :cond_3
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getSupportFragmentManager()Landroid/support/v4/app/m;

    move-result-object v0

    const-string v1, "presence"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/m;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_4
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090006

    if-ne v0, v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Masukkan password"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0b0060

    invoke-virtual {v2, v3, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f090092

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$3;

    invoke-direct {v3, p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$3;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$4;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$4;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->b:Landroid/content/DialogInterface;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$5;

    invoke-direct {v3, p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity$5;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->n:Z

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPush(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.nfc.extra.TAG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->w:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->w:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->w:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onResume()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f:Landroid/nfc/NfcAdapter;

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->g:Landroid/app/PendingIntent;

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v1, v0}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->f:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->h:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, p0, v2}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-array v2, v4, [Landroid/content/IntentFilter;

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->w:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->w:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->w:Landroid/nfc/NfcAdapter;

    check-cast v1, [[Ljava/lang/String;

    check-cast v1, [[Ljava/lang/String;

    invoke-virtual {v3, p0, v0, v2, v1}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "NFC tidak aktif. Silakan Aktifkan NFC."

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
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

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->i:Ljava/io/File;

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

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->setResult(I)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->setResult(I)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->finish()V

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

    invoke-virtual {p0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->getPreferences(I)Landroid/content/SharedPreferences;

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
