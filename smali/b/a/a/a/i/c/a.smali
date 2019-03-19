.class public abstract Lb/a/a/a/i/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/e/o;
.implements Lb/a/a/a/n/e;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lb/a/a/a/e/b;

.field private volatile b:Lb/a/a/a/e/q;

.field private volatile c:Z

.field private volatile d:Z

.field private volatile e:J


# direct methods
.method protected constructor <init>(Lb/a/a/a/e/b;Lb/a/a/a/e/q;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/i/c/a;->a:Lb/a/a/a/e/b;

    iput-object p2, p0, Lb/a/a/a/i/c/a;->b:Lb/a/a/a/e/q;

    iput-boolean v0, p0, Lb/a/a/a/i/c/a;->c:Z

    iput-boolean v0, p0, Lb/a/a/a/i/c/a;->d:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lb/a/a/a/i/c/a;->e:J

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/a/s;
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a;->a(Lb/a/a/a/e/q;)V

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->j()V

    invoke-interface {v0}, Lb/a/a/a/e/q;->a()Lb/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a;->a(Lb/a/a/a/e/q;)V

    instance-of v1, v0, Lb/a/a/a/n/e;

    if-eqz v1, :cond_0

    check-cast v0, Lb/a/a/a/n/e;

    invoke-interface {v0, p1}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/a/a/i/c/a;->e:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/a/a/a/i/c/a;->e:J

    goto :goto_0
.end method

.method protected final a(Lb/a/a/a/e/q;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Lb/a/a/a/i/c/e;

    invoke-direct {v0}, Lb/a/a/a/i/c/e;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method public a(Lb/a/a/a/l;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a;->a(Lb/a/a/a/e/q;)V

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->j()V

    invoke-interface {v0, p1}, Lb/a/a/a/e/q;->a(Lb/a/a/a/l;)V

    return-void
.end method

.method public a(Lb/a/a/a/q;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a;->a(Lb/a/a/a/e/q;)V

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->j()V

    invoke-interface {v0, p1}, Lb/a/a/a/e/q;->a(Lb/a/a/a/q;)V

    return-void
.end method

.method public a(Lb/a/a/a/s;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a;->a(Lb/a/a/a/e/q;)V

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->j()V

    invoke-interface {v0, p1}, Lb/a/a/a/e/q;->a(Lb/a/a/a/s;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a;->a(Lb/a/a/a/e/q;)V

    instance-of v1, v0, Lb/a/a/a/n/e;

    if-eqz v1, :cond_0

    check-cast v0, Lb/a/a/a/n/e;

    invoke-interface {v0, p1, p2}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a;->a(Lb/a/a/a/e/q;)V

    invoke-interface {v0, p1}, Lb/a/a/a/e/q;->a(I)Z

    move-result v0

    return v0
.end method

.method public a_()V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a;->a(Lb/a/a/a/e/q;)V

    invoke-interface {v0}, Lb/a/a/a/e/q;->a_()V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lb/a/a/a/i/c/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lb/a/a/a/i/c/a;->d:Z

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->j()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->e()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lb/a/a/a/i/c/a;->a:Lb/a/a/a/e/b;

    iget-wide v2, p0, Lb/a/a/a/i/c/a;->e:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Lb/a/a/a/e/b;->a(Lb/a/a/a/e/o;JLjava/util/concurrent/TimeUnit;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b(I)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a;->a(Lb/a/a/a/e/q;)V

    invoke-interface {v0, p1}, Lb/a/a/a/e/q;->b(I)V

    return-void
.end method

.method public declared-synchronized b_()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lb/a/a/a/i/c/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lb/a/a/a/i/c/a;->d:Z

    iget-object v0, p0, Lb/a/a/a/i/c/a;->a:Lb/a/a/a/e/b;

    iget-wide v2, p0, Lb/a/a/a/i/c/a;->e:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Lb/a/a/a/e/b;->a(Lb/a/a/a/e/o;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lb/a/a/a/e/q;->c()Z

    move-result v0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lb/a/a/a/e/q;->d()Z

    move-result v0

    goto :goto_0
.end method

.method public f()Ljava/net/InetAddress;
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a;->a(Lb/a/a/a/e/q;)V

    invoke-interface {v0}, Lb/a/a/a/e/q;->f()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a;->a(Lb/a/a/a/e/q;)V

    invoke-interface {v0}, Lb/a/a/a/e/q;->g()I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a/i/c/a;->c:Z

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/i/c/a;->c:Z

    return-void
.end method

.method public k()Ljavax/net/ssl/SSLSession;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->m()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a;->a(Lb/a/a/a/e/q;)V

    invoke-virtual {p0}, Lb/a/a/a/i/c/a;->c()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lb/a/a/a/e/q;->i()Ljava/net/Socket;

    move-result-object v0

    instance-of v2, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method protected declared-synchronized l()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lb/a/a/a/i/c/a;->b:Lb/a/a/a/e/q;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lb/a/a/a/i/c/a;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected m()Lb/a/a/a/e/q;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/a;->b:Lb/a/a/a/e/q;

    return-object v0
.end method

.method protected n()Lb/a/a/a/e/b;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/a;->a:Lb/a/a/a/e/b;

    return-object v0
.end method

.method protected o()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/i/c/a;->d:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/i/c/a;->c:Z

    return v0
.end method
