.class public Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/conn/HttpConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/conn/HttpConnectionFactory",
        "<",
        "Lorg/apache/http/conn/routing/HttpRoute;",
        "Lorg/apache/http/conn/ManagedHttpClientConnection;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

.field public static final INSTANCE:Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;


# instance fields
.field private final headerlog:Lorg/apache/commons/logging/Log;

.field private final log:Lorg/apache/commons/logging/Log;

.field private final requestWriterFactory:Lorg/apache/http/io/HttpMessageWriterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/io/HttpMessageWriterFactory",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final responseParserFactory:Lorg/apache/http/io/HttpMessageParserFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final wirelog:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->INSTANCE:Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;-><init>(Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/HttpMessageParserFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;-><init>(Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/io/HttpMessageWriterFactory",
            "<",
            "Lorg/apache/http/HttpRequest;",
            ">;",
            "Lorg/apache/http/io/HttpMessageParserFactory",
            "<",
            "Lorg/apache/http/HttpResponse;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lorg/apache/http/impl/conn/DefaultManagedHttpClientConnection;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->log:Lorg/apache/commons/logging/Log;

    const-string v0, "org.apache.http.headers"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->headerlog:Lorg/apache/commons/logging/Log;

    const-string v0, "org.apache.http.wire"

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->wirelog:Lorg/apache/commons/logging/Log;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->requestWriterFactory:Lorg/apache/http/io/HttpMessageWriterFactory;

    if-eqz p2, :cond_1

    :goto_1
    iput-object p2, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->responseParserFactory:Lorg/apache/http/io/HttpMessageParserFactory;

    return-void

    :cond_0
    sget-object p1, Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;->INSTANCE:Lorg/apache/http/impl/io/DefaultHttpRequestWriterFactory;

    goto :goto_0

    :cond_1
    sget-object p2, Lorg/apache/http/impl/conn/DefaultHttpResponseParserFactory;->INSTANCE:Lorg/apache/http/impl/conn/DefaultHttpResponseParserFactory;

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lorg/apache/http/config/ConnectionConfig;)Lorg/apache/http/HttpConnection;
    .locals 1

    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->create(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/config/ConnectionConfig;)Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    return-object v0
.end method

.method public create(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/config/ConnectionConfig;)Lorg/apache/http/conn/ManagedHttpClientConnection;
    .locals 14

    if-eqz p2, :cond_1

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/config/ConnectionConfig;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/config/ConnectionConfig;->getMalformedInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/config/ConnectionConfig;->getUnmappableInputAction()Ljava/nio/charset/CodingErrorAction;

    move-result-object v1

    :goto_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v7, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v8, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http-outgoing-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;

    iget-object v2, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->log:Lorg/apache/commons/logging/Log;

    iget-object v3, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->headerlog:Lorg/apache/commons/logging/Log;

    iget-object v4, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->wirelog:Lorg/apache/commons/logging/Log;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/config/ConnectionConfig;->getBufferSize()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/config/ConnectionConfig;->getFragmentSizeHint()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/config/ConnectionConfig;->getMessageConstraints()Lorg/apache/http/config/MessageConstraints;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->requestWriterFactory:Lorg/apache/http/io/HttpMessageWriterFactory;

    iget-object v13, p0, Lorg/apache/http/impl/conn/ManagedHttpClientConnectionFactory;->responseParserFactory:Lorg/apache/http/io/HttpMessageParserFactory;

    invoke-direct/range {v0 .. v13}, Lorg/apache/http/impl/conn/LoggingManagedHttpClientConnection;-><init>(Ljava/lang/String;Lorg/apache/commons/logging/Log;Lorg/apache/commons/logging/Log;Lorg/apache/commons/logging/Log;IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/io/HttpMessageWriterFactory;Lorg/apache/http/io/HttpMessageParserFactory;)V

    return-object v0

    :cond_1
    sget-object p2, Lorg/apache/http/config/ConnectionConfig;->DEFAULT:Lorg/apache/http/config/ConnectionConfig;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_1

    :cond_3
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_2
.end method
