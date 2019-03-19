.class public abstract Lb/a/a/a/i/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/i;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lb/a/a/a/i/e/b;

.field private final b:Lb/a/a/a/i/e/a;

.field private c:Lb/a/a/a/j/f;

.field private d:Lb/a/a/a/j/g;

.field private e:Lb/a/a/a/j/b;

.field private f:Lb/a/a/a/j/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/j/c",
            "<",
            "Lb/a/a/a/s;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lb/a/a/a/j/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/a/a/j/d",
            "<",
            "Lb/a/a/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lb/a/a/a/i/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i/a;->c:Lb/a/a/a/j/f;

    iput-object v0, p0, Lb/a/a/a/i/a;->d:Lb/a/a/a/j/g;

    iput-object v0, p0, Lb/a/a/a/i/a;->e:Lb/a/a/a/j/b;

    iput-object v0, p0, Lb/a/a/a/i/a;->f:Lb/a/a/a/j/c;

    iput-object v0, p0, Lb/a/a/a/i/a;->g:Lb/a/a/a/j/d;

    iput-object v0, p0, Lb/a/a/a/i/a;->h:Lb/a/a/a/i/e;

    invoke-virtual {p0}, Lb/a/a/a/i/a;->m()Lb/a/a/a/i/e/b;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/a;->a:Lb/a/a/a/i/e/b;

    invoke-virtual {p0}, Lb/a/a/a/i/a;->l()Lb/a/a/a/i/e/a;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/a;->b:Lb/a/a/a/i/e/a;

    return-void
.end method


# virtual methods
.method protected a(Lb/a/a/a/j/e;Lb/a/a/a/j/e;)Lb/a/a/a/i/e;
    .locals 1

    new-instance v0, Lb/a/a/a/i/e;

    invoke-direct {v0, p1, p2}, Lb/a/a/a/i/e;-><init>(Lb/a/a/a/j/e;Lb/a/a/a/j/e;)V

    return-object v0
.end method

.method protected a(Lb/a/a/a/j/f;Lb/a/a/a/t;Lb/a/a/a/l/e;)Lb/a/a/a/j/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/j/f;",
            "Lb/a/a/a/t;",
            "Lb/a/a/a/l/e;",
            ")",
            "Lb/a/a/a/j/c",
            "<",
            "Lb/a/a/a/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Lb/a/a/a/i/f/i;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lb/a/a/a/i/f/i;-><init>(Lb/a/a/a/j/f;Lb/a/a/a/k/t;Lb/a/a/a/t;Lb/a/a/a/l/e;)V

    return-object v0
.end method

.method protected a(Lb/a/a/a/j/g;Lb/a/a/a/l/e;)Lb/a/a/a/j/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/j/g;",
            "Lb/a/a/a/l/e;",
            ")",
            "Lb/a/a/a/j/d",
            "<",
            "Lb/a/a/a/q;",
            ">;"
        }
    .end annotation

    new-instance v0, Lb/a/a/a/i/f/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lb/a/a/a/i/f/j;-><init>(Lb/a/a/a/j/g;Lb/a/a/a/k/s;Lb/a/a/a/l/e;)V

    return-object v0
.end method

.method public a()Lb/a/a/a/s;
    .locals 3

    invoke-virtual {p0}, Lb/a/a/a/i/a;->j()V

    iget-object v0, p0, Lb/a/a/a/i/a;->f:Lb/a/a/a/j/c;

    invoke-interface {v0}, Lb/a/a/a/j/c;->a()Lb/a/a/a/p;

    move-result-object v0

    check-cast v0, Lb/a/a/a/s;

    invoke-interface {v0}, Lb/a/a/a/s;->a()Lb/a/a/a/af;

    move-result-object v1

    invoke-interface {v1}, Lb/a/a/a/af;->b()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lb/a/a/a/i/a;->h:Lb/a/a/a/i/e;

    invoke-virtual {v1}, Lb/a/a/a/i/e;->b()V

    :cond_0
    return-object v0
.end method

.method protected a(Lb/a/a/a/j/f;Lb/a/a/a/j/g;Lb/a/a/a/l/e;)V
    .locals 2

    const-string v0, "Input session buffer"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/j/f;

    iput-object v0, p0, Lb/a/a/a/i/a;->c:Lb/a/a/a/j/f;

    const-string v0, "Output session buffer"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/j/g;

    iput-object v0, p0, Lb/a/a/a/i/a;->d:Lb/a/a/a/j/g;

    instance-of v0, p1, Lb/a/a/a/j/b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lb/a/a/a/j/b;

    iput-object v0, p0, Lb/a/a/a/i/a;->e:Lb/a/a/a/j/b;

    :cond_0
    invoke-virtual {p0}, Lb/a/a/a/i/a;->n()Lb/a/a/a/t;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lb/a/a/a/i/a;->a(Lb/a/a/a/j/f;Lb/a/a/a/t;Lb/a/a/a/l/e;)Lb/a/a/a/j/c;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/a;->f:Lb/a/a/a/j/c;

    invoke-virtual {p0, p2, p3}, Lb/a/a/a/i/a;->a(Lb/a/a/a/j/g;Lb/a/a/a/l/e;)Lb/a/a/a/j/d;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/a;->g:Lb/a/a/a/j/d;

    invoke-interface {p1}, Lb/a/a/a/j/f;->b()Lb/a/a/a/j/e;

    move-result-object v0

    invoke-interface {p2}, Lb/a/a/a/j/g;->b()Lb/a/a/a/j/e;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/i/a;->a(Lb/a/a/a/j/e;Lb/a/a/a/j/e;)Lb/a/a/a/i/e;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/a;->h:Lb/a/a/a/i/e;

    return-void
