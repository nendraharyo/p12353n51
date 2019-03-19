.class public abstract Lb/a/a/a/b/c/k;
.super Lb/a/a/a/b/c/b;

# interfaces
.implements Lb/a/a/a/b/c/d;
.implements Lb/a/a/a/b/c/l;


# instance fields
.field private config:Lb/a/a/a/b/a/a;

.field private uri:Ljava/net/URI;

.field private version:Lb/a/a/a/ac;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/a/a/b/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Lb/a/a/a/b/a/a;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/c/k;->config:Lb/a/a/a/b/a/a;

    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getProtocolVersion()Lb/a/a/a/ac;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/c/k;->version:Lb/a/a/a/ac;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/b/c/k;->version:Lb/a/a/a/ac;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lb/a/a/a/b/c/k;->getParams()Lb/a/a/a/l/e;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/l/f;->b(Lb/a/a/a/l/e;)Lb/a/a/a/ac;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestLine()Lb/a/a/a/ae;
    .locals 4

    invoke-virtual {p0}, Lb/a/a/a/b/c/k;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/a/b/c/k;->getProtocolVersion()Lb/a/a/a/ac;

    move-result-object v2

    invoke-virtual {p0}, Lb/a/a/a/b/c/k;->getURI()Ljava/net/URI;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

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

    iget-object v0, p0, Lb/a/a/a/b/c/k;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public releaseConnection()V
    .locals 0

    invoke-virtual {p0}, Lb/a/a/a/b/c/k;->reset()V

    return-void
.end method

.method public setConfig(Lb/a/a/a/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/c/k;->config:Lb/a/a/a/b/a/a;

    return-void
.end method

.method public setProtocolVersion(Lb/a/a/a/ac;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/c/k;->version:Lb/a/a/a/ac;

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/c/k;->uri:Ljava/net/URI;

    return-void
.end method

.method public started()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/a/b/c/k;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/a/b/c/k;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/a/b/c/k;->getProtocolVersion()Lb/a/a/a/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
