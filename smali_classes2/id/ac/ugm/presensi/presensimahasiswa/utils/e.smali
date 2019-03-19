.class public Lid/ac/ugm/presensi/presensimahasiswa/utils/e;
.super Landroid/app/Service;

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Januari"

    goto :goto_0

    :pswitch_1
    const-string v0, "Februari"

    goto :goto_0

    :pswitch_2
    const-string v0, "Maret"

    goto :goto_0

    :pswitch_3
    const-string v0, "April"

    goto :goto_0

    :pswitch_4
    const-string v0, "Mei"

    goto :goto_0

    :pswitch_5
    const-string v0, "Juni"

    goto :goto_0

    :pswitch_6
    const-string v0, "Juli"

    goto :goto_0

    :pswitch_7
    const-string v0, "Agustus"

    goto :goto_0

    :pswitch_8
    const-string v0, "September"

    goto :goto_0

    :pswitch_9
    const-string v0, "Oktober"

    goto :goto_0

    :pswitch_a
    const-string v0, "November"

    goto :goto_0

    :pswitch_b
    const-string v0, "Desember"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x2

    new-array v3, v0, [B

    array-length v4, p0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x1

    sget-object v7, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a:[B

    ushr-int/lit8 v8, v5, 0x4

    aget-byte v7, v7, v8

    aput-byte v7, v3, v1

    sget-object v7, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a:[B

    and-int/lit8 v5, v5, 0xf

    aget-byte v5, v7, v5

    aput-byte v5, v3, v6

    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v6, "ASCII"

    invoke-direct {v5, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz p1, :cond_0

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
