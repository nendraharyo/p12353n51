.class public Lb/a/a/a/e/d/i;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/e/c/b;
.implements Lb/a/a/a/e/c/c;
.implements Lb/a/a/a/e/c/f;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final STRICT_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

.field public static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private volatile hostnameVerifier:Lb/a/a/a/e/d/l;

.field private final nameResolver:Lb/a/a/a/e/c/a;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final supportedCipherSuites:[Ljava/lang/String;

.field private final supportedProtocols:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/a/e/d/b;

    invoke-direct {v0}, Lb/a/a/a/e/d/b;-><init>()V

    sput-object v0, Lb/a/a/a/e/d/i;->ALLOW_ALL_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    new-instance v0, Lb/a/a/a/e/d/c;

    invoke-direct {v0}, Lb/a/a/a/e/d/c;-><init>()V

    sput-object v0, Lb/a/a/a/e/d/i;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    new-instance v0, Lb/a/a/a/e/d/j;

    invoke-direct {v0}, Lb/a/a/a/e/d/j;-><init>()V

    sput-object v0, Lb/a/a/a/e/d/i;->STRICT_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/e/d/k;)V
    .locals 2

    invoke-static {}, Lb/a/a/a/e/d/g;->b()Lb/a/a/a/e/d/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;Lb/a/a/a/e/d/k;)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e/d/f;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lb/a/a/a/e/d/i;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    invoke-direct {p0, v0, v1}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLContext;Lb/a/a/a/e/d/l;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/e/d/k;Lb/a/a/a/e/d/l;)V
    .locals 2

    invoke-static {}, Lb/a/a/a/e/d/g;->b()Lb/a/a/a/e/d/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;Lb/a/a/a/e/d/k;)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e/d/f;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLContext;Lb/a/a/a/e/d/l;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lb/a/a/a/e/c/a;)V
    .locals 2

    invoke-static {}, Lb/a/a/a/e/d/g;->b()Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/e/d/f;->a(Ljava/lang/String;)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0, p5}, Lb/a/a/a/e/d/f;->a(Ljava/security/SecureRandom;)Lb/a/a/a/e/d/f;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p2, v0}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;[C)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0, p4}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e/d/f;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLContext;Lb/a/a/a/e/c/a;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lb/a/a/a/e/d/k;Lb/a/a/a/e/d/l;)V
    .locals 2

    invoke-static {}, Lb/a/a/a/e/d/g;->b()Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/e/d/f;->a(Ljava/lang/String;)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0, p5}, Lb/a/a/a/e/d/f;->a(Ljava/security/SecureRandom;)Lb/a/a/a/e/d/f;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p2, v0}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;[C)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0, p4, p6}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;Lb/a/a/a/e/d/k;)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e/d/f;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0, p7}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLContext;Lb/a/a/a/e/d/l;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lb/a/a/a/e/d/l;)V
    .locals 2

    invoke-static {}, Lb/a/a/a/e/d/g;->b()Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/e/d/f;->a(Ljava/lang/String;)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0, p5}, Lb/a/a/a/e/d/f;->a(Ljava/security/SecureRandom;)Lb/a/a/a/e/d/f;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p2, v0}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;[C)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0, p4}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e/d/f;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-direct {p0, v0, p6}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLContext;Lb/a/a/a/e/d/l;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 2

    invoke-static {}, Lb/a/a/a/e/d/g;->b()Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e/d/f;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lb/a/a/a/e/d/i;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    invoke-direct {p0, v0, v1}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLContext;Lb/a/a/a/e/d/l;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lb/a/a/a/e/d/g;->b()Lb/a/a/a/e/d/f;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p1, v0}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;[C)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e/d/f;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lb/a/a/a/e/d/i;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    invoke-direct {p0, v0, v1}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLContext;Lb/a/a/a/e/d/l;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 2

    invoke-static {}, Lb/a/a/a/e/d/g;->b()Lb/a/a/a/e/d/f;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, p1, v0}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;[C)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;)Lb/a/a/a/e/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e/d/f;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    sget-object v1, Lb/a/a/a/e/d/i;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    invoke-direct {p0, v0, v1}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLContext;Lb/a/a/a/e/d/l;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1

    sget-object v0, Lb/a/a/a/e/d/i;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    invoke-direct {p0, p1, v0}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLContext;Lb/a/a/a/e/d/l;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lb/a/a/a/e/c/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/e/d/i;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    sget-object v0, Lb/a/a/a/e/d/i;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    iput-object v0, p0, Lb/a/a/a/e/d/i;->hostnameVerifier:Lb/a/a/a/e/d/l;

    iput-object p2, p0, Lb/a/a/a/e/d/i;->nameResolver:Lb/a/a/a/e/c/a;

    iput-object v1, p0, Lb/a/a/a/e/d/i;->supportedProtocols:[Ljava/lang/String;

    iput-object v1, p0, Lb/a/a/a/e/d/i;->supportedCipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Lb/a/a/a/e/d/l;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "SSL context"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1, p2}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lb/a/a/a/e/d/l;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Lb/a/a/a/e/d/l;)V
    .locals 1

    const-string v0, "SSL context"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lb/a/a/a/e/d/l;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lb/a/a/a/e/d/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lb/a/a/a/e/d/l;)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lb/a/a/a/e/d/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SSL socket factory"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lb/a/a/a/e/d/i;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object p2, p0, Lb/a/a/a/e/d/i;->supportedProtocols:[Ljava/lang/String;

    iput-object p3, p0, Lb/a/a/a/e/d/i;->supportedCipherSuites:[Ljava/lang/String;

    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lb/a/a/a/e/d/i;->hostnameVerifier:Lb/a/a/a/e/d/l;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/e/d/i;->nameResolver:Lb/a/a/a/e/c/a;

    return-void

    :cond_0
    sget-object p4, Lb/a/a/a/e/d/i;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    goto :goto_0
.end method

.method public static getSocketFactory()Lb/a/a/a/e/d/i;
    .locals 3

    new-instance v0, Lb/a/a/a/e/d/i;

    invoke-static {}, Lb/a/a/a/e/d/g;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sget-object v2, Lb/a/a/a/e/d/i;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    invoke-direct {v0, v1, v2}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLContext;Lb/a/a/a/e/d/l;)V

    return-object v0
