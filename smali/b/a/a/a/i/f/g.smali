.class public Lb/a/a/a/i/f/g;
.super Ljava/io/InputStream;


# instance fields
.field private final a:J

.field private b:J

.field private c:Z

.field private d:Lb/a/a/a/j/f;


# direct methods
.method public constructor <init>(Lb/a/a/a/j/f;J)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lb/a/a/a/i/f/g;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/i/f/g;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/f/g;->d:Lb/a/a/a/j/f;

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/j/f;

    iput-object v0, p0, Lb/a/a/a/i/f/g;->d:Lb/a/a/a/j/f;

    const-string v0, "Content length"

    invoke-static {p2, p3, v0}, Lb/a/a/a/o/a;->a(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/a/a/i/f/g;->a:J

    return-void
.end method


# virtual methods
.method public available()I
    .locals 6

    iget-object v0, p0, Lb/a/a/a/i/f/g;->d:Lb/a/a/a/j/f;

    instance-of v0, v0, Lb/a/a/a/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/f/g;->d:Lb/a/a/a/j/f;

    check-cast v0, Lb/a/a/a/j/a;

    invoke-interface {v0}, Lb/a/a/a/j/a;->e()I

    move-result v0

    iget-wide v2, p0, Lb/a/a/a/i/f/g;->a:J

    iget-wide v4, p0, Lb/a/a/a/i/f/g;->b:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lb/a/a/a/i/f/g;->c:Z

    if-nez v0, :cond_2

    :try_start_0
    iget-wide v0, p0, Lb/a/a/a/i/f/g;->b:J

    iget-wide v2, p0, Lb/a/a/a/i/f/g;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/16 v0, 0x800

    new-array v0, v0, [B

    :cond_0
    invoke-virtual {p0, v0}, Lb/a/a/a/i/f/g;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gez v1, :cond_0

    :cond_1
    iput-boolean v4, p0, Lb/a/a/a/i/f/g;->c:Z

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lb/a/a/a/i/f/g;->c:Z

    throw v0
.end method

.method public read()I
    .locals 6

    const/4 v0, -0x1

    iget-boolean v1, p0, Lb/a/a/a/i/f/g;->c:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v2, p0, Lb/a/a/a/i/f/g;->b:J

    iget-wide v4, p0, Lb/a/a/a/i/f/g;->a:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lb/a/a/a/i/f/g;->d:Lb/a/a/a/j/f;

    invoke-interface {v1}, Lb/a/a/a/j/f;->a()I

    move-result v1

    if-ne v1, v0, :cond_2

    iget-wide v2, p0, Lb/a/a/a/i/f/g;->b:J

    iget-wide v4, p0, Lb/a/a/a/i/f/g;->a:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    new-instance v0, Lb/a/a/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lb/a/a/a/i/f/g;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lb/a/a/a/i/f/g;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v2, p0, Lb/a/a/a/i/f/g;->b:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lb/a/a/a/i/f/g;->b:J

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lb/a/a/a/i/f/g;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6

    const/4 v0, -0x1

    iget-boolean v1, p0, Lb/a/a/a/i/f/g;->c:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v2, p0, Lb/a/a/a/i/f/g;->b:J

    iget-wide v4, p0, Lb/a/a/a/i/f/g;->a:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-wide v2, p0, Lb/a/a/a/i/f/g;->b:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iget-wide v4, p0, Lb/a/a/a/i/f/g;->a:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-wide v2, p0, Lb/a/a/a/i/f/g;->a:J

    iget-wide v4, p0, Lb/a/a/a/i/f/g;->b:J

    sub-long/2addr v2, v4

    long-to-int p3, v2

    :cond_2
    iget-object v1, p0, Lb/a/a/a/i/f/g;->d:Lb/a/a/a/j/f;

    invoke-interface {v1, p1, p2, p3}, Lb/a/a/a/j/f;->a([BII)I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-wide v2, p0, Lb/a/a/a/i/f/g;->b:J

    iget-wide v4, p0, Lb/a/a/a/i/f/g;->a:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    new-instance v0, Lb/a/a/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of Content-Length delimited message body (expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lb/a/a/a/i/f/g;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lb/a/a/a/i/f/g;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-lez v1, :cond_4

    iget-wide v2, p0, Lb/a/a/a/i/f/g;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lb/a/a/a/i/f/g;->b:J

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public skip(J)J
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const/16 v2, 0x800

    new-array v6, v2, [B

    iget-wide v2, p0, Lb/a/a/a/i/f/g;->a:J

    iget-wide v4, p0, Lb/a/a/a/i/f/g;->b:J

    sub-long/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-wide v4, v2

    move-wide v2, v0

    :goto_1
    cmp-long v7, v4, v0

    if-lez v7, :cond_1

    const/4 v7, 0x0

    const-wide/16 v8, 0x800

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p0, v6, v7, v8}, Lb/a/a/a/i/f/g;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :cond_2
    int-to-long v8, v7

    add-long/2addr v2, v8

    int-to-long v8, v7

    sub-long/2addr v4, v8

    goto :goto_1
.end method
