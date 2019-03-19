.class public abstract Lb/a/a/a/i/c/c;
.super Lb/a/a/a/i/c/a;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected volatile a:Lb/a/a/a/i/c/b;


# direct methods
.method protected constructor <init>(Lb/a/a/a/e/b;Lb/a/a/a/i/c/b;)V
    .locals 1

    iget-object v0, p2, Lb/a/a/a/i/c/b;->b:Lb/a/a/a/e/q;

    invoke-direct {p0, p1, v0}, Lb/a/a/a/i/c/a;-><init>(Lb/a/a/a/e/b;Lb/a/a/a/e/q;)V

    iput-object p2, p0, Lb/a/a/a/i/c/c;->a:Lb/a/a/a/i/c/b;

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/c;->q()Lb/a/a/a/i/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/c;->a(Lb/a/a/a/i/c/b;)V

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/a/i/c/b;->a(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    return-void
.end method

.method protected a(Lb/a/a/a/i/c/b;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/c;->o()Z

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

.method public a(Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/c;->q()Lb/a/a/a/i/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/c;->a(Lb/a/a/a/i/c/b;)V

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/i/c/b;->a(Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    return-void
.end method

.method public a(Lb/a/a/a/n;ZLb/a/a/a/l/e;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/c;->q()Lb/a/a/a/i/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/c;->a(Lb/a/a/a/i/c/b;)V

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/a/i/c/b;->a(Lb/a/a/a/n;ZLb/a/a/a/l/e;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/c;->q()Lb/a/a/a/i/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/c;->a(Lb/a/a/a/i/c/b;)V

    invoke-virtual {v0, p1}, Lb/a/a/a/i/c/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(ZLb/a/a/a/l/e;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/c;->q()Lb/a/a/a/i/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/c;->a(Lb/a/a/a/i/c/b;)V

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/i/c/b;->a(ZLb/a/a/a/l/e;)V

    return-void
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/c;->q()Lb/a/a/a/i/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/a/a/i/c/b;->b()V

    :cond_0
    invoke-virtual {p0}, Lb/a/a/a/i/c/c;->m()Lb/a/a/a/e/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lb/a/a/a/e/q;->close()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/c;->q()Lb/a/a/a/i/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/a/a/i/c/b;->b()V

    :cond_0
    invoke-virtual {p0}, Lb/a/a/a/i/c/c;->m()Lb/a/a/a/e/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lb/a/a/a/e/q;->e()V

    :cond_1
    return-void
.end method

.method public h()Lb/a/a/a/e/b/b;
    .locals 2

    invoke-virtual {p0}, Lb/a/a/a/i/c/c;->q()Lb/a/a/a/i/c/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/c;->a(Lb/a/a/a/i/c/b;)V

    iget-object v1, v0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lb/a/a/a/i/c/b;->e:Lb/a/a/a/e/b/f;

    invoke-virtual {v0}, Lb/a/a/a/e/b/f;->j()Lb/a/a/a/e/b/b;

    move-result-object v0

    goto :goto_0
.end method

.method protected declared-synchronized l()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lb/a/a/a/i/c/c;->a:Lb/a/a/a/i/c/b;

    invoke-super {p0}, Lb/a/a/a/i/c/a;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected q()Lb/a/a/a/i/c/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/a/a/a/i/c/c;->a:Lb/a/a/a/i/c/b;

    return-object v0
.end method
