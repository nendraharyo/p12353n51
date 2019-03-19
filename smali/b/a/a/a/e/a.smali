.class public Lb/a/a/a/e/a;
.super Lb/a/a/a/g/f;

# interfaces
.implements Lb/a/a/a/e/i;
.implements Lb/a/a/a/e/l;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Lb/a/a/a/e/o;

.field protected final b:Z


# direct methods
.method public constructor <init>(Lb/a/a/a/k;Lb/a/a/a/e/o;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lb/a/a/a/g/f;-><init>(Lb/a/a/a/k;)V

    const-string v0, "Connection"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    iput-boolean p3, p0, Lb/a/a/a/e/a;->b:Z

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lb/a/a/a/e/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/e/a;->wrappedEntity:Lb/a/a/a/k;

    invoke-static {v0}, Lb/a/a/a/o/f;->a(Lb/a/a/a/k;)V

    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lb/a/a/a/e/a;->c()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/a/e/a;->c()V

    throw v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lb/a/a/a/e/a;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lb/a/a/a/e/a;->c()V

    const/4 v0, 0x0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/a/e/a;->c()V

    throw v0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    throw v0
.end method

.method public b(Ljava/io/InputStream;)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lb/a/a/a/e/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->i()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lb/a/a/a/e/a;->c()V

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lb/a/a/a/e/a;->c()V

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->j()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public b_()V
    .locals 0

    invoke-direct {p0}, Lb/a/a/a/e/a;->d()V

    return-void
.end method

.method protected c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->b_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    throw v0
.end method

.method public c(Ljava/io/InputStream;)Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/e/a;->a:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->b()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public consumeContent()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lb/a/a/a/e/a;->d()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lb/a/a/a/e/k;

    iget-object v1, p0, Lb/a/a/a/e/a;->wrappedEntity:Lb/a/a/a/k;

    invoke-interface {v1}, Lb/a/a/a/k;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lb/a/a/a/e/k;-><init>(Ljava/io/InputStream;Lb/a/a/a/e/l;)V

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0

    invoke-super {p0, p1}, Lb/a/a/a/g/f;->writeTo(Ljava/io/OutputStream;)V

    invoke-direct {p0}, Lb/a/a/a/e/a;->d()V

    return-void
.end method
