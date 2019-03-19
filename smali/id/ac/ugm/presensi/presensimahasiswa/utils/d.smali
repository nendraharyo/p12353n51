.class public Lid/ac/ugm/presensi/presensimahasiswa/utils/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/nfc/tech/MifareClassic;

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[[B>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/nfc/Tag;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->c:Landroid/util/SparseArray;

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    const/4 v0, -0x1

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->e:I

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->f:I

    :try_start_0
    invoke-static {p1}, Landroid/nfc/tech/MifareClassic;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/MifareClassic;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a:Ljava/lang/String;

    const-string v2, "Could not create Open Card reader for theprovided tag (even after patching it)."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public static a(Landroid/nfc/Tag;)Landroid/nfc/Tag;
    .locals 14

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Landroid/nfc/Tag;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v0, 0x0

    new-array v0, v0, [B

    if-ltz v1, :cond_2

    new-array v0, v1, [B

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->readByteArray([B)V

    :cond_2
    move-object v1, v0

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v9, v0, [I

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->readIntArray([I)V

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    const/4 v7, -0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    :goto_2
    array-length v12, v8

    if-ge v3, v12, :cond_8

    aget-object v12, v8, v3

    const-class v13, Landroid/nfc/tech/NfcA;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v12, -0x1

    if-ne v7, v12, :cond_3

    move v7, v3

    :cond_3
    aget-object v12, v0, v3

    if-eqz v12, :cond_4

    aget-object v12, v0, v3

    const-string v13, "sak"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    aget-object v4, v0, v3

    const-string v12, "sak"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v4

    or-int/2addr v4, v5

    int-to-short v5, v4

    if-ne v7, v3, :cond_6

    const/4 v4, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    aget-object v12, v8, v3

    const-class v13, Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move v6, v3

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    if-nez v4, :cond_9

    aget-object v3, v0, v7

    const-string v4, "sak"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    const/4 v3, 0x1

    :cond_9
    const/4 v4, -0x1

    if-eq v7, v4, :cond_a

    const/4 v4, -0x1

    if-eq v6, v4, :cond_a

    aget-object v4, v0, v6

    if-nez v4, :cond_a

    aget-object v3, v0, v7

    aput-object v3, v0, v6

    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    array-length v1, v9

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {v3, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, v11}, Landroid/os/Parcel;->writeInt(I)V

    if-nez v11, :cond_b

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object p0, v0

    goto/16 :goto_0
.end method

.method private a([B)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0x80

    ushr-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    aget-byte v2, p1, v3

    and-int/lit8 v2, v2, 0x8

    ushr-int/lit8 v2, v2, 0x3

    int-to-byte v2, v2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    ushr-int/lit8 v3, v3, 0x7

    int-to-byte v3, v3

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    if-ne v2, v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    if-nez v2, :cond_3

    if-ne v3, v0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/nfc/Tag;)Lid/ac/ugm/presensi/presensimahasiswa/utils/d;
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;

    invoke-direct {v0, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;-><init>(Landroid/nfc/Tag;)V

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->c()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return-object v1

    :cond_0
    move-object v0, v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private b(I[BZ)Z
    .locals 3

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->f:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez p3, :cond_1

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyA(I[B)Z

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyA(I[B)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyB(I[B)Z

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0, p1, p2}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyB(I[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a:Ljava/lang/String;

    const-string v1, "Error authenticating with tag."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 12

    const/4 v5, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->e:I

    if-eq v0, v3, :cond_c

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->e:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->f:I

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->c:Landroid/util/SparseArray;

    :cond_1
    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->a:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->f:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    new-array v8, v5, [[B

    new-array v9, v5, [Z

    fill-array-data v9, :array_0

    move v1, v2

    :cond_2
    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v5, 0x0

    :try_start_0
    aget-boolean v5, v9, v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    iget v10, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    invoke-virtual {v5, v10, v0}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyA(I[B)Z

    move-result v5

    if-eqz v7, :cond_3

    if-nez v5, :cond_3

    iget-object v5, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    iget v10, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    invoke-virtual {v5, v10, v0}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyA(I[B)Z

    move-result v5

    :cond_3
    if-eqz v5, :cond_4

    const/4 v5, 0x0

    aput-object v0, v8, v5

    const/4 v5, 0x0

    const/4 v10, 0x1

    aput-boolean v10, v9, v5

    :cond_4
    const/4 v5, 0x1

    aget-boolean v5, v9, v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    iget v10, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    invoke-virtual {v5, v10, v0}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyB(I[B)Z

    move-result v5

    if-eqz v7, :cond_5

    if-nez v5, :cond_5

    iget-object v5, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    iget v10, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    invoke-virtual {v5, v10, v0}, Landroid/nfc/tech/MifareClassic;->authenticateSectorWithKeyB(I[B)Z

    move-result v5

    :cond_5
    if-eqz v5, :cond_6

    const/4 v5, 0x1

    aput-object v0, v8, v5

    const/4 v0, 0x1

    const/4 v5, 0x1

    aput-boolean v5, v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    aget-boolean v0, v9, v2

    if-eqz v0, :cond_b

    aget-boolean v0, v9, v4

    if-eqz v0, :cond_b

    move v0, v2

    :goto_1
    if-nez v0, :cond_9

    aget-boolean v1, v9, v2

    if-nez v1, :cond_7

    aget-boolean v1, v9, v4

    if-eqz v1, :cond_9

    :cond_7
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->c:Landroid/util/SparseArray;

    iget v5, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    invoke-virtual {v1, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    aget-boolean v1, v9, v2

    if-eqz v1, :cond_8

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g:Ljava/util/ArrayList;

    aget-object v5, v8, v2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g:Ljava/util/ArrayList;

    aget-object v5, v8, v2

    invoke-virtual {v1, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_8
    aget-boolean v1, v9, v4

    if-eqz v1, :cond_9

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g:Ljava/util/ArrayList;

    aget-object v5, v8, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g:Ljava/util/ArrayList;

    aget-object v4, v8, v4

    invoke-virtual {v1, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_9
    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    :goto_2
    if-eqz v0, :cond_d

    iput v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->c:Landroid/util/SparseArray;

    move v0, v3

    :goto_3
    return v0

    :catch_0
    move-exception v0

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a:Ljava/lang/String;

    const-string v5, "Error while building next key map part"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_a

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a:Ljava/lang/String;

    const-string v5, "Auto reconnect is enabled"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->e()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v10, 0x1f4

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_5
    :try_start_2
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->f()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_a
    move v0, v4

    goto :goto_1

    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_c
    move v0, v4

    goto :goto_2

    :cond_d
    iget v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_e
    move v0, v2

    goto :goto_1

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public a(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[[B>;)",
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v4, Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-direct {v4, v0}, Landroid/util/SparseArray;-><init>(I)V

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    const/4 v0, 0x2

    new-array v5, v0, [[Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v6, 0x0

    aget-object v0, v0, v6

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v8, 0x0

    aget-object v0, v0, v8

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v0, v8}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a(I[BZ)[Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v6, 0x1

    aget-object v0, v0, v6

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v8, 0x1

    aget-object v0, v0, v8

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v0, v8}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a(I[BZ)[Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    aget-object v0, v5, v2

    if-nez v0, :cond_2

    aget-object v0, v5, v9

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    aget-object v6, v5, v2

    aget-object v5, v5, v9

    invoke-virtual {p0, v6, v5}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_4
    move-object v0, v4

    goto :goto_1

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public a(II)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d()I

    move-result v0

    if-ge p2, v0, :cond_0

    if-gt p1, p2, :cond_0

    iput p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->f:I

    iput p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->e:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->d:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a([Ljava/io/File;Landroid/content/Context;)Z
    .locals 11

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    array-length v5, p1

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v2, p1, v3

    invoke-static {v2, v0, p2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/io/File;ZLandroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    array-length v7, v6

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_1

    aget-object v8, v6, v2

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0xc

    if-ne v9, v10, :cond_0

    const-string v9, "[0-9A-Fa-f]+"

    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    :try_start_0
    invoke-static {v8}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    const v2, 0x7f0f0116

    invoke-static {p2, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->g:Ljava/util/ArrayList;

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public a(I[BZ)[Ljava/lang/String;
    .locals 10

    const/4 v1, 0x0

    const/16 v9, 0x14

    const/16 v8, 0x10

    const/16 v7, 0xc

    invoke-direct {p0, p1, p2, p3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b(I[BZ)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0, p1}, Landroid/nfc/tech/MifareClassic;->sectorToBlock(I)I

    move-result v2

    add-int/lit8 v0, v2, 0x4

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v3}, Landroid/nfc/tech/MifareClassic;->getSize()I

    move-result v3

    const/16 v5, 0x1000

    if-ne v3, v5, :cond_0

    const/16 v3, 0x1f

    if-le p1, v3, :cond_0

    add-int/lit8 v0, v2, 0x10

    :cond_0
    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    :try_start_0
    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v2, v3}, Landroid/nfc/tech/MifareClassic;->readBlock(I)[B

    move-result-object v2

    array-length v5, v2

    if-ge v5, v8, :cond_1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/nfc/TagLostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    :try_start_1
    array-length v5, v2

    if-le v5, v8, :cond_2

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/nfc/TagLostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Recoverable) Error while reading block "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from tag."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-nez p3, :cond_5

    aget-object v1, v0, v2

    invoke-virtual {v1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a([B)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v2

    const/16 v4, 0x20

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :goto_2
    return-object v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "------------"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string v4, "--------------------------------"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, v1

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_2

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method public a([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x14

    const/4 v2, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length v1, p1

    array-length v3, p2

    if-eq v1, v3, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    if-eqz p1, :cond_3

    array-length v0, p1

    move v1, v0

    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    :goto_2
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_6

    if-eqz p1, :cond_4

    aget-object v4, p1, v0

    if-eqz v4, :cond_4

    aget-object v4, p1, v0

    const-string v5, "--------------------------------"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    array-length v0, p2

    move v1, v0

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    aget-object v4, p2, v0

    if-eqz v4, :cond_5

    aget-object v4, p2, v0

    const-string v5, "--------------------------------"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    aget-object v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const-string v4, "--------------------------------"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    add-int/lit8 v1, v1, -0x1

    if-eqz p1, :cond_7

    aget-object v3, p1, v1

    if-eqz v3, :cond_7

    aget-object v3, p1, v1

    const-string v4, "--------------------------------"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    aget-object v3, p1, v1

    aput-object v3, v0, v1

    if-eqz p2, :cond_1

    aget-object v3, p2, v1

    if-eqz v3, :cond_1

    aget-object v3, p2, v1

    const-string v4, "--------------------------------"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v1

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_8

    aget-object v2, p2, v1

    if-eqz v2, :cond_8

    aget-object v2, p2, v1

    const-string v3, "--------------------------------"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    aget-object v2, p2, v1

    aput-object v2, v0, v1

    goto/16 :goto_0

    :cond_8
    const-string v2, "--------------------------------"

    aput-object v2, v0, v1

    goto/16 :goto_0
.end method

.method public b()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<[[B>;"
        }
    .end annotation

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 3

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->c:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->d:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/c$a;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->getSectorCount()I

    move-result v0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->isConnected()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a:Ljava/lang/String;

    const-string v2, "Error while connecting to tag."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public g()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->b:Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v0}, Landroid/nfc/tech/MifareClassic;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/d;->a:Ljava/lang/String;

    const-string v1, "Error on closing tag."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
