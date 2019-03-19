.class public Lb/a/a/a/i/b/w;
.super Lb/a/a/a/k/a;

# interfaces
.implements Lb/a/a/a/b/c/l;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lb/a/a/a/q;

.field private b:Ljava/net/URI;

.field private c:Ljava/lang/String;

.field private d:Lb/a/a/a/ac;

.field private e:I


# direct methods
.method public constructor <init>(Lb/a/a/a/q;)V
    .locals 5

    invoke-direct {p0}, Lb/a/a/a/k/a;-><init>()V

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/i/b/w;->a:Lb/a/a/a/q;

    invoke-interface {p1}, Lb/a/a/a/q;->getParams()Lb/a/a/a/l/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/b/w;->setParams(Lb/a/a/a/l/e;)V

    invoke-interface {p1}, Lb/a/a/a/q;->getAllHeaders()[Lb/a/a/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/b/w;->setHeaders([Lb/a/a/a/e;)V

    instance-of v0, p1, Lb/a/a/a/b/c/l;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lb/a/a/a/b/c/l;

    invoke-interface {v0}, Lb/a/a/a/b/c/l;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/w;->b:Ljava/net/URI;

    check-cast p1, Lb/a/a/a/b/c/l;

    invoke-interface {p1}, Lb/a/a/a/b/c/l;->getMethod()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/w;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/b/w;->d:Lb/a/a/a/ac;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/a/i/b/w;->e:I

    return-void

    :cond_0
    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v1

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-interface {v1}, Lb/a/a/a/ae;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lb/a/a/a/i/b/w;->b:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Lb/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/w;->c:Ljava/lang/String;

    invoke-interface {p1}, Lb/a/a/a/q;->getProtocolVersion()Lb/a/a/a/ac;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/w;->d:Lb/a/a/a/ac;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lb/a/a/a/ab;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid request URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lb/a/a/a/ae;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lb/a/a/a/ab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public a(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/i/b/w;->b:Ljava/net/URI;

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abort()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/w;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0}, Lb/a/a/a/k/q;->a()V

    iget-object v0, p0, Lb/a/a/a/i/b/w;->a:Lb/a/a/a/q;

    invoke-interface {v0}, Lb/a/a/a/q;->getAllHeaders()[Lb/a/a/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/b/w;->setHeaders([Lb/a/a/a/e;)V

    return-void
.end method

.method public c()Lb/a/a/a/q;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/w;->a:Lb/a/a/a/q;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lb/a/a/a/i/b/w;->e:I

    return v0
.end method

.method public e()V
    .locals 1

    iget v0, p0, Lb/a/a/a/i/b/w;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/a/i/b/w;->e:I

    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()Lb/a/a/a/ac;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/w;->d:Lb/a/a/a/ac;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/w;->getParams()Lb/a/a/a/l/e;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/l/f;->b(Lb/a/a/a/l/e;)Lb/a/a/a/ac;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/w;->d:Lb/a/a/a/ac;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/w;->d:Lb/a/a/a/ac;

    return-object v0
.end method

.method public getRequestLine()Lb/a/a/a/ae;
    .locals 4

    invoke-virtual {p0}, Lb/a/a/a/i/b/w;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/a/i/b/w;->getProtocolVersion()Lb/a/a/a/ac;

    move-result-object v2

    const/4 v0, 0x0

    iget-object v3, p0, Lb/a/a/a/i/b/w;->b:Ljava/net/URI;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/b/w;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v0, "/"

    :cond_2
    new-instance v3, Lb/a/a/a/k/m;

    invoke-direct {v3, v1, v0, v2}, Lb/a/a/a/k/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/ac;)V

    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/w;->b:Ljava/net/URI;

    return-object v0
.end method

.method public isAborted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
