.class public abstract Lorg/apache/http/client/methods/HttpRequestBase;
.super Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;

# interfaces
.implements Lorg/apache/http/client/methods/Configurable;
.implements Lorg/apache/http/client/methods/HttpUriRequest;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private config:Lorg/apache/http/client/config/RequestConfig;

.field private uri:Ljava/net/URI;

.field private version:Lorg/apache/http/ProtocolVersion;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/http/client/methods/AbstractExecutionAwareRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Lorg/apache/http/client/config/RequestConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->config:Lorg/apache/http/client/config/RequestConfig;

    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->version:Lorg/apache/http/ProtocolVersion;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->version:Lorg/apache/http/ProtocolVersion;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/params/HttpProtocolParams;->getVersion(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    goto :goto_0
.end method

.method public getRequestLine()Lorg/apache/http/RequestLine;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

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
    new-instance v3, Lorg/apache/http/message/BasicRequestLine;

    invoke-direct {v3, v1, v0, v2}, Lorg/apache/http/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public releaseConnection()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->reset()V

    return-void
.end method

.method public setConfig(Lorg/apache/http/client/config/RequestConfig;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->config:Lorg/apache/http/client/config/RequestConfig;

    return-void
.end method

.method public setProtocolVersion(Lorg/apache/http/ProtocolVersion;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->version:Lorg/apache/http/ProtocolVersion;

    return-void
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

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

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
