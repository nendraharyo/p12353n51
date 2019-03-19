.class public Lcom/loopj/android/http/MySSLSocketFactory;
.super Lb/a/a/a/e/d/i;


# instance fields
.field final sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lb/a/a/a/e/d/i;-><init>(Ljava/security/KeyStore;)V

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    new-instance v0, Lcom/loopj/android/http/MySSLSocketFactory$1;

    invoke-direct {v0, p0}, Lcom/loopj/android/http/MySSLSocketFactory$1;-><init>(Lcom/loopj/android/http/MySSLSocketFactory;)V

    iget-object v1, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public static getFixedSocketFactory()Lb/a/a/a/e/d/i;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/loopj/android/http/MySSLSocketFactory;

    invoke-static {}, Lcom/loopj/android/http/MySSLSocketFactory;->getKeystore()Ljava/security/KeyStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loopj/android/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    sget-object v1, Lb/a/a/a/e/d/i;->ALLOW_ALL_HOSTNAME_VERIFIER:Lb/a/a/a/e/d/l;

    invoke-virtual {v0, v1}, Lb/a/a/a/e/d/i;->setHostnameVerifier(Lb/a/a/a/e/d/l;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Lb/a/a/a/e/d/i;->getSocketFactory()Lb/a/a/a/e/d/i;

    move-result-object v0

    goto :goto_0
.end method

.method public static getKeystore()Ljava/security/KeyStore;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static getKeystoreOfCA(Ljava/io/InputStream;)Ljava/security/KeyStore;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    :try_start_3
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v2, "ca"

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_2
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method public static getNewHttpClient(Ljava/security/KeyStore;)Lb/a/a/a/i/b/k;
    .locals 6

    :try_start_0
    new-instance v0, Lcom/loopj/android/http/MySSLSocketFactory;

    invoke-direct {v0, p0}, Lcom/loopj/android/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    new-instance v1, Lb/a/a/a/e/c/i;

    invoke-direct {v1}, Lb/a/a/a/e/c/i;-><init>()V

    new-instance v2, Lb/a/a/a/e/c/e;

    const-string v3, "http"

    invoke-static {}, Lb/a/a/a/e/c/d;->a()Lb/a/a/a/e/c/d;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lb/a/a/a/e/c/e;-><init>(Ljava/lang/String;Lb/a/a/a/e/c/l;I)V

    invoke-virtual {v1, v2}, Lb/a/a/a/e/c/i;->a(Lb/a/a/a/e/c/e;)Lb/a/a/a/e/c/e;

    new-instance v2, Lb/a/a/a/e/c/e;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lb/a/a/a/e/c/e;-><init>(Ljava/lang/String;Lb/a/a/a/e/c/l;I)V

    invoke-virtual {v1, v2}, Lb/a/a/a/e/c/i;->a(Lb/a/a/a/e/c/e;)Lb/a/a/a/e/c/e;

    new-instance v2, Lb/a/a/a/l/b;

    invoke-direct {v2}, Lb/a/a/a/l/b;-><init>()V

    sget-object v0, Lb/a/a/a/v;->c:Lb/a/a/a/v;

    invoke-static {v2, v0}, Lb/a/a/a/l/f;->a(Lb/a/a/a/l/e;Lb/a/a/a/ac;)V

    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Lb/a/a/a/l/f;->a(Lb/a/a/a/l/e;Ljava/lang/String;)V

    new-instance v3, Lb/a/a/a/i/c/a/g;

    invoke-direct {v3, v2, v1}, Lb/a/a/a/i/c/a/g;-><init>(Lb/a/a/a/l/e;Lb/a/a/a/e/c/i;)V

    new-instance v0, Lb/a/a/a/i/b/k;

    invoke-direct {v0, v3, v2}, Lb/a/a/a/i/b/k;-><init>(Lb/a/a/a/e/b;Lb/a/a/a/l/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lb/a/a/a/i/b/k;

    invoke-direct {v0}, Lb/a/a/a/i/b/k;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public fixHttpsURLConnection()V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method
