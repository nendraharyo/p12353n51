.class public Lc/a/a/a/c;
.super Lc/a/a/a/a;


# instance fields
.field private a:Lorg/bouncycastle/crypto/engines/RC4Engine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/a/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/security/Key;)V
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Lorg/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    iput-object v1, p0, Lc/a/a/a/c;->a:Lorg/bouncycastle/crypto/engines/RC4Engine;

    iget-object v1, p0, Lc/a/a/a/c;->a:Lorg/bouncycastle/crypto/engines/RC4Engine;

    if-ne p1, v0, :cond_0

    :goto_0
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/engines/RC4Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjavax/crypto/SecretKey;)V
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Lorg/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    iput-object v1, p0, Lc/a/a/a/c;->a:Lorg/bouncycastle/crypto/engines/RC4Engine;

    iget-object v1, p0, Lc/a/a/a/c;->a:Lorg/bouncycastle/crypto/engines/RC4Engine;

    if-ne p1, v0, :cond_0

    :goto_0
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/engines/RC4Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjavax/crypto/spec/SecretKeySpec;)V
    .locals 4

    const/4 v0, 0x1

    new-instance v1, Lorg/bouncycastle/crypto/engines/RC4Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/RC4Engine;-><init>()V

    iput-object v1, p0, Lc/a/a/a/c;->a:Lorg/bouncycastle/crypto/engines/RC4Engine;

    iget-object v1, p0, Lc/a/a/a/c;->a:Lorg/bouncycastle/crypto/engines/RC4Engine;

    if-ne p1, v0, :cond_0

    :goto_0
    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p2}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/engines/RC4Engine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ILjavax/crypto/spec/SecretKeySpec;Ljavax/crypto/spec/IvParameterSpec;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not yet supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2

    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lc/a/a/a/c;->a:Lorg/bouncycastle/crypto/engines/RC4Engine;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/RC4Engine;->returnByte(B)B

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public a([BII[B)V
    .locals 6

    iget-object v0, p0, Lc/a/a/a/c;->a:Lorg/bouncycastle/crypto/engines/RC4Engine;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/RC4Engine;->processBytes([BII[BI)V

    return-void
.end method

.method public a([B)[B
    .locals 6

    const/4 v2, 0x0

    array-length v0, p1

    new-array v4, v0, [B

    iget-object v0, p0, Lc/a/a/a/c;->a:Lorg/bouncycastle/crypto/engines/RC4Engine;

    array-length v3, p1

    move-object v1, p1

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/RC4Engine;->processBytes([BII[BI)V

    return-object v4
.end method
