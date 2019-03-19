.class Lb/a/a/a/i/c/o;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/e/o;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lb/a/a/a/e/b;

.field private final b:Lb/a/a/a/e/d;

.field private volatile c:Lb/a/a/a/i/c/k;

.field private volatile d:Z

.field private volatile e:J


# direct methods
.method constructor <init>(Lb/a/a/a/e/b;Lb/a/a/a/e/d;Lb/a/a/a/i/c/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection manager"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connection operator"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP pool entry"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/i/c/o;->a:Lb/a/a/a/e/b;

    iput-object p2, p0, Lb/a/a/a/i/c/o;->b:Lb/a/a/a/e/d;

    iput-object p3, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/i/c/o;->d:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lb/a/a/a/i/c/o;->e:J

    return-void
.end method

.method private p()Lb/a/a/a/e/q;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/q;

    goto :goto_0
.end method

.method private q()Lb/a/a/a/e/q;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/i/c/e;

    invoke-direct {v0}, Lb/a/a/a/i/c/e;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/q;

    return-object v0
.end method

.method private r()Lb/a/a/a/i/c/k;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/i/c/e;

    invoke-direct {v0}, Lb/a/a/a/i/c/e;-><init>()V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lb/a/a/a/s;
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->q()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/e/q;->a()Lb/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lb/a/a/a/i/c/o;->e:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lb/a/a/a/i/c/o;->e:J

    goto :goto_0
.end method

.method public a(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V
    .locals 7

    const-string v0, "Route"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/i/c/e;

    invoke-direct {v0}, Lb/a/a/a/i/c/e;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->a()Lb/a/a/a/e/b/f;

    move-result-object v0

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/a/e/b/f;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Connection already open"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->g()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/e/q;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lb/a/a/a/e/b/b;->d()Lb/a/a/a/n;

    move-result-object v6

    iget-object v0, p0, Lb/a/a/a/i/c/o;->b:Lb/a/a/a/e/d;

    if-eqz v6, :cond_2

    move-object v2, v6

    :goto_1
    invoke-virtual {p1}, Lb/a/a/a/e/b/b;->b()Ljava/net/InetAddress;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lb/a/a/a/e/d;->a(Lb/a/a/a/e/q;Lb/a/a/a/n;Ljava/net/InetAddress;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lb/a/a/a/e/b/b;->a()Lb/a/a/a/n;

    move-result-object v2

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->a()Lb/a/a/a/e/b/f;

    move-result-object v0

    if-nez v6, :cond_4

    invoke-interface {v1}, Lb/a/a/a/e/q;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/a/a/e/b/f;->a(Z)V

    :goto_2
    monitor-exit p0

    return-void

    :cond_4
    invoke-interface {v1}, Lb/a/a/a/e/q;->h()Z

    move-result v1

    invoke-virtual {v0, v6, v1}, Lb/a/a/a/e/b/f;->a(Lb/a/a/a/n;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method

.method public a(Lb/a/a/a/l;)V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->q()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/a/a/a/e/q;->a(Lb/a/a/a/l;)V

    return-void
.end method

.method public a(Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V
    .locals 3

    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/i/c/e;

    invoke-direct {v0}, Lb/a/a/a/i/c/e;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->a()Lb/a/a/a/e/b/f;

    move-result-object v1

    const-string v0, "Route tracker"

    invoke-static {v1, v0}, Lb/a/a/a/o/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lb/a/a/a/e/b/f;->i()Z

    move-result v0

    const-string v2, "Connection not open"

    invoke-static {v0, v2}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lb/a/a/a/e/b/f;->e()Z

    move-result v0

    const-string v2, "Protocol layering without a tunnel not supported"

    invoke-static {v0, v2}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lb/a/a/a/e/b/f;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Multiple protocol layering not supported"

    invoke-static {v0, v2}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lb/a/a/a/e/b/f;->a()Lb/a/a/a/n;

    move-result-object v1

    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/q;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lb/a/a/a/i/c/o;->b:Lb/a/a/a/e/d;

    invoke-interface {v2, v0, v1, p1, p2}, Lb/a/a/a/e/d;->a(Lb/a/a/a/e/q;Lb/a/a/a/n;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v1, :cond_2

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v1, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v1}, Lb/a/a/a/i/c/k;->a()Lb/a/a/a/e/b/f;

    move-result-object v1

    invoke-interface {v0}, Lb/a/a/a/e/q;->h()Z

    move-result v0

    invoke-virtual {v1, v0}, Lb/a/a/a/e/b/f;->c(Z)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public a(Lb/a/a/a/n;ZLb/a/a/a/l/e;)V
    .locals 2

    const-string v0, "Next proxy"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/i/c/e;

    invoke-direct {v0}, Lb/a/a/a/i/c/e;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->a()Lb/a/a/a/e/b/f;

    move-result-object v0

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lb/a/a/a/e/b/f;->i()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/q;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lb/a/a/a/e/q;->a(Ljava/net/Socket;Lb/a/a/a/n;ZLb/a/a/a/l/e;)V

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->a()Lb/a/a/a/e/b/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/e/b/f;->b(Lb/a/a/a/n;Z)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public a(Lb/a/a/a/q;)V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->q()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/a/a/a/e/q;->a(Lb/a/a/a/q;)V

    return-void
.end method

.method public a(Lb/a/a/a/s;)V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->q()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/a/a/a/e/q;->a(Lb/a/a/a/s;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->r()Lb/a/a/a/i/c/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/i/c/k;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZLb/a/a/a/l/e;)V
    .locals 3

    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/i/c/e;

    invoke-direct {v0}, Lb/a/a/a/i/c/e;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->a()Lb/a/a/a/e/b/f;

    move-result-object v1

    const-string v0, "Route tracker"

    invoke-static {v1, v0}, Lb/a/a/a/o/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lb/a/a/a/e/b/f;->i()Z

    move-result v0

    const-string v2, "Connection not open"

    invoke-static {v0, v2}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lb/a/a/a/e/b/f;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Connection is already tunnelled"

    invoke-static {v0, v2}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lb/a/a/a/e/b/f;->a()Lb/a/a/a/n;

    move-result-object v1

    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/q;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, p1, p2}, Lb/a/a/a/e/q;->a(Ljava/net/Socket;Lb/a/a/a/n;ZLb/a/a/a/l/e;)V

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->a()Lb/a/a/a/e/b/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/e/b/f;->b(Z)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method public a(I)Z
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->q()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/a/a/a/e/q;->a(I)Z

    move-result v0

    return v0
.end method

.method public a_()V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->q()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/e/q;->a_()V

    return-void
.end method

.method public b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/i/c/o;->d:Z

    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0}, Lb/a/a/a/e/q;->e()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lb/a/a/a/i/c/o;->a:Lb/a/a/a/e/b;

    iget-wide v2, p0, Lb/a/a/a/i/c/o;->e:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Lb/a/a/a/e/b;->a(Lb/a/a/a/e/o;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b(I)V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->q()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lb/a/a/a/e/q;->b(I)V

    return-void
.end method

.method public b_()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/c/o;->a:Lb/a/a/a/e/b;

    iget-wide v2, p0, Lb/a/a/a/i/c/o;->e:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v2, v3, v1}, Lb/a/a/a/e/b;->a(Lb/a/a/a/e/o;JLjava/util/concurrent/TimeUnit;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->p()Lb/a/a/a/e/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/a/a/e/q;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    iget-object v1, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/a/a/a/i/c/k;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/q;

    invoke-virtual {v1}, Lb/a/a/a/i/c/k;->a()Lb/a/a/a/e/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/a/e/b/f;->h()V

    invoke-interface {v0}, Lb/a/a/a/e/q;->close()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->p()Lb/a/a/a/e/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/a/a/e/q;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 2

    iget-object v1, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/a/a/a/i/c/k;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/q;

    invoke-virtual {v1}, Lb/a/a/a/i/c/k;->a()Lb/a/a/a/e/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/a/e/b/f;->h()V

    invoke-interface {v0}, Lb/a/a/a/e/q;->e()V

    :cond_0
    return-void
.end method

.method public f()Ljava/net/InetAddress;
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->q()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/e/q;->f()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->q()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/e/q;->g()I

    move-result v0

    return v0
.end method

.method public h()Lb/a/a/a/e/b/b;
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->r()Lb/a/a/a/i/c/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/i/c/k;->c()Lb/a/a/a/e/b/b;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a/i/c/o;->d:Z

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/i/c/o;->d:Z

    return-void
.end method

.method public k()Ljavax/net/ssl/SSLSession;
    .locals 3

    invoke-direct {p0}, Lb/a/a/a/i/c/o;->q()Lb/a/a/a/e/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Lb/a/a/a/e/q;->i()Ljava/net/Socket;

    move-result-object v0

    instance-of v2, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method l()Lb/a/a/a/i/c/k;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    return-object v0
.end method

.method m()Lb/a/a/a/i/c/k;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    const/4 v1, 0x0

    iput-object v1, p0, Lb/a/a/a/i/c/o;->c:Lb/a/a/a/i/c/k;

    return-object v0
.end method

.method public n()Lb/a/a/a/e/b;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/o;->a:Lb/a/a/a/e/b;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/i/c/o;->d:Z

    return v0
.end method
