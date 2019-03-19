.class public Lcom/loopj/android/http/AsyncHttpClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field public static final DEFAULT_MAX_RETRIES:I = 0x5

.field public static final DEFAULT_RETRY_SLEEP_TIME_MILLIS:I = 0x5dc

.field public static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final LOG_TAG:Ljava/lang/String; = "AsyncHttpClient"

.field public static log:Lcom/loopj/android/http/LogInterface;


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connectTimeout:I

.field private final httpClient:Lb/a/a/a/i/b/k;

.field private final httpContext:Lb/a/a/a/n/e;

.field private isUrlEncodingEnabled:Z

.field private maxConnections:I

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/loopj/android/http/RequestHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private responseTimeout:I

.field private threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/loopj/android/http/LogHandler;

    invoke-direct {v0}, Lcom/loopj/android/http/LogHandler;-><init>()V

    sput-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {p0, v0, v1, v2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1bb

    invoke-direct {p0, v0, p1, v1}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/e/c/i;)V
    .locals 7

    const/16 v2, 0x2710

    const/16 v6, 0xa

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    iput v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    iput v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    iput-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    new-instance v2, Lb/a/a/a/l/b;

    invoke-direct {v2}, Lb/a/a/a/l/b;-><init>()V

    iget v3, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lb/a/a/a/e/a/a;->a(Lb/a/a/a/l/e;J)V

    new-instance v3, Lb/a/a/a/e/a/c;

    iget v4, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v3, v4}, Lb/a/a/a/e/a/c;-><init>(I)V

    invoke-static {v2, v3}, Lb/a/a/a/e/a/a;->a(Lb/a/a/a/l/e;Lb/a/a/a/e/a/b;)V

    invoke-static {v2, v6}, Lb/a/a/a/e/a/a;->a(Lb/a/a/a/l/e;I)V

    iget v3, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    invoke-static {v2, v3}, Lb/a/a/a/l/c;->a(Lb/a/a/a/l/e;I)V

    iget v3, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    invoke-static {v2, v3}, Lb/a/a/a/l/c;->c(Lb/a/a/a/l/e;I)V

    invoke-static {v2, v0}, Lb/a/a/a/l/c;->a(Lb/a/a/a/l/e;Z)V

    const/16 v3, 0x2000

    invoke-static {v2, v3}, Lb/a/a/a/l/c;->b(Lb/a/a/a/l/e;I)V

    sget-object v3, Lb/a/a/a/v;->c:Lb/a/a/a/v;

    invoke-static {v2, v3}, Lb/a/a/a/l/f;->a(Lb/a/a/a/l/e;Lb/a/a/a/ac;)V

    invoke-virtual {p0, p1, v2}, Lcom/loopj/android/http/AsyncHttpClient;->createConnectionManager(Lb/a/a/a/e/c/i;Lb/a/a/a/l/b;)Lb/a/a/a/e/b;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    const-string v4, "Custom implementation of #createConnectionManager(SchemeRegistry, BasicHttpParams) returned null"

    invoke-static {v0, v4}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpClient;->getDefaultThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    new-instance v0, Lb/a/a/a/n/n;

    new-instance v4, Lb/a/a/a/n/a;

    invoke-direct {v4}, Lb/a/a/a/n/a;-><init>()V

    invoke-direct {v0, v4}, Lb/a/a/a/n/n;-><init>(Lb/a/a/a/n/e;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    new-instance v0, Lb/a/a/a/i/b/k;

    invoke-direct {v0, v3, v2}, Lb/a/a/a/i/b/k;-><init>(Lb/a/a/a/e/b;Lb/a/a/a/l/e;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient$1;

    invoke-direct {v2, p0}, Lcom/loopj/android/http/AsyncHttpClient$1;-><init>(Lcom/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v0, v2}, Lb/a/a/a/i/b/k;->a(Lb/a/a/a/r;)V

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient$2;

    invoke-direct {v2, p0}, Lcom/loopj/android/http/AsyncHttpClient$2;-><init>(Lcom/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v0, v2}, Lb/a/a/a/i/b/k;->a(Lb/a/a/a/u;)V

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    new-instance v2, Lcom/loopj/android/http/AsyncHttpClient$3;

    invoke-direct {v2, p0}, Lcom/loopj/android/http/AsyncHttpClient$3;-><init>(Lcom/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v0, v2, v1}, Lb/a/a/a/i/b/k;->a(Lb/a/a/a/r;I)V

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    new-instance v1, Lcom/loopj/android/http/RetryHandler;

    const/4 v2, 0x5

    const/16 v3, 0x5dc

    invoke-direct {v1, v2, v3}, Lcom/loopj/android/http/RetryHandler;-><init>(II)V

    invoke-virtual {v0, v1}, Lb/a/a/a/i/b/k;->a(Lb/a/a/a/b/k;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(ZII)V
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->getDefaultSchemeRegistry(ZII)Lb/a/a/a/e/c/i;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lb/a/a/a/e/c/i;)V

    return-void
.end method

.method static synthetic access$000(Lcom/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Ljava/util/List;Z)V

    return-void
.end method

.method private addEntityToRequestBase(Lb/a/a/a/b/c/e;Lb/a/a/a/k;)Lb/a/a/a/b/c/e;
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lb/a/a/a/b/c/e;->setEntity(Lb/a/a/a/k;)V

    :cond_0
    return-object p1
.end method

.method public static allowRetryExceptionClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/loopj/android/http/RetryHandler;->addClassToWhitelist(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public static blockRetryExceptionClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/loopj/android/http/RetryHandler;->addClassToBlacklist(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method private cancelRequests(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loopj/android/http/RequestHandle;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/RequestHandle;

    invoke-virtual {v0, p2}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static endEntityViaReflection(Lb/a/a/a/k;)V
    .locals 7

    instance-of v0, p0, Lb/a/a/a/g/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Lb/a/a/a/g/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "wrappedEntity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/a/a/k;->consumeContent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "AsyncHttpClient"

    const-string v3, "wrappedEntity consume"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static getDefaultSchemeRegistry(ZII)Lb/a/a/a/e/c/i;
    .locals 5

    const/4 v3, 0x1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Beware! Using the fix is insecure, as it doesn\'t verify SSL certificates."

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ge p1, v3, :cond_1

    const/16 p1, 0x50

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Invalid HTTP port number specified, defaulting to 80"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-ge p2, v3, :cond_2

    const/16 p2, 0x1bb

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Invalid HTTPS port number specified, defaulting to 443"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p0, :cond_3

    invoke-static {}, Lcom/loopj/android/http/MySSLSocketFactory;->getFixedSocketFactory()Lb/a/a/a/e/d/i;

    move-result-object v0

    :goto_0
    new-instance v1, Lb/a/a/a/e/c/i;

    invoke-direct {v1}, Lb/a/a/a/e/c/i;-><init>()V

    new-instance v2, Lb/a/a/a/e/c/e;

    const-string v3, "http"

    invoke-static {}, Lb/a/a/a/e/c/d;->a()Lb/a/a/a/e/c/d;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lb/a/a/a/e/c/e;-><init>(Ljava/lang/String;Lb/a/a/a/e/c/l;I)V

    invoke-virtual {v1, v2}, Lb/a/a/a/e/c/i;->a(Lb/a/a/a/e/c/e;)Lb/a/a/a/e/c/e;

    new-instance v2, Lb/a/a/a/e/c/e;

    const-string v3, "https"

    invoke-direct {v2, v3, v0, p2}, Lb/a/a/a/e/c/e;-><init>(Ljava/lang/String;Lb/a/a/a/e/c/l;I)V

    invoke-virtual {v1, v2}, Lb/a/a/a/e/c/i;->a(Lb/a/a/a/e/c/e;)Lb/a/a/a/e/c/e;

    return-object v1

    :cond_3
    invoke-static {}, Lb/a/a/a/e/d/i;->getSocketFactory()Lb/a/a/a/e/d/i;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p0, :cond_2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    move-object v0, p1

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/loopj/android/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "&"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "AsyncHttpClient"

    const-string v3, "getUrlWithQueryString encoding URL"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, p1

    goto :goto_1

    :cond_3
    const-string v0, "?"

    goto :goto_2
.end method

.method public static isInputStreamGZIPCompressed(Ljava/io/PushbackInputStream;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v1

    :cond_0
    new-array v3, v5, [B

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    rsub-int/lit8 v4, v2, 0x2

    :try_start_0
    invoke-virtual {p0, v3, v2, v4}, Ljava/io/PushbackInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-gez v4, :cond_1

    invoke-virtual {p0, v3, v1, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto :goto_0

    :cond_1
    add-int/2addr v2, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3, v1, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    aget-byte v2, v3, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, v3, v0

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    const v3, 0x8b1f

    if-ne v3, v2, :cond_3

    :goto_2
    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v3, v1, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    throw v0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lb/a/a/a/k;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/loopj/android/http/RequestParams;->getEntity(Lcom/loopj/android/http/ResponseHandlerInterface;)Lb/a/a/a/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    if-eqz p2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p2, v2, v0, v0, v1}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendFailureMessage(I[Lb/a/a/a/e;[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static silentCloseInputStream(Ljava/io/InputStream;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "AsyncHttpClient"

    const-string v3, "Cannot close input stream"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static silentCloseOutputStream(Ljava/io/OutputStream;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "AsyncHttpClient"

    const-string v3, "Cannot close output stream"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelAllRequests(Z)V
    .locals 3

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/RequestHandle;

    invoke-virtual {v0, p1}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Passed null Context to cancelRequests"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/loopj/android/http/AsyncHttpClient$4;

    invoke-direct {v1, p0, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient$4;-><init>(Lcom/loopj/android/http/AsyncHttpClient;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->cancelRequests(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public cancelRequestsByTAG(Ljava/lang/Object;Z)V
    .locals 4

    if-nez p1, :cond_1

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "cancelRequestsByTAG, passed TAG is null, cannot proceed"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/RequestHandle;

    invoke-virtual {v0}, Lcom/loopj/android/http/RequestHandle;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, p2}, Lcom/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_0
.end method

.method public clearCredentialsProvider()V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v0}, Lb/a/a/a/i/b/k;->E()Lb/a/a/a/b/i;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/b/i;->a()V

    return-void
.end method

.method protected createConnectionManager(Lb/a/a/a/e/c/i;Lb/a/a/a/l/b;)Lb/a/a/a/e/b;
    .locals 1

    new-instance v0, Lb/a/a/a/i/c/a/g;

    invoke-direct {v0, p2, p1}, Lb/a/a/a/i/c/a/g;-><init>(Lb/a/a/a/l/e;Lb/a/a/a/e/c/i;)V

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lb/a/a/a/k;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    new-instance v0, Lcom/loopj/android/http/HttpDelete;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lb/a/a/a/b/c/e;Lb/a/a/a/k;)Lb/a/a/a/b/c/e;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    new-instance v3, Lcom/loopj/android/http/HttpDelete;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/net/URI;)V

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lb/a/a/a/e;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    new-instance v3, Lcom/loopj/android/http/HttpDelete;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lcom/loopj/android/http/HttpDelete;->setHeaders([Lb/a/a/a/e;)V

    :cond_0
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lb/a/a/a/e;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    new-instance v3, Lcom/loopj/android/http/HttpDelete;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/net/URI;)V

    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lcom/loopj/android/http/HttpDelete;->setHeaders([Lb/a/a/a/e;)V

    :cond_0
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 7

    const/4 v4, 0x0

    new-instance v3, Lcom/loopj/android/http/HttpDelete;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p1, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/loopj/android/http/HttpDelete;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    move-object v0, p0

    move-object v5, p3

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lb/a/a/a/k;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    new-instance v0, Lcom/loopj/android/http/HttpGet;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/loopj/android/http/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lb/a/a/a/b/c/e;Lb/a/a/a/k;)Lb/a/a/a/b/c/e;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    new-instance v3, Lcom/loopj/android/http/HttpGet;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/loopj/android/http/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lb/a/a/a/e;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    new-instance v3, Lcom/loopj/android/http/HttpGet;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/loopj/android/http/HttpGet;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lb/a/a/a/b/c/l;->setHeaders([Lb/a/a/a/e;)V

    :cond_0
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    return v0
.end method

.method protected getDefaultThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lb/a/a/a/b/j;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    return-object v0
.end method

.method public getHttpContext()Lb/a/a/a/n/e;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    return-object v0
.end method

.method public getLogInterface()Lcom/loopj/android/http/LogInterface;
    .locals 1

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    return-object v0
.end method

.method public getLoggingLevel()I
    .locals 1

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/LogInterface;->getLoggingLevel()I

    move-result v0

    return v0
.end method

.method public getMaxConnections()I
    .locals 1

    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    return v0
.end method

.method public getResponseTimeout()I
    .locals 1

    iget v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    return v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method protected getURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    new-instance v3, Lb/a/a/a/b/c/g;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lb/a/a/a/b/c/g;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;[Lb/a/a/a/e;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    new-instance v3, Lb/a/a/a/b/c/g;

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lb/a/a/a/b/c/g;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lb/a/a/a/b/c/l;->setHeaders([Lb/a/a/a/e;)V

    :cond_0
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/LogInterface;->isLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public isUrlEncodingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    return v0
.end method

.method protected newAsyncHttpRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/AsyncHttpRequest;
    .locals 1

    new-instance v0, Lcom/loopj/android/http/AsyncHttpRequest;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/loopj/android/http/AsyncHttpRequest;-><init>(Lb/a/a/a/i/b/a;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Lcom/loopj/android/http/ResponseHandlerInterface;)V

    return-object v0
.end method

.method public patch(Landroid/content/Context;Ljava/lang/String;Lb/a/a/a/k;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    new-instance v0, Lb/a/a/a/b/c/h;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lb/a/a/a/b/c/h;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lb/a/a/a/b/c/e;Lb/a/a/a/k;)Lb/a/a/a/b/c/e;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public patch(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 6

    invoke-direct {p0, p3, p4}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lb/a/a/a/k;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->patch(Landroid/content/Context;Ljava/lang/String;Lb/a/a/a/k;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public patch(Landroid/content/Context;Ljava/lang/String;[Lb/a/a/a/e;Lb/a/a/a/k;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    new-instance v0, Lb/a/a/a/b/c/h;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/b/c/h;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lb/a/a/a/b/c/e;Lb/a/a/a/k;)Lb/a/a/a/b/c/e;

    move-result-object v3

    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lb/a/a/a/b/c/e;->setHeaders([Lb/a/a/a/e;)V

    :cond_0
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public patch(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->patch(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public patch(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->patch(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lb/a/a/a/k;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    new-instance v0, Lb/a/a/a/b/c/i;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lb/a/a/a/b/c/i;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lb/a/a/a/b/c/e;Lb/a/a/a/k;)Lb/a/a/a/b/c/e;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 6

    invoke-direct {p0, p3, p4}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lb/a/a/a/k;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lb/a/a/a/k;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lb/a/a/a/e;Lb/a/a/a/k;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    new-instance v0, Lb/a/a/a/b/c/i;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/b/c/i;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lb/a/a/a/b/c/e;Lb/a/a/a/k;)Lb/a/a/a/b/c/e;

    move-result-object v3

    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lb/a/a/a/b/c/e;->setHeaders([Lb/a/a/a/e;)V

    :cond_0
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lb/a/a/a/e;Lcom/loopj/android/http/RequestParams;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    new-instance v3, Lb/a/a/a/b/c/i;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lb/a/a/a/b/c/i;-><init>(Ljava/net/URI;)V

    if-eqz p4, :cond_0

    invoke-direct {p0, p4, p6}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lb/a/a/a/k;

    move-result-object v0

    invoke-virtual {v3, v0}, Lb/a/a/a/b/c/e;->setEntity(Lb/a/a/a/k;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v3, p3}, Lb/a/a/a/b/c/e;->setHeaders([Lb/a/a/a/e;)V

    :cond_1
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lb/a/a/a/k;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    new-instance v0, Lb/a/a/a/b/c/j;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lb/a/a/a/b/c/j;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lb/a/a/a/b/c/e;Lb/a/a/a/k;)Lb/a/a/a/b/c/e;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 6

    invoke-direct {p0, p3, p4}, Lcom/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lb/a/a/a/k;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lb/a/a/a/k;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lb/a/a/a/e;Lb/a/a/a/k;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 7

    new-instance v0, Lb/a/a/a/b/c/j;

    invoke-virtual {p0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->getURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/b/c/j;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lb/a/a/a/b/c/e;Lb/a/a/a/k;)Lb/a/a/a/b/c/e;

    move-result-object v3

    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lb/a/a/a/b/c/e;->setHeaders([Lb/a/a/a/e;)V

    :cond_0
    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/loopj/android/http/AsyncHttpClient;->sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public removeAllHeaders()V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected sendRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/RequestHandle;
    .locals 4

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HttpUriRequest must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ResponseHandler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p5}, Lcom/loopj/android/http/ResponseHandlerInterface;->getUseSynchronousMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Lcom/loopj/android/http/ResponseHandlerInterface;->getUsePoolThread()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Synchronous ResponseHandler used in AsyncHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p4, :cond_3

    instance-of v0, p3, Lb/a/a/a/b/c/e;

    if-eqz v0, :cond_6

    move-object v0, p3

    check-cast v0, Lb/a/a/a/b/c/e;

    invoke-virtual {v0}, Lb/a/a/a/b/c/e;->getEntity()Lb/a/a/a/k;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "Content-Type"

    invoke-interface {p3, v0}, Lb/a/a/a/b/c/l;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Passed contentType will be ignored because HttpEntity sets content type"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-interface {p3}, Lb/a/a/a/b/c/l;->getAllHeaders()[Lb/a/a/a/e;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->setRequestHeaders([Lb/a/a/a/e;)V

    invoke-interface {p3}, Lb/a/a/a/b/c/l;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-interface {p5, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->setRequestURI(Ljava/net/URI;)V

    invoke-virtual/range {p0 .. p6}, Lcom/loopj/android/http/AsyncHttpClient;->newAsyncHttpRequest(Lb/a/a/a/i/b/k;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Ljava/lang/String;Lcom/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/loopj/android/http/AsyncHttpRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    new-instance v1, Lcom/loopj/android/http/RequestHandle;

    invoke-direct {v1, v0}, Lcom/loopj/android/http/RequestHandle;-><init>(Lcom/loopj/android/http/AsyncHttpRequest;)V

    if-eqz p6, :cond_7

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v3, p6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/RequestHandle;

    invoke-virtual {v0}, Lcom/loopj/android/http/RequestHandle;->shouldBeGarbageCollected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_6
    const-string v0, "Content-Type"

    invoke-interface {p3, v0, p4}, Lb/a/a/a/b/c/l;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    return-object v1
.end method

.method public setAuthenticationPreemptive(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    new-instance v1, Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;

    invoke-direct {v1}, Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/i/b/k;->a(Lb/a/a/a/r;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    const-class v1, Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;

    invoke-virtual {v0, v1}, Lb/a/a/a/i/b/k;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/g;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/g;Z)V

    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/g;Z)V
    .locals 1

    new-instance v0, Lb/a/a/a/a/r;

    invoke-direct {v0, p1, p2}, Lb/a/a/a/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setCredentials(Lb/a/a/a/a/g;Lb/a/a/a/a/m;)V

    invoke-virtual {p0, p4}, Lcom/loopj/android/http/AsyncHttpClient;->setAuthenticationPreemptive(Z)V

    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/loopj/android/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/a/g;Z)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 4

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2710

    :cond_0
    iput p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v0}, Lb/a/a/a/i/b/k;->q()Lb/a/a/a/l/e;

    move-result-object v0

    iget v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lb/a/a/a/e/a/a;->a(Lb/a/a/a/l/e;J)V

    iget v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->connectTimeout:I

    invoke-static {v0, v1}, Lb/a/a/a/l/c;->c(Lb/a/a/a/l/e;I)V

    return-void
.end method

.method public setCookieStore(Lb/a/a/a/b/h;)V
    .locals 2

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpContext:Lb/a/a/a/n/e;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCredentials(Lb/a/a/a/a/g;Lb/a/a/a/a/m;)V
    .locals 3

    if-nez p2, :cond_0

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "AsyncHttpClient"

    const-string v2, "Provided credentials are null, not setting"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v0}, Lb/a/a/a/i/b/k;->E()Lb/a/a/a/b/i;

    move-result-object v0

    if-nez p1, :cond_1

    sget-object p1, Lb/a/a/a/a/g;->d:Lb/a/a/a/a/g;

    :cond_1
    invoke-interface {v0, p1, p2}, Lb/a/a/a/b/i;->a(Lb/a/a/a/a/g;Lb/a/a/a/a/m;)V

    goto :goto_0
.end method

.method public setEnableRedirects(Z)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1}, Lcom/loopj/android/http/AsyncHttpClient;->setEnableRedirects(ZZZ)V

    return-void
.end method

.method public setEnableRedirects(ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/AsyncHttpClient;->setEnableRedirects(ZZZ)V

    return-void
.end method

.method public setEnableRedirects(ZZZ)V
    .locals 3

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v0}, Lb/a/a/a/i/b/k;->q()Lb/a/a/a/l/e;

    move-result-object v1

    const-string v2, "http.protocol.reject-relative-redirect"

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lb/a/a/a/l/e;->b(Ljava/lang/String;Z)Lb/a/a/a/l/e;

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v0}, Lb/a/a/a/i/b/k;->q()Lb/a/a/a/l/e;

    move-result-object v0

    const-string v1, "http.protocol.allow-circular-redirects"

    invoke-interface {v0, v1, p3}, Lb/a/a/a/l/e;->b(Ljava/lang/String;Z)Lb/a/a/a/l/e;

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    new-instance v1, Lcom/loopj/android/http/MyRedirectHandler;

    invoke-direct {v1, p1}, Lcom/loopj/android/http/MyRedirectHandler;-><init>(Z)V

    invoke-virtual {v0, v1}, Lb/a/a/a/i/b/k;->a(Lb/a/a/a/b/o;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogInterface(Lcom/loopj/android/http/LogInterface;)V
    .locals 0

    if-eqz p1, :cond_0

    sput-object p1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    :cond_0
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v0, p1}, Lcom/loopj/android/http/LogInterface;->setLoggingEnabled(Z)V

    return-void
.end method

.method public setLoggingLevel(I)V
    .locals 1

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    invoke-interface {v0, p1}, Lcom/loopj/android/http/LogInterface;->setLoggingLevel(I)V

    return-void
.end method

.method public setMaxConnections(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/16 p1, 0xa

    :cond_0
    iput p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v0}, Lb/a/a/a/i/b/k;->q()Lb/a/a/a/l/e;

    move-result-object v0

    new-instance v1, Lb/a/a/a/e/a/c;

    iget v2, p0, Lcom/loopj/android/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v1, v2}, Lb/a/a/a/e/a/c;-><init>(I)V

    invoke-static {v0, v1}, Lb/a/a/a/e/a/a;->a(Lb/a/a/a/l/e;Lb/a/a/a/e/a/b;)V

    return-void
.end method

.method public setMaxRetriesAndTimeout(II)V
    .locals 2

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    new-instance v1, Lcom/loopj/android/http/RetryHandler;

    invoke-direct {v1, p1, p2}, Lcom/loopj/android/http/RetryHandler;-><init>(II)V

    invoke-virtual {v0, v1}, Lb/a/a/a/i/b/k;->a(Lb/a/a/a/b/k;)V

    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lb/a/a/a/n;

    invoke-direct {v0, p1, p2}, Lb/a/a/a/n;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v1}, Lb/a/a/a/i/b/k;->q()Lb/a/a/a/l/e;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/a/l/e;

    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v0}, Lb/a/a/a/i/b/k;->E()Lb/a/a/a/b/i;

    move-result-object v0

    new-instance v1, Lb/a/a/a/a/g;

    invoke-direct {v1, p1, p2}, Lb/a/a/a/a/g;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lb/a/a/a/a/r;

    invoke-direct {v2, p3, p4}, Lb/a/a/a/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lb/a/a/a/b/i;->a(Lb/a/a/a/a/g;Lb/a/a/a/a/m;)V

    new-instance v0, Lb/a/a/a/n;

    invoke-direct {v0, p1, p2}, Lb/a/a/a/n;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v1}, Lb/a/a/a/i/b/k;->q()Lb/a/a/a/l/e;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/a/l/e;

    return-void
.end method

.method public setRedirectHandler(Lb/a/a/a/b/o;)V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v0, p1}, Lb/a/a/a/i/b/k;->a(Lb/a/a/a/b/o;)V

    return-void
.end method

.method public setResponseTimeout(I)V
    .locals 2

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2710

    :cond_0
    iput p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v0}, Lb/a/a/a/i/b/k;->q()Lb/a/a/a/l/e;

    move-result-object v0

    iget v1, p0, Lcom/loopj/android/http/AsyncHttpClient;->responseTimeout:I

    invoke-static {v0, v1}, Lb/a/a/a/l/c;->a(Lb/a/a/a/l/e;I)V

    return-void
.end method

.method public setSSLSocketFactory(Lb/a/a/a/e/d/i;)V
    .locals 4

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v0}, Lb/a/a/a/i/b/k;->r()Lb/a/a/a/e/b;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/e/b;->a()Lb/a/a/a/e/c/i;

    move-result-object v0

    new-instance v1, Lb/a/a/a/e/c/e;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lb/a/a/a/e/c/e;-><init>(Ljava/lang/String;Lb/a/a/a/e/c/l;I)V

    invoke-virtual {v0, v1}, Lb/a/a/a/e/c/i;->a(Lb/a/a/a/e/c/e;)Lb/a/a/a/e/c/e;

    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x2710

    :cond_0
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->setConnectTimeout(I)V

    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpClient;->setResponseTimeout(I)V

    return-void
.end method

.method public setURLEncodingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpClient;->httpClient:Lb/a/a/a/i/b/k;

    invoke-virtual {v0}, Lb/a/a/a/i/b/k;->q()Lb/a/a/a/l/e;

    move-result-object v0

    invoke-static {v0, p1}, Lb/a/a/a/l/f;->b(Lb/a/a/a/l/e;Ljava/lang/String;)V

    return-void
.end method
