.class public final Lb/a/a/a/o/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[C

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Buffer capacity"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->b(ILjava/lang/String;)I

    new-array v0, p1, [C

    iput-object v0, p0, Lb/a/a/a/o/d;->a:[C

    return-void
.end method

.method private d(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lb/a/a/a/o/d;->a:[C

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iget-object v1, p0, Lb/a/a/a/o/d;->a:[C

    iget v2, p0, Lb/a/a/a/o/d;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lb/a/a/a/o/d;->a:[C

    return-void
.end method


# virtual methods
.method public a(I)C
    .locals 1

    iget-object v0, p0, Lb/a/a/a/o/d;->a:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public a(III)I
    .locals 3

    const/4 v0, -0x1

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget v1, p0, Lb/a/a/a/o/d;->b:I

    if-le p3, v1, :cond_1

    iget p3, p0, Lb/a/a/a/o/d;->b:I

    :cond_1
    if-le p2, p3, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v1, p2

    :goto_1
    if-ge v1, p3, :cond_2

    iget-object v2, p0, Lb/a/a/a/o/d;->a:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public a(II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lb/a/a/a/o/d;->a:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/a/o/d;->b:I

    return-void
.end method

.method public a(C)V
    .locals 3

    iget v0, p0, Lb/a/a/a/o/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb/a/a/a/o/d;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Lb/a/a/a/o/d;->d(I)V

    :cond_0
    iget-object v1, p0, Lb/a/a/a/o/d;->a:[C

    iget v2, p0, Lb/a/a/a/o/d;->b:I

    aput-char p1, v1, v2

    iput v0, p0, Lb/a/a/a/o/d;->b:I

    return-void
.end method

.method public a(Lb/a/a/a/o/c;II)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lb/a/a/a/o/c;->e()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lb/a/a/a/o/d;->a([BII)V

    goto :goto_0
.end method

.method public a(Lb/a/a/a/o/d;II)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lb/a/a/a/o/d;->a:[C

    invoke-virtual {p0, v0, p2, p3}, Lb/a/a/a/o/d;->a([CII)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lb/a/a/a/o/d;->b:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lb/a/a/a/o/d;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_0

    invoke-direct {p0, v1}, Lb/a/a/a/o/d;->d(I)V

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Lb/a/a/a/o/d;->a:[C

    iget v4, p0, Lb/a/a/a/o/d;->b:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v1, p0, Lb/a/a/a/o/d;->b:I

    return-void

    :cond_1
    const-string p1, "null"

    goto :goto_0
.end method

.method public a([BII)V
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

    iget v0, p0, Lb/a/a/a/o/d;->b:I

    add-int v1, v0, p3

    iget-object v2, p0, Lb/a/a/a/o/d;->a:[C

    array-length v2, v2

    if-le v1, v2, :cond_4

    invoke-direct {p0, v1}, Lb/a/a/a/o/d;->d(I)V

    :cond_4
    :goto_1
    if-ge v0, v1, :cond_5

    iget-object v2, p0, Lb/a/a/a/o/d;->a:[C

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iput v1, p0, Lb/a/a/a/o/d;->b:I

    goto :goto_0
.end method

.method public a([CII)V
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

    iget v0, p0, Lb/a/a/a/o/d;->b:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lb/a/a/a/o/d;->a:[C

    array-length v1, v1

    if-le v0, v1, :cond_4

    invoke-direct {p0, v0}, Lb/a/a/a/o/d;->d(I)V

    :cond_4
    iget-object v1, p0, Lb/a/a/a/o/d;->a:[C

    iget v2, p0, Lb/a/a/a/o/d;->b:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lb/a/a/a/o/d;->b:I

    goto :goto_0
.end method

.method public b(II)Ljava/lang/String;
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lb/a/a/a/o/d;->b:I

    if-le p2, v0, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/a/a/o/d;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-le p1, p2, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > endIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    if-ge p1, p2, :cond_3

    iget-object v0, p0, Lb/a/a/a/o/d;->a:[C

    aget-char v0, v0, p1

    invoke-static {v0}, Lb/a/a/a/n/d;->a(C)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-le p2, p1, :cond_4

    iget-object v0, p0, Lb/a/a/a/o/d;->a:[C

    add-int/lit8 v1, p2, -0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lb/a/a/a/n/d;->a(C)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lb/a/a/a/o/d;->a:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public b(I)V
    .locals 2

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lb/a/a/a/o/d;->a:[C

    array-length v0, v0

    iget v1, p0, Lb/a/a/a/o/d;->b:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    iget v0, p0, Lb/a/a/a/o/d;->b:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lb/a/a/a/o/d;->d(I)V

    goto :goto_0
.end method

.method public b()[C
    .locals 1

    iget-object v0, p0, Lb/a/a/a/o/d;->a:[C

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lb/a/a/a/o/d;->b:I

    return v0
.end method

.method public c(I)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lb/a/a/a/o/d;->b:I

    invoke-virtual {p0, p1, v0, v1}, Lb/a/a/a/o/d;->a(III)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget v0, p0, Lb/a/a/a/o/d;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lb/a/a/a/o/d;->a:[C

    const/4 v2, 0x0

    iget v3, p0, Lb/a/a/a/o/d;->b:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
