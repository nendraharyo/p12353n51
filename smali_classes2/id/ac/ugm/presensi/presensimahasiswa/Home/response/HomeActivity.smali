.class public Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;
.super Lid/ac/ugm/presensi/presensimahasiswa/b;

# interfaces
.implements Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$b;


# instance fields
.field a:Landroid/support/v7/widget/Toolbar;

.field b:Landroid/support/v4/app/Fragment;

.field private c:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

.field private d:Landroid/nfc/NfcAdapter;

.field private e:Landroid/app/PendingIntent;

.field private f:Landroid/nfc/NdefMessage;

.field private g:Ljava/io/File;

.field private h:I

.field private i:I

.field private j:I

.field private final k:Landroid/os/Handler;

.field private l:Z

.field private m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;)I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->j:I

    return v0
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;I)I
    .locals 0

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->j:I

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

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->m:Landroid/util/SparseArray;

    return-object p1
.end method

.method private a()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

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

    if-ge v2, v0, :cond_6

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

    const-string v0, "/PresensiUGM/dump-files"

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    const-string v0, "/PresensiUGM/tmp"

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v0, v1

    :goto_3
    if-ge v0, v5, :cond_4

    aget-object v6, v4, v0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->b()V

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->e:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_5

    const/4 v0, 0x1

    :goto_4
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_4

    :cond_6
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

    goto :goto_2
.end method

.method private a(I)V
    .locals 4

    const v0, 0x7f0f006e

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->b:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/m;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/p;

    move-result-object v1

    const v2, 0x7f09004a

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->b:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/p;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;

    invoke-virtual {v1}, Landroid/support/v4/app/p;->c()I

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :pswitch_0
    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;

    invoke-direct {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;-><init>()V

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->b:Landroid/support/v4/app/Fragment;

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0f0157

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0f0127

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".doc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".docx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "application/msword"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".pdf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "application/pdf"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".ppt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".pptx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xls"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".xlsx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".rar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const-string v2, "application/x-wav"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".rtf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "application/rtf"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".wav"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mp3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string v2, "audio/x-wav"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "image/gif"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "text/plain"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".3gp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mpg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mpe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".avi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    const-string v2, "video/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_11
    const-string v2, "*/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private a(Landroid/util/SparseArray;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v13, 0x10

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Fail to read sector binary"

    const-string v0, "Fail to read sector binary"

    const-string v0, "Fail to read sector binary"

    const-string v1, ""

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    aget-object v0, v0, v10

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->g()I

    move-result v0

    move v3, v0

    move v2, v4

    :goto_0
    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->h()I

    move-result v0

    if-gt v3, v0, :cond_5

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+Sector: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    const/4 v6, 0x6

    if-ne v3, v6, :cond_1

    aget-object v2, v0, v4

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v6, 0x4

    new-array v6, v6, [B

    aget-byte v7, v2, v12

    aput-byte v7, v6, v4

    aget-byte v7, v2, v11

    aput-byte v7, v6, v10

    aget-byte v7, v2, v10

    aput-byte v7, v6, v11

    aget-byte v2, v2, v4

    aput-byte v2, v6, v12

    invoke-static {v6, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a([BZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    const-wide/16 v8, 0x580

    sub-long/2addr v6, v8

    long-to-double v6, v6

    const-wide/high16 v8, 0x40b0000000000000L    # 4096.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v2, v6

    :cond_1
    if-ne v3, v11, :cond_3

    aget-object v1, v0, v10

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a(Ljava/lang/String;)[B

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v4

    :goto_1
    invoke-static {v6, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a([BZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_2

    invoke-static {v6, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a([BZ)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v9, v1, 0x2

    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v5, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move v0, v2

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto/16 :goto_0

    :cond_4
    const-string v0, "*No keys found or dead sector"

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->b:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->b:Landroid/support/v4/app/Fragment;

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;

    invoke-virtual {v0, v2, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->a(ILjava/lang/String;)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    const v0, 0x7f0f0109

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V

    return-void
.end method

.method private a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V
    .locals 2

    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/util/SparseArray;)V

    const v0, 0x7f0f0106

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/util/SparseArray;)V

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->d()V

    goto :goto_0
.end method

.method private a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;

    invoke-direct {v1, p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$3;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->l:Z

    return p1
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;)I
    .locals 1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->i:I

    return v0
.end method

.method private b()V
    .locals 5

    const-string v0, "/PresensiUGM/key-files/std.keys"

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "/PresensiUGM/key-files/extended-std.keys"

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getAssets()Landroid/content/res/AssetManager;

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

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a(Landroid/util/SparseArray;)V

    return-void
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

    iget-object v6, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->g:Ljava/io/File;

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

    invoke-virtual {p0, v7}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getPreferences(I)Landroid/content/SharedPreferences;

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
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iput v7, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->h:I

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->i:I

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->h:I

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->i:I

    invoke-virtual {v1, v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a(II)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g()V

    goto :goto_2

    :cond_5
    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->h:I

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->i:I

    invoke-static {v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(II)V

    const/4 v0, -0x1

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->j:I

    iput-boolean v8, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->l:Z

    invoke-direct {p0, v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/d;Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic c(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->l:Z

    return v0
.end method

.method static synthetic d(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private d()V
    .locals 3

    invoke-static {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->c(Landroid/content/Context;)Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$4;

    invoke-direct {v2, p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$4;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;Lid/ac/ugm/presensi/presensimahasiswa/utils/d;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic e(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->m:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onBackPressed()V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/m;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v3, 0x7f090076

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->setContentView(I)V

    const v0, 0x7f09012c

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/m;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/m;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v3, v0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->a(ILandroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    invoke-virtual {v0, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$b;)V

    invoke-direct {p0, v4}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a(I)V

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->d:Landroid/nfc/NfcAdapter;

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->e:Landroid/app/PendingIntent;

    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v1, v5, [Landroid/nfc/NdefRecord;

    const-string v2, "Message from NFC Reader :-)"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {p0, v2, v3, v5}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a(Ljava/lang/String;Ljava/util/Locale;Z)Landroid/nfc/NdefRecord;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->f:Landroid/nfc/NdefMessage;

    invoke-static {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a()V

    :goto_0
    return-void

    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v4

    invoke-static {p0, v0, v5}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->setIntent(Landroid/content/Intent;)V

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

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->c()V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f090019

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getIntent()Landroid/content/Intent;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "data_history"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "/storage/emulated/0/Download/temp.pdf"

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "data_history"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->a(Landroid/content/Context;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    const v2, 0x7f090013

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f013c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v2, "Tidak"

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$1;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Ya"

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$2;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    :cond_2
    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->l:Z

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->d:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->d:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->d:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundNdefPush(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onResume()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->d:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->d:Landroid/nfc/NfcAdapter;

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->e:Landroid/app/PendingIntent;

    move-object v0, v1

    check-cast v0, [[Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v1, v0}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->d:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->f:Landroid/nfc/NdefMessage;

    invoke-virtual {v0, p0, v1}, Landroid/nfc/NfcAdapter;->enableForegroundNdefPush(Landroid/app/Activity;Landroid/nfc/NdefMessage;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
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

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->g:Ljava/io/File;

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

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->setResult(I)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->g:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->setResult(I)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->finish()V

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

    invoke-virtual {p0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/HomeActivity;->getPreferences(I)Landroid/content/SharedPreferences;

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
