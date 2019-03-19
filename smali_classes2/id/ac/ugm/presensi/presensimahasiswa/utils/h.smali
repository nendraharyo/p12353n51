.class public Lid/ac/ugm/presensi/presensimahasiswa/utils/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a:[B

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
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public static a(Ljava/lang/Object;II)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move v0, v1

    :goto_1
    sub-int v4, p1, v3

    if-ge v0, v4, :cond_4

    const/4 v4, 0x1

    if-ne p2, v4, :cond_3

    const-string v4, "0"

    invoke-virtual {v2, v1, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x2

    new-array v3, v1, [B

    array-length v4, p0

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, p0, v0

    if-lt v1, p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x1

    sget-object v7, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a:[B

    ushr-int/lit8 v8, v5, 0x4

    aget-byte v7, v7, v8

    aput-byte v7, v3, v2

    add-int/lit8 v2, v6, 0x1

    sget-object v7, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a:[B

    and-int/lit8 v5, v5, 0xf

    aget-byte v5, v7, v5

    aput-byte v5, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([B)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x2

    aget-byte v2, p0, v2

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, p0, v3

    const/16 v3, -0x70

    if-eq v2, v3, :cond_0

    const/16 v3, -0x6f

    if-ne v2, v3, :cond_1

    :cond_0
    move v3, v0

    :goto_0
    if-nez v4, :cond_3

    move v2, v0

    :goto_1
    if-ne v3, v0, :cond_2

    if-ne v2, v0, :cond_2

    :goto_2
    return v0

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_1
.end method

.method public static b([B)Ljava/lang/String;
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c([B)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    array-length v0, p0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    const-string v0, ""

    :cond_0
    return-object v0

    :cond_1
    aget-byte v2, p0, v1

    aget-byte v0, p0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v8, v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a(Ljava/lang/Object;II)Ljava/lang/String;

    new-array v0, v6, [B

    invoke-static {p0, v8, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v8, v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4, v8, v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v0, v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, v8, v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    rsub-int/lit8 v2, v2, 0xf

    const/4 v3, 0x4

    new-array v3, v3, [B

    array-length v4, p0

    sub-int/2addr v4, v2

    array-length v5, v3

    sub-int/2addr v4, v5

    array-length v5, v3

    invoke-static {p0, v4, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v8, v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v3, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v8, v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v3, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-array v4, v6, [B

    array-length v5, p0

    sub-int/2addr v5, v2

    array-length v6, v3

    sub-int/2addr v5, v6

    array-length v6, v4

    sub-int/2addr v5, v6

    array-length v6, v4

    invoke-static {p0, v5, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v8, v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v4, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6, v8, v7}, Lid/ac/ugm/presensi/presensimahasiswa/utils/h;->a(Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    array-length v5, p0

    sub-int v2, v5, v2

    array-length v3, v3

    sub-int/2addr v2, v3

    array-length v3, v4

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x5

    new-array v3, v2, [B

    const/4 v2, 0x5

    array-length v4, v3

    invoke-static {p0, v2, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, ""

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_0

    aget-byte v5, v3, v1

    int-to-char v5, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
