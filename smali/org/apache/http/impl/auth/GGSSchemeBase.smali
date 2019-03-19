.class public abstract Lorg/apache/http/impl/auth/GGSSchemeBase;
.super Lorg/apache/http/impl/auth/AuthSchemeBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/auth/GGSSchemeBase$1;,
        Lorg/apache/http/impl/auth/GGSSchemeBase$State;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final base64codec:Lorg/apache/commons/codec/binary/Base64;

.field private final log:Lorg/apache/commons/logging/Log;

.field private state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

.field private final stripPort:Z

.field private token:[B


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/GGSSchemeBase;-><init>(Z)V

    return-void
.end method

.method constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/binary/Base64;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->base64codec:Lorg/apache/commons/codec/binary/Base64;

    iput-boolean p1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->stripPort:Z

    sget-object v0, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->UNINITIATED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    iput-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/http/impl/auth/GGSSchemeBase;->authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/Header;
    .locals 4

    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/http/impl/auth/GGSSchemeBase$1;->$SwitchMap$org$apache$http$impl$auth$GGSSchemeBase$State:[I

    iget-object v1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    invoke-virtual {v1}, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/apache/http/auth/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/GGSSchemeBase;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " authentication has not been initiated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lorg/apache/http/auth/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/GGSSchemeBase;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " authentication has failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    :try_start_0
    const-string v0, "http.route"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/routing/HttpRoute;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/auth/AuthenticationException;

    const-string v1, "Connection route is not available"

    invoke-direct {v0, v1}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->FAILED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    iput-object v1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    :cond_0
    new-instance v1, Lorg/apache/http/auth/InvalidCredentialsException;

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/GGSSchemeBase;->isProxy()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->stripPort:Z

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->token:[B

    invoke-virtual {p0, v1, v0}, Lorg/apache/http/impl/auth/GGSSchemeBase;->generateToken([BLjava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->token:[B

    sget-object v0, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->TOKEN_GENERATED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    iput-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;
    :try_end_1
    .catch Lorg/ietf/jgss/GSSException; {:try_start_1 .. :try_end_1} :catch_0

    :pswitch_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->base64codec:Lorg/apache/commons/codec/binary/Base64;

    iget-object v2, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->token:[B

    invoke-virtual {v1, v2}, Lorg/apache/commons/codec/binary/Base64;->encode([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending response \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' back to the auth server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/http/impl/auth/GGSSchemeBase;->isProxy()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Proxy-Authorization"

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :goto_2
    const-string v2, ": Negotiate "

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v0, v1}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object v0

    :cond_4
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;
    :try_end_2
    .catch Lorg/ietf/jgss/GSSException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_7

    new-instance v1, Lorg/apache/http/auth/InvalidCredentialsException;

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_7
    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_8

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_8

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMajor()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_9

    :cond_8
    new-instance v1, Lorg/apache/http/auth/AuthenticationException;

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    new-instance v1, Lorg/apache/http/auth/AuthenticationException;

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const-string v2, "Authorization"

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected generateGSSToken([BLorg/ietf/jgss/Oid;Ljava/lang/String;)[B
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-array p1, v3, [B

    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/GGSSchemeBase;->getManager()Lorg/ietf/jgss/GSSManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/ietf/jgss/GSSName;->NT_HOSTBASED_SERVICE:Lorg/ietf/jgss/Oid;

    invoke-virtual {v0, v1, v2}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v1

    invoke-interface {v1, p2}, Lorg/ietf/jgss/GSSName;->canonicalize(Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, v3}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    invoke-interface {v0, v4}, Lorg/ietf/jgss/GSSContext;->requestCredDeleg(Z)V

    array-length v1, p1

    invoke-interface {v0, p1, v3, v1}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract generateToken([BLjava/lang/String;)[B
.end method

.method protected getManager()Lorg/ietf/jgss/GSSManager;
    .locals 1

    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    sget-object v1, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->TOKEN_GENERATED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    sget-object v1, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->FAILED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 4

    invoke-virtual {p1, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received challenge \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from the auth server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    sget-object v2, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->UNINITIATED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->token:[B

    sget-object v0, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    iput-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Authentication already attempted"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/http/impl/auth/GGSSchemeBase$State;->FAILED:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    iput-object v0, p0, Lorg/apache/http/impl/auth/GGSSchemeBase;->state:Lorg/apache/http/impl/auth/GGSSchemeBase$State;

    goto :goto_0
.end method
