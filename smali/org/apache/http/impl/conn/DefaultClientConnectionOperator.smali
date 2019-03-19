.class public Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/ClientConnectionOperator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field protected final dnsResolver:Lorg/apache/http/conn/DnsResolver;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected final schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v0, Lorg/apache/http/impl/conn/SystemDefaultDnsResolver;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/SystemDefaultDnsResolver;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->dnsResolver:Lorg/apache/http/conn/DnsResolver;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Lorg/apache/http/conn/DnsResolver;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "DNS resolver"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    iput-object p2, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->dnsResolver:Lorg/apache/http/conn/DnsResolver;

    return-void
.end method

.method private getSchemeRegistry(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 1

    const-string v0, "http.scheme-registry"

    invoke-interface {p1, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public createConnection()Lorg/apache/http/conn/OperatedClientConnection;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/conn/DefaultClientConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/DefaultClientConnection;-><init>()V

    return-object v0
.end method

.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 13

    const-string v2, "Connection"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Target host"

    invoke-static {p2, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "HTTP parameters"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    const-string v3, "Connection must not be open"

    invoke-static {v2, v3}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->getSchemeRegistry(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/conn/scheme/Scheme;->getSchemeSocketFactory()Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    move-result-object v6

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->resolveHostname(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v8

    const/4 v2, 0x0

    :goto_1
    array-length v3, v7

    if-ge v2, v3, :cond_2

    aget-object v4, v7, v2

    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p5

    invoke-interface {v6, v0}, Lorg/apache/http/conn/scheme/SchemeSocketFactory;->createSocket(Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v5

    invoke-interface {p1, v5, p2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    new-instance v9, Lorg/apache/http/conn/HttpInetSocketAddress;

    invoke-direct {v9, p2, v4, v8}, Lorg/apache/http/conn/HttpInetSocketAddress;-><init>(Lorg/apache/http/HttpHost;Ljava/net/InetAddress;I)V

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    new-instance v4, Ljava/net/InetSocketAddress;

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-direct {v4, v0, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :cond_0
    iget-object v10, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->log:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connecting to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    move-object/from16 v0, p5

    invoke-interface {v6, v5, v9, v4, v0}, Lorg/apache/http/conn/scheme/SchemeSocketFactory;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v4

    if-eq v5, v4, :cond_7

    invoke-interface {p1, v4, p2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    :goto_3
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v4, v0, v1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v6, v4}, Lorg/apache/http/conn/scheme/SchemeSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    move-object/from16 v0, p5

    invoke-interface {p1, v4, v0}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :catch_0
    move-exception v4

    if-eqz v3, :cond_5

    throw v4

    :catch_1
    move-exception v4

    if-eqz v3, :cond_5

    throw v4

    :cond_5
    iget-object v3, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timed out. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Connection will be retried using another IP address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    move-object v4, v5

    goto :goto_3
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 2

    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {p3}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    move-result v1

    if-ltz v1, :cond_0

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected resolveHostname(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->dnsResolver:Lorg/apache/http/conn/DnsResolver;

    invoke-interface {v0, p1}, Lorg/apache/http/conn/DnsResolver;->resolve(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 5

    const-string v0, "Connection"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Target host"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parameters"

    invoke-static {p4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    const-string v1, "Connection must be open"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-direct {p0, p3}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->getSchemeRegistry(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/conn/scheme/Scheme;->getSchemeSocketFactory()Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactory;

    const-string v2, "Socket factory must implement SchemeLayeredSocketFactory"

    invoke-static {v0, v2}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lorg/apache/http/conn/scheme/Scheme;->getSchemeSocketFactory()Lorg/apache/http/conn/scheme/SchemeSocketFactory;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactory;

    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v1

    invoke-interface {v0, v2, v3, v1, p4}, Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactory;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    invoke-interface {v0, v1}, Lorg/apache/http/conn/scheme/SchemeLayeredSocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    invoke-interface {p1, v1, p2, v0, p4}, Lorg/apache/http/conn/OperatedClientConnection;->update(Ljava/net/Socket;Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    return-void
.end method
