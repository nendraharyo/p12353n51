.class public Lid/ac/ugm/presensi/presensimahasiswa/utils/g;
.super Lid/ac/ugm/presensi/presensimahasiswa/utils/c;


# static fields
.field public static final e:[B


# instance fields
.field f:[B

.field private g:[B

.field private h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->e:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x8t
        -0x60t
        0x0t
        0x42t
        0x4et
        0x49t
        0x10t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/nfc/tech/IsoDep;)V
    .locals 1

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/c;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->g:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->h:[B

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->d:Landroid/nfc/tech/IsoDep;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0x8t
        -0x60t
        0x0t
        0x42t
        0x4et
        0x49t
        -0x67t
        -0x67t
        -0x67t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        -0x50t
        -0x6at
        0x0t
        -0x80t
    .end array-data
.end method

.method private a(BBBB[B)[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->d:Landroid/nfc/tech/IsoDep;

    invoke-direct/range {p0 .. p5}, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->b(BBBB[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(BBBB[B)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, -0x70

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p5, :cond_0

    :try_start_0
    invoke-virtual {v0, p5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->d:Landroid/nfc/tech/IsoDep;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->g:[B

    invoke-virtual {v0, v1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->d:Landroid/nfc/tech/IsoDep;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->h:[B

    invoke-virtual {v1, v2}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v7

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x32

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->a(BBBB[B)[B

    move-result-object v1

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v0, v2

    const/4 v2, 0x3

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const/4 v2, 0x4

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    const/high16 v2, -0x1000000

    or-int/2addr v0, v2

    :cond_0
    int-to-long v2, v0

    iput-wide v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->a:J

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->f:[B

    move v0, v6

    :goto_0
    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->f:[B

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->f:[B

    add-int/lit8 v3, v0, 0x8

    aget-byte v3, v1, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->f:[B

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->b:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v7, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->c([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/g;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_1
.end method
