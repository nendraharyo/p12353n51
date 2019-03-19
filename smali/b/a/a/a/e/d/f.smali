.class public Lb/a/a/a/e/d/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/a/e/d/f$a;,
        Lb/a/a/a/e/d/f$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljavax/net/ssl/TrustManager;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/a/a/a/e/d/f;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/a/a/a/e/d/f;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lb/a/a/a/e/d/f;
    .locals 0

    iput-object p1, p0, Lb/a/a/a/e/d/f;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/security/KeyStore;)Lb/a/a/a/e/d/f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;Lb/a/a/a/e/d/k;)Lb/a/a/a/e/d/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/security/KeyStore;Lb/a/a/a/e/d/k;)Lb/a/a/a/e/d/f;
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    aget-object v0, v3, v1

    instance-of v4, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v4, :cond_0

    new-instance v4, Lb/a/a/a/e/d/f$b;

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v4, v0, p2}, Lb/a/a/a/e/d/f$b;-><init>(Ljavax/net/ssl/X509TrustManager;Lb/a/a/a/e/d/k;)V

    aput-object v4, v3, v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    array-length v0, v3

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, v3, v2

    iget-object v4, p0, Lb/a/a/a/e/d/f;->c:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public a(Ljava/security/KeyStore;[C)Lb/a/a/a/e/d/f;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lb/a/a/a/e/d/f;->a(Ljava/security/KeyStore;[CLb/a/a/a/e/d/e;)Lb/a/a/a/e/d/f;

    return-object p0
.end method

.method public a(Ljava/security/KeyStore;[CLb/a/a/a/e/d/e;)Lb/a/a/a/e/d/f;
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz p3, :cond_1

    move v1, v2

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    aget-object v0, v3, v1

    instance-of v4, v0, Ljavax/net/ssl/X509KeyManager;

    if-eqz v4, :cond_0

    new-instance v4, Lb/a/a/a/e/d/f$a;

    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    invoke-direct {v4, v0, p3}, Lb/a/a/a/e/d/f$a;-><init>(Ljavax/net/ssl/X509KeyManager;Lb/a/a/a/e/d/e;)V

    aput-object v4, v3, v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    array-length v0, v3

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, v3, v2

    iget-object v4, p0, Lb/a/a/a/e/d/f;->b:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public a(Ljava/security/SecureRandom;)Lb/a/a/a/e/d/f;
    .locals 0

    iput-object p1, p0, Lb/a/a/a/e/d/f;->d:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public a()Ljavax/net/ssl/SSLContext;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lb/a/a/a/e/d/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/e/d/f;->a:Ljava/lang/String;

    :goto_0
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    iget-object v0, p0, Lb/a/a/a/e/d/f;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/e/d/f;->b:Ljava/util/Set;

    iget-object v1, p0, Lb/a/a/a/e/d/f;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/net/ssl/KeyManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/KeyManager;

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lb/a/a/a/e/d/f;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/e/d/f;->c:Ljava/util/Set;

    iget-object v2, p0, Lb/a/a/a/e/d/f;->c:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/TrustManager;

    :goto_2
    iget-object v2, p0, Lb/a/a/a/e/d/f;->d:Ljava/security/SecureRandom;

    invoke-virtual {v3, v1, v0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-object v3

    :cond_0
    const-string v0, "TLS"

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_2
.end method
