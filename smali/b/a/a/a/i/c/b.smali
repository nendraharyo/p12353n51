.class public abstract Lb/a/a/a/i/c/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Lb/a/a/a/e/d;

.field protected final b:Lb/a/a/a/e/q;

.field protected volatile c:Lb/a/a/a/e/b/b;

.field protected volatile d:Ljava/lang/Object;

.field protected volatile e:Lb/a/a/a/e/b/f;


# direct methods
.method protected constructor <init>(Lb/a/a/a/e/d;Lb/a/a/a/e/b/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Connection operator"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/i/c/b;->a:Lb/a/a/a/e/d;

    invoke-interface {p1}, Lb/a/a/a/e/d;->a()Lb/a/a/a/e/q;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/c/b;->b:Lb/a/a/a/e/q;

    iput-object p2, p0, Lb/a/a/a/i/c/b;->c:Lb/a/a/a/e/b/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/b;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V
    .locals 7

    const-string v0, "Route"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {v0}, Lb/a/a/a/e/b/f;->i()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Connection already open"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    :cond_0
    new-instance v0, Lb/a/a/a/e/b/f;

    invoke-direct {v0, p1}, Lb/a/a/a/e/b/f;-><init>(Lb/a/a/a/e/b/b;)V

    iput-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {p1}, Lb/a/a/a/e/b/b;->d()Lb/a/a/a/n;

    move-result-object v6

    iget-object v0, p0, Lb/a/a/a/i/c/b;->a:Lb/a/a/a/e/d;

    iget-object v1, p0, Lb/a/a/a/i/c/b;->b:Lb/a/a/a/e/q;

    if-eqz v6, :cond_2

    move-object v2, v6

    :goto_1
    invoke-virtual {p1}, Lb/a/a/a/e/b/b;->b()Ljava/net/InetAddress;

    move-result-object v3

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lb/a/a/a/e/d;->a(Lb/a/a/a/e/q;Lb/a/a/a/n;Ljava/net/InetAddress;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Request aborted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lb/a/a/a/e/b/b;->a()Lb/a/a/a/n;

    move-result-object v2

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    iget-object v1, p0, Lb/a/a/a/i/c/b;->b:Lb/a/a/a/e/q;

    invoke-interface {v1}, Lb/a/a/a/e/q;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/a/a/e/b/f;->a(Z)V

    :goto_2
    return-void

    :cond_4
    iget-object v1, p0, Lb/a/a/a/i/c/b;->b:Lb/a/a/a/e/q;

    invoke-interface {v1}, Lb/a/a/a/e/q;->h()Z

    move-result v1

    invoke-virtual {v0, v6, v1}, Lb/a/a/a/e/b/f;->a(Lb/a/a/a/n;Z)V

    goto :goto_2
.end method

.method public a(Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V
    .locals 3

    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {v0}, Lb/a/a/a/e/b/f;->i()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {v0}, Lb/a/a/a/e/b/f;->e()Z

    move-result v0

    const-string v1, "Protocol layering without a tunnel not supported"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {v0}, Lb/a/a/a/e/b/f;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Multiple protocol layering not supported"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {v0}, Lb/a/a/a/e/b/f;->a()Lb/a/a/a/n;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/i/c/b;->a:Lb/a/a/a/e/d;

    iget-object v2, p0, Lb/a/a/a/i/c/b;->b:Lb/a/a/a/e/q;

    invoke-interface {v1, v2, v0, p1, p2}, Lb/a/a/a/e/d;->a(Lb/a/a/a/e/q;Lb/a/a/a/n;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    iget-object v1, p0, Lb/a/a/a/i/c/b;->b:Lb/a/a/a/e/q;

    invoke-interface {v1}, Lb/a/a/a/e/q;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/a/a/e/b/f;->c(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lb/a/a/a/n;ZLb/a/a/a/l/e;)V
    .locals 2

    const-string v0, "Next proxy"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parameters"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {v0}, Lb/a/a/a/e/b/f;->i()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->b:Lb/a/a/a/e/q;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Lb/a/a/a/e/q;->a(Ljava/net/Socket;Lb/a/a/a/n;ZLb/a/a/a/l/e;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/e/b/f;->b(Lb/a/a/a/n;Z)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/i/c/b;->d:Ljava/lang/Object;

    return-void
.end method

.method public a(ZLb/a/a/a/l/e;)V
    .locals 3

    const-string v0, "HTTP parameters"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    const-string v1, "Route tracker"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {v0}, Lb/a/a/a/e/b/f;->i()Z

    move-result v0

    const-string v1, "Connection not open"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {v0}, Lb/a/a/a/e/b/f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Connection is already tunnelled"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->b:Lb/a/a/a/e/q;

    const/4 v1, 0x0

    iget-object v2, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {v2}, Lb/a/a/a/e/b/f;->a()Lb/a/a/a/n;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1, p2}, Lb/a/a/a/e/q;->a(Ljava/net/Socket;Lb/a/a/a/n;ZLb/a/a/a/l/e;)V

    iget-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {v0, p1}, Lb/a/a/a/e/b/f;->b(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    iput-object v0, p0, Lb/a/a/a/i/c/b;->d:Ljava/lang/Object;

    return-void
.end method
