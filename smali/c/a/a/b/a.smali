.class public final Lc/a/a/b/a;
.super Lc/a/a/b/b;


# instance fields
.field private final b:[B

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v1, v1, v0}, Lc/a/a/b/a;-><init>([BIII)V

    return-void

    :cond_0
    array-length v0, p1

    goto :goto_0
.end method

.method public constructor <init>([BIII)V
    .locals 0

    invoke-direct {p0}, Lc/a/a/b/b;-><init>()V

    iput-object p1, p0, Lc/a/a/b/a;->b:[B

    iput p2, p0, Lc/a/a/b/a;->c:I

    iput p3, p0, Lc/a/a/b/a;->d:I

    iput p4, p0, Lc/a/a/b/a;->e:I

    return-void
.end method

.method public static b([B)Lc/a/a/b/b;
    .locals 1

    new-instance v0, Lc/a/a/b/a;

    invoke-direct {v0, p0}, Lc/a/a/b/a;-><init>([B)V

    return-object v0
.end method

.method public static c(I)Lc/a/a/b/b;
    .locals 2

    new-instance v0, Lc/a/a/b/a;

    new-array v1, p0, [B

    invoke-direct {v0, v1}, Lc/a/a/b/a;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lc/a/a/b/a;->d:I

    iget v1, p0, Lc/a/a/b/a;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(B)V
    .locals 3

    iget-object v0, p0, Lc/a/a/b/a;->b:[B

    iget v1, p0, Lc/a/a/b/a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/a/a/b/a;->d:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public a(C)V
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lc/a/a/b/a;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lc/a/a/b/a;->d:I

    return-void
.end method

.method public a(IB)V
    .locals 2

    iget-object v0, p0, Lc/a/a/b/a;->b:[B

    iget v1, p0, Lc/a/a/b/a;->c:I

    add-int/2addr v1, p1

    aput-byte p2, v0, v1

    return-void
.end method

.method public a(II)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Lc/a/a/b/a;->a(IB)V

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lc/a/a/b/a;->a(IB)V

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lc/a/a/b/a;->a(IB)V

    add-int/lit8 v0, p1, 0x3

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lc/a/a/b/a;->a(IB)V

    return-void
.end method

.method public a(J)V
    .locals 5

    const-wide/16 v2, 0xff

    const/16 v0, 0x38

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    and-long v0, p1, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    return-void
.end method

.method public a(Lc/a/a/b/b;)V
    .locals 5

    invoke-virtual {p1}, Lc/a/a/b/b;->c()I

    move-result v0

    invoke-virtual {p1}, Lc/a/a/b/b;->i()[B

    move-result-object v1

    invoke-virtual {p1}, Lc/a/a/b/b;->a()I

    move-result v2

    invoke-virtual {p1}, Lc/a/a/b/b;->h()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lc/a/a/b/a;->b:[B

    iget v4, p0, Lc/a/a/b/a;->d:I

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lc/a/a/b/a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lc/a/a/b/a;->d:I

    return-void
.end method

.method public a(S)V
    .locals 1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    return-void
.end method

.method public a([B)V
    .locals 4

    iget-object v0, p0, Lc/a/a/b/a;->b:[B

    iget v1, p0, Lc/a/a/b/a;->d:I

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lc/a/a/b/a;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lc/a/a/b/a;->d:I

    return-void
.end method

.method public a([BII)V
    .locals 2

    iget-object v0, p0, Lc/a/a/b/a;->b:[B

    iget v1, p0, Lc/a/a/b/a;->d:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lc/a/a/b/a;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lc/a/a/b/a;->d:I

    return-void
.end method

.method public b()B
    .locals 3

    iget-object v0, p0, Lc/a/a/b/a;->b:[B

    iget v1, p0, Lc/a/a/b/a;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc/a/a/b/a;->d:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public b(I)B
    .locals 2

    iget-object v0, p0, Lc/a/a/b/a;->b:[B

    iget v1, p0, Lc/a/a/b/a;->c:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    return v0
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lc/a/a/b/a;->e:I

    iget v1, p0, Lc/a/a/b/a;->d:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public c([B)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    iget-object v2, p0, Lc/a/a/b/a;->b:[B

    iget v3, p0, Lc/a/a/b/a;->d:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lc/a/a/b/a;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lc/a/a/b/a;->d:I

    return-void
.end method

.method public d()Lc/a/a/b/b;
    .locals 5

    new-instance v0, Lc/a/a/b/a;

    iget-object v1, p0, Lc/a/a/b/a;->b:[B

    iget v2, p0, Lc/a/a/b/a;->d:I

    iget v3, p0, Lc/a/a/b/a;->d:I

    iget v4, p0, Lc/a/a/b/a;->e:I

    invoke-direct {v0, v1, v2, v3, v4}, Lc/a/a/b/a;-><init>([BIII)V

    return-object v0
.end method

.method public d(I)V
    .locals 1

    iget v0, p0, Lc/a/a/b/a;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Lc/a/a/b/a;->e:I

    return-void
.end method

.method public e(I)C
    .locals 2

    invoke-virtual {p0, p1}, Lc/a/a/b/a;->b(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lc/a/a/b/a;->b(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public e()V
    .locals 1

    iget v0, p0, Lc/a/a/b/a;->c:I

    iput v0, p0, Lc/a/a/b/a;->d:I

    return-void
.end method

.method public f()I
    .locals 2

    iget v0, p0, Lc/a/a/b/a;->e:I

    iget v1, p0, Lc/a/a/b/a;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public f(I)V
    .locals 1

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lc/a/a/b/a;->a(B)V

    return-void
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lc/a/a/b/a;->c:I

    return v0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Lc/a/a/b/a;->b:[B

    return-object v0
.end method

.method public j()V
    .locals 1

    iget v0, p0, Lc/a/a/b/a;->d:I

    iput v0, p0, Lc/a/a/b/a;->e:I

    iget v0, p0, Lc/a/a/b/a;->c:I

    iput v0, p0, Lc/a/a/b/a;->d:I

    return-void
.end method

.method public k()Lc/a/a/b/b;
    .locals 5

    new-instance v0, Lc/a/a/b/a;

    iget-object v1, p0, Lc/a/a/b/a;->b:[B

    iget v2, p0, Lc/a/a/b/a;->c:I

    iget v3, p0, Lc/a/a/b/a;->d:I

    iget v4, p0, Lc/a/a/b/a;->e:I

    invoke-direct {v0, v1, v2, v3, v4}, Lc/a/a/b/a;-><init>([BIII)V

    return-object v0
.end method

.method public l()I
    .locals 4

    iget v0, p0, Lc/a/a/b/a;->d:I

    iget-object v1, p0, Lc/a/a/b/a;->b:[B

    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v2

    iget v1, p0, Lc/a/a/b/a;->d:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lc/a/a/b/a;->d:I

    return v0
.end method

.method public m()J
    .locals 5

    const/16 v4, 0x8

    invoke-virtual {p0}, Lc/a/a/b/a;->b()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    shl-long/2addr v0, v4

    invoke-virtual {p0}, Lc/a/a/b/a;->b()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-long/2addr v0, v4

    invoke-virtual {p0}, Lc/a/a/b/a;->b()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-long/2addr v0, v4

    invoke-virtual {p0}, Lc/a/a/b/a;->b()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-long/2addr v0, v4

    invoke-virtual {p0}, Lc/a/a/b/a;->b()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-long/2addr v0, v4

    invoke-virtual {p0}, Lc/a/a/b/a;->b()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-long/2addr v0, v4

    invoke-virtual {p0}, Lc/a/a/b/a;->b()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-long/2addr v0, v4

    invoke-virtual {p0}, Lc/a/a/b/a;->b()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public n()C
    .locals 2

    invoke-virtual {p0}, Lc/a/a/b/a;->b()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lc/a/a/b/a;->b()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public o()S
    .locals 3

    iget-object v0, p0, Lc/a/a/b/a;->b:[B

    iget v1, p0, Lc/a/a/b/a;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lc/a/a/b/a;->b:[B

    iget v2, p0, Lc/a/a/b/a;->d:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iget v1, p0, Lc/a/a/b/a;->d:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lc/a/a/b/a;->d:I

    int-to-short v0, v0

    return v0
.end method

.method public p()V
    .locals 1

    iget v0, p0, Lc/a/a/b/a;->d:I

    iput v0, p0, Lc/a/a/b/a;->f:I

    return-void
.end method

.method public q()V
    .locals 1

    iget v0, p0, Lc/a/a/b/a;->f:I

    iput v0, p0, Lc/a/a/b/a;->d:I

    return-void
.end method

.method public r()Ljava/nio/ByteBuffer;
    .locals 4

    iget-object v0, p0, Lc/a/a/b/a;->b:[B

    iget v1, p0, Lc/a/a/b/a;->d:I

    iget v2, p0, Lc/a/a/b/a;->e:I

    iget v3, p0, Lc/a/a/b/a;->d:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lc/a/a/b/a;->d:I

    iget v1, p0, Lc/a/a/b/a;->e:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
