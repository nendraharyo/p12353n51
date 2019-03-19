.class public Lb/a/a/a/e/k;
.super Ljava/io/InputStream;

# interfaces
.implements Lb/a/a/a/e/i;


# instance fields
.field protected a:Ljava/io/InputStream;

.field private b:Z

.field private final c:Lb/a/a/a/e/l;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lb/a/a/a/e/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-string v0, "Wrapped stream"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/e/k;->b:Z

    iput-object p2, p0, Lb/a/a/a/e/k;->c:Lb/a/a/a/e/l;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    if-gez p1, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lb/a/a/a/e/k;->c:Lb/a/a/a/e/l;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lb/a/a/a/e/k;->c:Lb/a/a/a/e/l;

    iget-object v1, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lb/a/a/a/e/l;->a(Ljava/io/InputStream;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v2, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    throw v0
.end method

.method public available()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lb/a/a/a/e/k;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/a/e/k;->e()V

    throw v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a/e/k;->b:Z

    invoke-virtual {p0}, Lb/a/a/a/e/k;->e()V

    return-void
.end method

.method public b_()V
    .locals 0

    invoke-virtual {p0}, Lb/a/a/a/e/k;->close()V

    return-void
.end method

.method protected c()Z
    .locals 2

    iget-boolean v0, p0, Lb/a/a/a/e/k;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a/e/k;->b:Z

    invoke-virtual {p0}, Lb/a/a/a/e/k;->d()V

    return-void
.end method

.method protected d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lb/a/a/a/e/k;->c:Lb/a/a/a/e/l;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lb/a/a/a/e/k;->c:Lb/a/a/a/e/l;

    iget-object v1, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lb/a/a/a/e/l;->b(Ljava/io/InputStream;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v2, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    throw v0
.end method

.method protected e()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lb/a/a/a/e/k;->c:Lb/a/a/a/e/l;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lb/a/a/a/e/k;->c:Lb/a/a/a/e/l;

    iget-object v1, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lb/a/a/a/e/l;->c(Ljava/io/InputStream;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iput-object v2, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    throw v0
.end method

.method public read()I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Lb/a/a/a/e/k;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/a/e/k;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/a/e/k;->e()V

    throw v0
.end method

.method public read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lb/a/a/a/e/k;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0}, Lb/a/a/a/e/k;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/e/k;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/a/e/k;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/a/e/k;->e()V

    throw v0
.end method
