.class public Lb/a/a/a/b/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/r;


# instance fields
.field public a:Lb/a/a/a/h/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/b/e/c;->a:Lb/a/a/a/h/b;

    return-void
.end method

.method private a(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/a/h;Lb/a/a/a/b/i;)V
    .locals 4

    invoke-interface {p2}, Lb/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/b/e/c;->a:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Lb/a/a/a/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/a/b/e/c;->a:Lb/a/a/a/h/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-using cached \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lb/a/a/a/a/g;

    sget-object v2, Lb/a/a/a/a/g;->b:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Lb/a/a/a/a/g;-><init>(Lb/a/a/a/n;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v1}, Lb/a/a/a/b/i;->a(Lb/a/a/a/a/g;)Lb/a/a/a/a/m;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "BASIC"

    invoke-interface {p2}, Lb/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lb/a/a/a/a/b;->b:Lb/a/a/a/a/b;

    invoke-virtual {p3, v1}, Lb/a/a/a/a/h;->a(Lb/a/a/a/a/b;)V

    :goto_0
    invoke-virtual {p3, p2, v0}, Lb/a/a/a/a/h;->a(Lb/a/a/a/a/c;Lb/a/a/a/a/m;)V

    :goto_1
    return-void

    :cond_1
    sget-object v1, Lb/a/a/a/a/b;->e:Lb/a/a/a/a/b;

    invoke-virtual {p3, v1}, Lb/a/a/a/a/h;->a(Lb/a/a/a/a/b;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/a/a/a/b/e/c;->a:Lb/a/a/a/h/b;

    const-string v1, "No credentials for preemptive authentication"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public process(Lb/a/a/a/q;Lb/a/a/a/n/e;)V
    .locals 8

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lb/a/a/a/b/e/a;->a(Lb/a/a/a/n/e;)Lb/a/a/a/b/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/a/a/b/e/a;->h()Lb/a/a/a/b/a;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lb/a/a/a/b/e/c;->a:Lb/a/a/a/h/b;

    const-string v1, "Auth cache not set in the context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lb/a/a/a/b/e/a;->g()Lb/a/a/a/b/i;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v0, p0, Lb/a/a/a/b/e/c;->a:Lb/a/a/a/h/b;

    const-string v1, "Credentials provider not set in the context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lb/a/a/a/b/e/a;->a()Lb/a/a/a/e/b/e;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v0, p0, Lb/a/a/a/b/e/c;->a:Lb/a/a/a/h/b;

    const-string v1, "Route info not set in the context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lb/a/a/a/b/e/a;->o()Lb/a/a/a/n;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v0, p0, Lb/a/a/a/b/e/c;->a:Lb/a/a/a/h/b;

    const-string v1, "Target host not set in the context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lb/a/a/a/n;->b()I

    move-result v0

    if-gez v0, :cond_6

    new-instance v0, Lb/a/a/a/n;

    invoke-virtual {v1}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lb/a/a/a/e/b/e;->a()Lb/a/a/a/n;

    move-result-object v7

    invoke-virtual {v7}, Lb/a/a/a/n;->b()I

    move-result v7

    invoke-virtual {v1}, Lb/a/a/a/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v7, v1}, Lb/a/a/a/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Lb/a/a/a/b/e/a;->i()Lb/a/a/a/a/h;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lb/a/a/a/a/h;->b()Lb/a/a/a/a/b;

    move-result-object v6

    sget-object v7, Lb/a/a/a/a/b;->a:Lb/a/a/a/a/b;

    if-ne v6, v7, :cond_5

    invoke-interface {v3, v0}, Lb/a/a/a/b/a;->a(Lb/a/a/a/n;)Lb/a/a/a/a/c;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v0, v6, v1, v4}, Lb/a/a/a/b/e/c;->a(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/a/h;Lb/a/a/a/b/i;)V

    :cond_5
    invoke-interface {v5}, Lb/a/a/a/e/b/e;->d()Lb/a/a/a/n;

    move-result-object v0

    invoke-virtual {v2}, Lb/a/a/a/b/e/a;->j()Lb/a/a/a/a/h;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lb/a/a/a/a/h;->b()Lb/a/a/a/a/b;

    move-result-object v2

    sget-object v5, Lb/a/a/a/a/b;->a:Lb/a/a/a/a/b;

    if-ne v2, v5, :cond_0

    invoke-interface {v3, v0}, Lb/a/a/a/b/a;->a(Lb/a/a/a/n;)Lb/a/a/a/a/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v2, v1, v4}, Lb/a/a/a/b/e/c;->a(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/a/h;Lb/a/a/a/b/i;)V

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method
