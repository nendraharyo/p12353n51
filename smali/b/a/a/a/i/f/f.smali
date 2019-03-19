.class public Lb/a/a/a/i/f/f;
.super Ljava/io/OutputStream;


# instance fields
.field private final a:Lb/a/a/a/j/g;

.field private final b:[B

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(ILb/a/a/a/j/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v0, p0, Lb/a/a/a/i/f/f;->c:I

    iput-boolean v0, p0, Lb/a/a/a/i/f/f;->d:Z

    iput-boolean v0, p0, Lb/a/a/a/i/f/f;->e:Z

    new-array v0, p1, [B

    iput-object v0, p0, Lb/a/a/a/i/f/f;->b:[B

    iput-object p2, p0, Lb/a/a/a/i/f/f;->a:Lb/a/a/a/j/g;

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/j/g;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Lb/a/a/a/i/f/f;-><init>(ILb/a/a/a/j/g;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lb/a/a/a/i/f/f;->c:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/f/f;->a:Lb/a/a/a/j/g;

    iget v1, p0, Lb/a/a/a/i/f/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/a/j/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/f/f;->a:Lb/a/a/a/j/g;

    iget-object v1, p0, Lb/a/a/a/i/f/f;->b:[B

    iget v2, p0, Lb/a/a/a/i/f/f;->c:I

    invoke-interface {v0, v1, v3, v2}, Lb/a/a/a/j/g;->a([BII)V

    iget-object v0, p0, Lb/a/a/a/i/f/f;->a:Lb/a/a/a/j/g;

    const-string v1, ""

    invoke-interface {v0, v1}, Lb/a/a/a/j/g;->a(Ljava/lang/String;)V

    iput v3, p0, Lb/a/a/a/i/f/f;->c:I

    :cond_0
    return-void
.end method

.method protected a([BII)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lb/a/a/a/i/f/f;->a:Lb/a/a/a/j/g;

    iget v1, p0, Lb/a/a/a/i/f/f;->c:I

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lb/a/a/a/j/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/f/f;->a:Lb/a/a/a/j/g;

    iget-object v1, p0, Lb/a/a/a/i/f/f;->b:[B

    iget v2, p0, Lb/a/a/a/i/f/f;->c:I

    invoke-interface {v0, v1, v3, v2}, Lb/a/a/a/j/g;->a([BII)V

    iget-object v0, p0, Lb/a/a/a/i/f/f;->a:Lb/a/a/a/j/g;

    invoke-interface {v0, p1, p2, p3}, Lb/a/a/a/j/g;->a([BII)V

    iget-object v0, p0, Lb/a/a/a/i/f/f;->a:Lb/a/a/a/j/g;

    const-string v1, ""

    invoke-interface {v0, v1}, Lb/a/a/a/j/g;->a(Ljava/lang/String;)V

    iput v3, p0, Lb/a/a/a/i/f/f;->c:I

    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/f/f;->a:Lb/a/a/a/j/g;

    const-string v1, "0"

    invoke-interface {v0, v1}, Lb/a/a/a/j/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/f/f;->a:Lb/a/a/a/j/g;

    const-string v1, ""

    invoke-interface {v0, v1}, Lb/a/a/a/j/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/i/f/f;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/f/f;->a()V

    invoke-virtual {p0}, Lb/a/a/a/i/f/f;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a/i/f/f;->d:Z

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/i/f/f;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a/i/f/f;->e:Z

    invoke-virtual {p0}, Lb/a/a/a/i/f/f;->c()V

    iget-object v0, p0, Lb/a/a/a/i/f/f;->a:Lb/a/a/a/j/g;

    invoke-interface {v0}, Lb/a/a/a/j/g;->a()V

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/f/f;->a()V

    iget-object v0, p0, Lb/a/a/a/i/f/f;->a:Lb/a/a/a/j/g;

    invoke-interface {v0}, Lb/a/a/a/j/g;->a()V

    return-void
.end method

.method public write(I)V
    .locals 3

    iget-boolean v0, p0, Lb/a/a/a/i/f/f;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/f/f;->b:[B

    iget v1, p0, Lb/a/a/a/i/f/f;->c:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lb/a/a/a/i/f/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/a/i/f/f;->c:I

    iget v0, p0, Lb/a/a/a/i/f/f;->c:I

    iget-object v1, p0, Lb/a/a/a/i/f/f;->b:[B

    array-length v1, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lb/a/a/a/i/f/f;->a()V

    :cond_1
    return-void
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lb/a/a/a/i/f/f;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    iget-boolean v0, p0, Lb/a/a/a/i/f/f;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted write to closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/f/f;->b:[B

    array-length v0, v0

    iget v1, p0, Lb/a/a/a/i/f/f;->c:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/a/i/f/f;->a([BII)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lb/a/a/a/i/f/f;->b:[B

    iget v1, p0, Lb/a/a/a/i/f/f;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lb/a/a/a/i/f/f;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lb/a/a/a/i/f/f;->c:I

    goto :goto_0
.end method
