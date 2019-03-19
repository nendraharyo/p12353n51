.class Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/pool/ConnFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalConnectionFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/pool/ConnFactory",
        "<",
        "Lorg/apache/http/conn/routing/HttpRoute;",
        "Lorg/apache/http/conn/ManagedHttpClientConnection;",
        ">;"
    }
.end annotation


# instance fields
.field private final configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

.field private final connFactory:Lorg/apache/http/conn/HttpConnectionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/conn/HttpConnectionFactory",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;Lorg/apache/http/conn/HttpConnectionFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;",
            "Lorg/apache/http/conn/HttpConnectionFactory",
            "<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->connFactory:Lorg/apache/http/conn/HttpConnectionFactory;

    return-void

    :cond_0
    new-instance p1, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-direct {p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;-><init>()V

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->INSTANCE:Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->create(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    return-object v0
.end method

.method public create(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/conn/ManagedHttpClientConnection;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getConnectionConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/ConnectionConfig;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {p1}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getConnectionConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/ConnectionConfig;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultConnectionConfig()Lorg/apache/http/config/ConnectionConfig;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    sget-object v0, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    :cond_3
    iget-object v1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;->connFactory:Lorg/apache/http/conn/HttpConnectionFactory;

    invoke-interface {v1, p1, v0}, Lorg/apache/http/conn/HttpConnectionFactory;->create(Ljava/lang/Object;Lorg/apache/http/config/ConnectionConfig;)Lorg/apache/http/HttpConnection;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ManagedHttpClientConnection;

    return-object v0
.end method
