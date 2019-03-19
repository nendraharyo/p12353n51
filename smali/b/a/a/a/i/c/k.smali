.class Lb/a/a/a/i/c/k;
.super Lb/a/a/a/m/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/m/a",
        "<",
        "Lb/a/a/a/e/b/b;",
        "Lb/a/a/a/e/q;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lb/a/a/a/h/b;

.field private final b:Lb/a/a/a/e/b/f;


# direct methods
.method public constructor <init>(Lb/a/a/a/h/b;Ljava/lang/String;Lb/a/a/a/e/b/b;Lb/a/a/a/e/q;JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lb/a/a/a/m/a;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    iput-object p1, p0, Lb/a/a/a/i/c/k;->a:Lb/a/a/a/h/b;

    new-instance v0, Lb/a/a/a/e/b/f;

    invoke-direct {v0, p3}, Lb/a/a/a/e/b/f;-><init>(Lb/a/a/a/e/b/b;)V

    iput-object v0, p0, Lb/a/a/a/i/c/k;->b:Lb/a/a/a/e/b/f;

    return-void
.end method


# virtual methods
.method a()Lb/a/a/a/e/b/f;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/k;->b:Lb/a/a/a/e/b/f;

    return-object v0
.end method

.method public a(J)Z
    .locals 7

    invoke-super {p0, p1, p2}, Lb/a/a/a/m/a;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/a/a/a/i/c/k;->a:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Lb/a/a/a/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/a/i/c/k;->a:Lb/a/a/a/h/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expired @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p0}, Lb/a/a/a/i/c/k;->h()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    return v0
.end method

.method b()Lb/a/a/a/e/b/b;
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/k;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/b/b;

    return-object v0
.end method

.method c()Lb/a/a/a/e/b/b;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/k;->b:Lb/a/a/a/e/b/f;

    invoke-virtual {v0}, Lb/a/a/a/e/b/f;->j()Lb/a/a/a/e/b/b;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/k;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/q;

    invoke-interface {v0}, Lb/a/a/a/e/q;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    invoke-virtual {p0}, Lb/a/a/a/i/c/k;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/q;

    :try_start_0
    invoke-interface {v0}, Lb/a/a/a/e/q;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/k;->a:Lb/a/a/a/h/b;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