.end method

.method public a(Lb/a/a/a/l;)V
    .locals 3

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lb/a/a/a/i/a;->j()V

    invoke-interface {p1}, Lb/a/a/a/l;->getEntity()Lb/a/a/a/k;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/a;->a:Lb/a/a/a/i/e/b;

    iget-object v1, p0, Lb/a/a/a/i/a;->d:Lb/a/a/a/j/g;

    invoke-interface {p1}, Lb/a/a/a/l;->getEntity()Lb/a/a/a/k;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lb/a/a/a/i/e/b;->a(Lb/a/a/a/j/g;Lb/a/a/a/p;Lb/a/a/a/k;)V

    goto :goto_0
.end method

.method public a(Lb/a/a/a/q;)V
    .locals 1

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lb/a/a/a/i/a;->j()V

    iget-object v0, p0, Lb/a/a/a/i/a;->g:Lb/a/a/a/j/d;

    invoke-interface {v0, p1}, Lb/a/a/a/j/d;->b(Lb/a/a/a/p;)V

    iget-object v0, p0, Lb/a/a/a/i/a;->h:Lb/a/a/a/i/e;

    invoke-virtual {v0}, Lb/a/a/a/i/e;->a()V

    return-void
.end method

.method public a(Lb/a/a/a/s;)V
    .locals 2

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lb/a/a/a/i/a;->j()V

    iget-object v0, p0, Lb/a/a/a/i/a;->b:Lb/a/a/a/i/e/a;

    iget-object v1, p0, Lb/a/a/a/i/a;->c:Lb/a/a/a/j/f;

    invoke-virtual {v0, v1, p1}, Lb/a/a/a/i/e/a;->b(Lb/a/a/a/j/f;Lb/a/a/a/p;)Lb/a/a/a/k;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/a/a/a/s;->a(Lb/a/a/a/k;)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/a;->j()V

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/a;->c:Lb/a/a/a/j/f;

    invoke-interface {v0, p1}, Lb/a/a/a/j/f;->a(I)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_()V
    .locals 0

    invoke-virtual {p0}, Lb/a/a/a/i/a;->j()V

    invoke-virtual {p0}, Lb/a/a/a/i/a;->o()V

    return-void
.end method

.method public d()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lb/a/a/a/i/a;->c()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lb/a/a/a/i/a;->p()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lb/a/a/a/i/a;->c:Lb/a/a/a/j/f;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lb/a/a/a/j/f;->a(I)Z

    invoke-virtual {p0}, Lb/a/a/a/i/a;->p()Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected abstract j()V
.end method

.method protected l()Lb/a/a/a/i/e/a;
    .locals 2

    new-instance v0, Lb/a/a/a/i/e/a;

    new-instance v1, Lb/a/a/a/i/e/c;

    invoke-direct {v1}, Lb/a/a/a/i/e/c;-><init>()V

    invoke-direct {v0, v1}, Lb/a/a/a/i/e/a;-><init>(Lb/a/a/a/g/d;)V

    return-object v0
.end method

.method protected m()Lb/a/a/a/i/e/b;
    .locals 2

    new-instance v0, Lb/a/a/a/i/e/b;

    new-instance v1, Lb/a/a/a/i/e/d;

    invoke-direct {v1}, Lb/a/a/a/i/e/d;-><init>()V

    invoke-direct {v0, v1}, Lb/a/a/a/i/e/b;-><init>(Lb/a/a/a/g/d;)V

    return-object v0
.end method

.method protected n()Lb/a/a/a/t;
    .locals 1

    sget-object v0, Lb/a/a/a/i/c;->a:Lb/a/a/a/i/c;

    return-object v0
.end method

.method protected o()V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/a;->d:Lb/a/a/a/j/g;

    invoke-interface {v0}, Lb/a/a/a/j/g;->a()V

    return-void
.end method

.method protected p()Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/a;->e:Lb/a/a/a/j/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/a;->e:Lb/a/a/a/j/b;

    invoke-interface {v0}, Lb/a/a/a/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
