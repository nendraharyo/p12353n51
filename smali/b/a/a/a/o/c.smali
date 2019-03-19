.class public final Lb/a/a/a/o/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Buffer capacity"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->b(ILjava/lang/String;)I

    new-array v0, p1, [B

    iput-object v0, p0, Lb/a/a/a/o/c;->a:[B

    return-void
.end method

.method private c(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lb/a/a/a/o/c;->a:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lb/a/a/a/o/c;->a:[B

    iget v2, p0, Lb/a/a/a/o/c;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lb/a/a/a/o/c;->a:[B

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/a/o/c;->b:I

    return-void
.end method

.method public a(I)V
    .locals 4

    iget v0, p0, Lb/a/a/a/o/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb/a/a/a/o/c;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Lb/a/a/a/o/c;->c(I)V

    :cond_0
    iget-object v1, p0, Lb/a/a/a/o/c;->a:[B

    iget v2, p0, Lb/a/a/a/o/c;->b:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iput v0, p0, Lb/a/a/a/o/c;->b:I

    return-void
.end method

.method public a(Lb/a/a/a/o/d;II)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lb/a/a/a/o/d;->b()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lb/a/a/a/o/c;->a([CII)V

    goto :goto_0
.end method

.method public a([BII)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p2, :cond_2

    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p3, :cond_0

    iget v0, p0, Lb/a/a/a/o/c;->b:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lb/a/a/a/o/c;->a:[B

    array-length v1, v1

    if-le v0, v1, :cond_4

    invoke-direct {p0, v0}, Lb/a/a/a/o/c;->c(I)V

    :cond_4
    iget-object v1, p0, Lb/a/a/a/o/c;->a:[B

    iget v2, p0, Lb/a/a/a/o/c;->b:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lb/a/a/a/o/c;->b:I

    goto :goto_0
.end method

.method public a([CII)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p2, :cond_2

    array-length v0, p1

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    if-ltz v0, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "off: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " b.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p3, :cond_0

    iget v0, p0, Lb/a/a/a/o/c;->b:I

    add-int v1, v0, p3

    iget-object v2, p0, Lb/a/a/a/o/c;->a:[B

    array-length v2, v2

    if-le v1, v2, :cond_4

    invoke-direct {p0, v1}, Lb/a/a/a/o/c;->c(I)V

    :cond_4
    :goto_1
    if-ge v0, v1, :cond_5

    iget-object v2, p0, Lb/a/a/a/o/c;->a:[B

    aget-char v3, p1, p2

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iput v1, p0, Lb/a/a/a/o/c;->b:I

    goto :goto_0
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Lb/a/a/a/o/c;->a:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public b()[B
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lb/a/a/a/o/c;->b:I

    new-array v0, v0, [B

    iget v1, p0, Lb/a/a/a/o/c;->b:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lb/a/a/a/o/c;->a:[B

    iget v2, p0, Lb/a/a/a/o/c;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lb/a/a/a/o/c;->a:[B

    array-length v0, v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lb/a/a/a/o/c;->b:I

    return v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, Lb/a/a/a/o/c;->a:[B

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget v0, p0, Lb/a/a/a/o/c;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    iget v0, p0, Lb/a/a/a/o/c;->b:I

    iget-object v1, p0, Lb/a/a/a/o/c;->a:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
