.class public Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;
.super Landroid/app/Application;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/nfc/Tag;

.field private static c:[B

.field private static d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[[B>;"
        }
    .end annotation
.end field

.field private static e:I

.field private static f:I

.field private static g:Ljava/lang/String;

.field private static h:Z

.field private static i:I

.field private static j:Landroid/nfc/NfcAdapter;

.field private static k:Landroid/content/Context;

.field private static l:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-class v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a:Ljava/lang/String;

    sput-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b:Landroid/nfc/Tag;

    sput-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->c:[B

    sput-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->d:Landroid/util/SparseArray;

    sput v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->e:I

    sput v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->f:I

    sput-boolean v3, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->h:Z

    sput v3, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->i:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 2

    int-to-float v0, p0

    sget v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->l:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;)I
    .locals 2

    const-string v0, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a(Landroid/nfc/Tag;)Landroid/nfc/Tag;

    move-result-object v0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/nfc/Tag;)V

    invoke-static {v0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/nfc/Tag;Landroid/content/Context;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x4

    goto :goto_0
.end method

.method public static a(Landroid/nfc/Tag;Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, -0x3

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-class v2, Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/tech/NfcA;->getAtqa()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_5

    aget-byte v3, v2, v0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    aget-byte v3, v2, v0

    const/16 v4, 0x44

    if-eq v3, v4, :cond_3

    aget-byte v3, v2, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    aget-byte v0, v2, v0

    const/16 v2, 0x42

    if-ne v0, v2, :cond_5

    :cond_3
    invoke-virtual {v1}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v0

    int-to-byte v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_4

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    const/16 v1, -0x78

    if-eq v0, v1, :cond_4

    const/16 v1, 0x28

    if-ne v0, v1, :cond_5

    :cond_4
    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->e:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->k:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const-string v0, ""

    if-eqz p0, :cond_0

    array-length v4, p0

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-byte v3, p0, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Byte;->intValue()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(II)V
    .locals 0

    sput p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->e:I

    sput p1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->f:I

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->j:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->j:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->j:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x0

    new-array v3, v4, [[Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/String;

    const-class v5, Landroid/nfc/tech/NfcA;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v4, v3, v6

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/nfc/NfcAdapter;)V
    .locals 0

    sput-object p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->j:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method public static a(Landroid/nfc/Tag;)V
    .locals 1

    sput-object p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b:Landroid/nfc/Tag;

    invoke-virtual {p0}, Landroid/nfc/Tag;->getId()[B

    move-result-object v0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->c:[B

    return-void
.end method

.method public static a(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[[B>;)V"
        }
    .end annotation

    sput-object p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->d:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 2

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/a/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;ZLandroid/content/Context;)[Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p1, :cond_1

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    :try_start_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    const v0, 0x7f0f00fb

    const/4 v3, 0x1

    :try_start_3
    invoke-static {p2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_1
    return-object v1

    :catch_1
    move-exception v0

    sget-object v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a:Ljava/lang/String;

    const-string v3, "Error while closing file."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    :try_start_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_3
    move-object v1, v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    :try_start_7
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v0, v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_4
    :try_start_8
    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while reading from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    move-object v0, v1

    goto :goto_3

    :catch_3
    move-exception v0

    sget-object v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a:Ljava/lang/String;

    const-string v3, "Error while closing file."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v0

    sget-object v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a:Ljava/lang/String;

    const-string v3, "Error while closing file."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_6
    :goto_6
    throw v0

    :catch_5
    move-exception v1

    sget-object v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a:Ljava/lang/String;

    const-string v3, "Error while closing file."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :cond_7
    move-object v0, v1

    goto :goto_3
.end method

.method public static b()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->k:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->j:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->j:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->j:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const v1, 0x7f0f0104

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    :try_start_0
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a:Ljava/lang/String;

    const-string v1, "Argument(s) for hexStringToByteArray(String s)was not a hex string"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v2
.end method

.method public static c(Landroid/content/Context;)Lid/ac/ugm/presensi/presensimahasiswa/utils/d;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b:Landroid/nfc/Tag;

    if-eqz v0, :cond_0

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b:Landroid/nfc/Tag;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b(Landroid/nfc/Tag;)Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->e()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g()V

    :goto_1
    if-nez v1, :cond_0

    :goto_2
    return-object v0

    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static c()Z
    .locals 9

    const/4 v8, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->i:I

    if-eqz v2, :cond_1

    sget v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->i:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->k:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    sput-boolean v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->h:Z

    sput v8, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->i:I

    move v0, v1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/bcm2079x-i2c"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    sput v8, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->i:I

    move v0, v1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/File;

    const-string v3, "/dev/pn544"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    sput v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->i:I

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/lib"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libnfc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "brcm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    sput v8, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->i:I

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    sput v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->i:I

    goto :goto_0
.end method

.method public static d()Landroid/nfc/Tag;
    .locals 1

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b:Landroid/nfc/Tag;

    return-object v0
.end method

.method public static e()Landroid/nfc/NfcAdapter;
    .locals 1

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->j:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method public static f()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[[B>;"
        }
    .end annotation

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->d:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static g()I
    .locals 1

    sget v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->e:I

    return v0
.end method

.method public static h()I
    .locals 1

    sget v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->f:I

    return v0
.end method

.method public static i()Z
    .locals 1

    sget-boolean v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->h:Z

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x1

    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->k:Landroid/content/Context;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->l:F

    :try_start_0
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->g:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a:Ljava/lang/String;

    const-string v1, "Version not found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