.end method

.method public static getSystemSocketFactory()Lb/a/a/a/e/d/i;
    .locals 5

    new-instance v1, Lb/a/a/a/e/d/i;

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    const-string v2, "https.protocols"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/a/e/d/i;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "https.cipherSuites"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lb/a/a/a/e/d/i;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lb/a/a/a/e/d/i;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    invoke-direct {v1, v0, v2, v3, v4}, Lb/a/a/a/e/d/i;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Lb/a/a/a/e/d/l;)V

    return-object v1
.end method

.method private internalPrepareSocket(Ljavax/net/ssl/SSLSocket;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/d/i;->supportedProtocols:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/e/d/i;->supportedProtocols:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lb/a/a/a/e/d/i;->supportedCipherSuites:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/e/d/i;->supportedCipherSuites:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lb/a/a/a/e/d/i;->prepareSocket(Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lb/a/a/a/o/h;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, " *, *"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/e/d/i;->hostnameVerifier:Lb/a/a/a/e/d/l;

    invoke-interface {v0, p2, p1}, Lb/a/a/a/e/d/l;->a(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public connectSocket(ILjava/net/Socket;Lb/a/a/a/n;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lb/a/a/a/n/e;)Ljava/net/Socket;
    .locals 3

    const-string v0, "HTTP host"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Remote address"

    invoke-static {p4, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    move-object v1, p2

    :goto_0
    if-eqz p5, :cond_0

    invoke-virtual {v1, p5}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    :cond_0
    :try_start_0
    invoke-virtual {v1, p4, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of v0, v1, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-virtual {p3}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lb/a/a/a/e/d/i;->verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {p0, p6}, Lb/a/a/a/e/d/i;->createSocket(Lb/a/a/a/n/e;)Ljava/net/Socket;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    throw v0

    :cond_2
    invoke-virtual {p3}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2, p6}, Lb/a/a/a/e/d/i;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILb/a/a/a/n/e;)Ljava/net/Socket;

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILb/a/a/a/l/e;)Ljava/net/Socket;
    .locals 4

    iget-object v0, p0, Lb/a/a/a/e/d/i;->nameResolver:Lb/a/a/a/e/c/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/e/d/i;->nameResolver:Lb/a/a/a/e/c/a;

    invoke-interface {v0, p2}, Lb/a/a/a/e/c/a;->a(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    if-nez p4, :cond_0

    if-lez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    if-lez p5, :cond_3

    :goto_1
    invoke-direct {v0, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :cond_1
    new-instance v2, Lb/a/a/a/e/m;

    new-instance v3, Lb/a/a/a/n;

    invoke-direct {v3, p2, p3}, Lb/a/a/a/n;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v1, p3}, Lb/a/a/a/e/m;-><init>(Lb/a/a/a/n;Ljava/net/InetAddress;I)V

    invoke-virtual {p0, p1, v2, v0, p6}, Lb/a/a/a/e/d/i;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lb/a/a/a/l/e;)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    const/4 p5, 0x0

    goto :goto_1
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lb/a/a/a/l/e;)Ljava/net/Socket;
    .locals 7

    const-string v0, "Remote address"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP parameters"

    invoke-static {p4, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p2, Lb/a/a/a/e/m;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lb/a/a/a/e/m;

    invoke-virtual {v0}, Lb/a/a/a/e/m;->a()Lb/a/a/a/n;

    move-result-object v3

    :goto_0
    invoke-static {p4}, Lb/a/a/a/l/c;->a(Lb/a/a/a/l/e;)I

    move-result v0

    invoke-static {p4}, Lb/a/a/a/l/c;->e(Lb/a/a/a/l/e;)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lb/a/a/a/e/d/i;->connectSocket(ILjava/net/Socket;Lb/a/a/a/n;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lb/a/a/a/n/e;)Ljava/net/Socket;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v3, Lb/a/a/a/n;

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    const-string v2, "https"

    invoke-direct {v3, v0, v1, v2}, Lb/a/a/a/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILb/a/a/a/l/e;)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lb/a/a/a/n/e;

    invoke-virtual {p0, p1, p2, p3, v0}, Lb/a/a/a/e/d/i;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILb/a/a/a/n/e;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILb/a/a/a/n/e;)Ljava/net/Socket;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/e/d/i;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, v0}, Lb/a/a/a/e/d/i;->internalPrepareSocket(Ljavax/net/ssl/SSLSocket;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    invoke-direct {p0, v0, p2}, Lb/a/a/a/e/d/i;->verifyHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    return-object v0
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lb/a/a/a/n/e;

    invoke-virtual {p0, p1, p2, p3, v0}, Lb/a/a/a/e/d/i;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILb/a/a/a/n/e;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lb/a/a/a/n/e;

    invoke-virtual {p0, v0}, Lb/a/a/a/e/d/i;->createSocket(Lb/a/a/a/n/e;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Lb/a/a/a/l/e;)Ljava/net/Socket;
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Lb/a/a/a/n/e;

    invoke-virtual {p0, v0}, Lb/a/a/a/e/d/i;->createSocket(Lb/a/a/a/n/e;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Lb/a/a/a/n/e;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/d/i;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-direct {p0, v0}, Lb/a/a/a/e/d/i;->internalPrepareSocket(Ljavax/net/ssl/SSLSocket;)V

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/a/a/a/e/d/i;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Lb/a/a/a/e/d/l;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/d/i;->hostnameVerifier:Lb/a/a/a/e/d/l;

    return-object v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 3

    const/4 v1, 0x1

    const-string v0, "Socket"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    const-string v2, "Socket not created by this factory"

    invoke-static {v0, v2}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Socket is closed"

    invoke-static {v0, v2}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareSocket(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method

.method public setHostnameVerifier(Lb/a/a/a/e/d/l;)V
    .locals 1

    const-string v0, "Hostname verifier"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/e/d/i;->hostnameVerifier:Lb/a/a/a/e/d/l;

    return-void
.end method
