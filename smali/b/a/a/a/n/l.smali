.class public Lb/a/a/a/n/l;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lb/a/a/a/q;Lb/a/a/a/n/e;)V
    .locals 4

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lb/a/a/a/n/f;->b(Lb/a/a/a/n/e;)Lb/a/a/a/n/f;

    move-result-object v0

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v1

    invoke-interface {v1}, Lb/a/a/a/ae;->b()Lb/a/a/a/ac;

    move-result-object v3

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v1

    invoke-interface {v1}, Lb/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lb/a/a/a/v;->b:Lb/a/a/a/v;

    invoke-virtual {v3, v1}, Lb/a/a/a/ac;->c(Lb/a/a/a/ac;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Host"

    invoke-interface {p1, v1}, Lb/a/a/a/q;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lb/a/a/a/n/f;->o()Lb/a/a/a/n;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lb/a/a/a/n/f;->l()Lb/a/a/a/j;

    move-result-object v1

    instance-of v0, v1, Lb/a/a/a/o;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Lb/a/a/a/o;

    invoke-interface {v0}, Lb/a/a/a/o;->f()Ljava/net/InetAddress;

    move-result-object v0

    check-cast v1, Lb/a/a/a/o;

    invoke-interface {v1}, Lb/a/a/a/o;->g()I

    move-result v1

    if-eqz v0, :cond_4

    new-instance v2, Lb/a/a/a/n;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lb/a/a/a/n;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    :goto_1
    if-nez v0, :cond_3

    sget-object v0, Lb/a/a/a/v;->b:Lb/a/a/a/v;

    invoke-virtual {v3, v0}, Lb/a/a/a/ac;->c(Lb/a/a/a/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/ab;

    const-string v1, "Target host missing"

    invoke-direct {v0, v1}, Lb/a/a/a/ab;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, v2

    :cond_3
    const-string v1, "Host"

    invoke-virtual {v0}, Lb/a/a/a/n;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/a/a/a/q;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_1
.end method
