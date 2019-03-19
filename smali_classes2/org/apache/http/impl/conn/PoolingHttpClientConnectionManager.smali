.class public Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;
.implements Lorg/apache/http/conn/HttpClientConnectionManager;
.implements Lorg/apache/http/pool/ConnPoolControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;,
        Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Lorg/apache/http/conn/HttpClientConnectionManager;",
        "Lorg/apache/http/pool/ConnPoolControl",
        "<",
        "Lorg/apache/http/conn/routing/HttpRoute;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

.field private final connectionOperator:Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

.field private final isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final pool:Lorg/apache/http/impl/conn/CPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getDefaultRegistry()Lorg/apache/http/config/Registry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 9

    const/4 v3, 0x0

    invoke-static {}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getDefaultRegistry()Lorg/apache/http/config/Registry;

    move-result-object v2

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-wide v6, p1

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry",
            "<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry",
            "<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry",
            "<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/HttpConnectionFactory",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry",
            "<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/HttpConnectionFactory",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;",
            "Lorg/apache/http/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v8}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry",
            "<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/HttpConnectionFactory",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;",
            "Lorg/apache/http/conn/SchemePortResolver;",
            "Lorg/apache/http/conn/DnsResolver;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    new-instance v0, Lorg/apache/http/impl/conn/CPool;

    new-instance v1, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;

    iget-object v2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-direct {v1, v2, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;-><init>(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;Lorg/apache/http/conn/HttpConnectionFactory;)V

    const/4 v2, 0x2

    const/16 v3, 0x14

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/impl/conn/CPool;-><init>(Lorg/apache/http/pool/ConnFactory;IIJLjava/util/concurrent/TimeUnit;)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    new-instance v0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

    invoke-direct {v0, p1, p3, p4}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;-><init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/HttpConnectionFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/conn/HttpConnectionFactory",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getDefaultRegistry()Lorg/apache/http/config/Registry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/http/impl/conn/CPool;Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/conn/CPool;",
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/SchemePortResolver;",
            "Lorg/apache/http/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    new-instance v0, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;-><init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private format(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "[state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/CPoolEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/CPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/CPoolEntry;->getState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "[state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/CPool;->getTotalStats()Lorg/apache/http/pool/PoolStats;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v2, p1}, Lorg/apache/http/impl/conn/CPool;->getStats(Ljava/lang/Object;)Lorg/apache/http/pool/PoolStats;

    move-result-object v2

    const-string v3, "[total kept alive: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolStats;->getAvailable()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "route allocated: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/http/pool/PoolStats;->getLeased()I

    move-result v4

    invoke-virtual {v2}, Lorg/apache/http/pool/PoolStats;->getAvailable()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/http/pool/PoolStats;->getMax()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "total allocated: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolStats;->getLeased()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolStats;->getAvailable()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolStats;->getMax()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultRegistry()Lorg/apache/http/config/Registry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/config/Registry",
            "<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "http"

    invoke-static {}, Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->shutdown()V

    return-void
.end method

.method public closeExpiredConnections()V
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Closing expired connections"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPool;->closeExpired()V

    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing connections idle longer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/CPool;->closeIdle(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V
    .locals 7

    const-string v0, "Managed Connection"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/conn/CPoolProxy;->getPoolEntry(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/ManagedHttpClientConnection;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;

    move-result-object v5

    if-nez v5, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultSocketConfig()Lorg/apache/http/config/SocketConfig;

    move-result-object v5

    :cond_0
    if-nez v5, :cond_1

    sget-object v5, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

    move v4, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->connect(Lorg/apache/http/conn/ManagedHttpClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetSocketAddress;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/protocol/HttpContext;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnectionConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/ConnectionConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getConnectionConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultConnectionConfig()Lorg/apache/http/config/ConnectionConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultConnectionConfig()Lorg/apache/http/config/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPool;->getDefaultMaxPerRoute()I

    move-result v0

    return v0
.end method

.method public getDefaultSocketConfig()Lorg/apache/http/config/SocketConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultSocketConfig()Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaxPerRoute(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getMaxPerRoute(Lorg/apache/http/conn/routing/HttpRoute;)I

    move-result v0

    return v0
.end method

.method public getMaxPerRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/CPool;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getMaxTotal()I
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPool;->getMaxTotal()I

    move-result v0

    return v0
.end method

.method public getSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStats(Ljava/lang/Object;)Lorg/apache/http/pool/PoolStats;
    .locals 1

    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getStats(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method public getStats(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/pool/PoolStats;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/CPool;->getStats(Ljava/lang/Object;)Lorg/apache/http/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method public getTotalStats()Lorg/apache/http/pool/PoolStats;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPool;->getTotalStats()Lorg/apache/http/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method protected leaseConnection(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lorg/apache/http/impl/conn/CPoolEntry;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/apache/http/HttpClientConnection;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/CPoolEntry;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    const-string v1, "Timeout waiting for connection from pool"

    invoke-direct {v0, v1}, Lorg/apache/http/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Pool entry with no connection"

    invoke-static {v1, v2}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    iget-object v1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection leased: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0, v1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    invoke-static {v0}, Lorg/apache/http/impl/conn/CPoolProxy;->newProxy(Lorg/apache/http/impl/conn/CPoolEntry;)Lorg/apache/http/HttpClientConnection;
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .locals 15

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v4, "Managed connection"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/apache/http/impl/conn/CPoolProxy;->detach(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v8

    if-nez v8, :cond_0

    monitor-exit p1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v8}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/conn/ManagedHttpClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p5, :cond_3

    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lorg/apache/http/impl/conn/CPoolEntry;->setState(Ljava/lang/Object;)V

    move-wide/from16 v0, p3

    move-object/from16 v2, p5

    invoke-virtual {v8, v0, v1, v2}, Lorg/apache/http/impl/conn/CPoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    iget-object v5, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v5, p3, v10

    if-lez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "for "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " seconds"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    iget-object v9, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Connection "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0, v8}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " can be kept alive "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    iget-object v5, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8}, Lorg/apache/http/impl/conn/CPoolEntry;->isRouteComplete()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v5, v8, v6}, Lorg/apache/http/impl/conn/CPool;->release(Lorg/apache/http/pool/PoolEntry;Z)V

    iget-object v4, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection released: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v8}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Lorg/apache/http/impl/conn/CPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0, v4}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    monitor-exit p1

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_3
    :try_start_3
    sget-object p5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    goto/16 :goto_1

    :cond_4
    const-string v5, "indefinitely"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_3

    :catchall_1
    move-exception v5

    :try_start_4
    iget-object v9, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-interface {v4}, Lorg/apache/http/conn/ManagedHttpClientConnection;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v8}, Lorg/apache/http/impl/conn/CPoolEntry;->isRouteComplete()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v6

    :goto_4
    invoke-virtual {v9, v8, v4}, Lorg/apache/http/impl/conn/CPool;->release(Lorg/apache/http/pool/PoolEntry;Z)V

    iget-object v4, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v6, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connection released: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v8}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Lorg/apache/http/impl/conn/CPoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0, v4}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_6
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    move v4, v7

    goto :goto_4
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;
    .locals 3

    const-string v0, "HTTP route"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/http/impl/conn/CPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/http/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    new-instance v1, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$1;-><init>(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;Ljava/util/concurrent/Future;)V

    return-object v1
.end method

.method public routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1

    const-string v0, "Managed Connection"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/conn/CPoolProxy;->getPoolEntry(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->markRouteComplete()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setConnectionConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setConnectionConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/ConnectionConfig;)V

    return-void
.end method

.method public setDefaultConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setDefaultConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)V

    return-void
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/CPool;->setDefaultMaxPerRoute(I)V

    return-void
.end method

.method public setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)V

    return-void
.end method

.method public bridge synthetic setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setMaxPerRoute(Lorg/apache/http/conn/routing/HttpRoute;I)V

    return-void
.end method

.method public setMaxPerRoute(Lorg/apache/http/conn/routing/HttpRoute;I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/CPool;->setMaxPerRoute(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/CPool;->setMaxTotal(I)V

    return-void
.end method

.method public setSocketConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/SocketConfig;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setSocketConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/SocketConfig;)V

    return-void
.end method

.method public shutdown()V
    .locals 3

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Connection manager is shutting down"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPool;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Connection manager shut down"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "I/O exception shutting down connection manager"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public upgrade(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3

    const-string v0, "Managed Connection"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/conn/CPoolProxy;->getPoolEntry(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ManagedHttpClientConnection;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/impl/conn/HttpClientConnectionOperator;

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p3}, Lorg/apache/http/impl/conn/HttpClientConnectionOperator;->upgrade(Lorg/apache/http/conn/ManagedHttpClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
