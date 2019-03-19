.class public Lb/a/a/a/b/e/e;
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

    iput-object v0, p0, Lb/a/a/a/b/e/e;->a:Lb/a/a/a/h/b;

    return-void
.end method


# virtual methods
.method public process(Lb/a/a/a/q;Lb/a/a/a/n/e;)V
    .locals 3

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Proxy-Connection"

    const-string v1, "Keep-Alive"

    invoke-interface {p1, v0, v1}, Lb/a/a/a/q;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lb/a/a/a/b/e/a;->a(Lb/a/a/a/n/e;)Lb/a/a/a/b/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/b/e/a;->a()Lb/a/a/a/e/b/e;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/b/e/e;->a:Lb/a/a/a/h/b;

    const-string v1, "Connection route not set in the context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lb/a/a/a/e/b/e;->c()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "Connection"

    invoke-interface {p1, v1}, Lb/a/a/a/q;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    invoke-interface {p1, v1, v2}, Lb/a/a/a/q;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {v0}, Lb/a/a/a/e/b/e;->c()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lb/a/a/a/e/b/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Connection"

    invoke-interface {p1, v0}, Lb/a/a/a/q;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Connection"

    const-string v1, "Keep-Alive"

    invoke-interface {p1, v0, v1}, Lb/a/a/a/q;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
