.class public Lb/a/a/a/b/e/h;
.super Lb/a/a/a/b/e/d;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/a/a/b/e/d;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lb/a/a/a/q;Lb/a/a/a/n/e;)V
    .locals 4

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Authorization"

    invoke-interface {p1, v0}, Lb/a/a/a/q;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http.auth.target-scope"

    invoke-interface {p2, v0}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/h;

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/b/e/h;->a:Lb/a/a/a/h/b;

    const-string v1, "Target auth state not set in the context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lb/a/a/a/b/e/h;->a:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Lb/a/a/a/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/a/a/a/b/e/h;->a:Lb/a/a/a/h/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target auth state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lb/a/a/a/a/h;->b()Lb/a/a/a/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p0, v0, p1, p2}, Lb/a/a/a/b/e/h;->a(Lb/a/a/a/a/h;Lb/a/a/a/q;Lb/a/a/a/n/e;)V

    goto :goto_0
.end method
