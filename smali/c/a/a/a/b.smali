.class public Lc/a/a/a/b;
.super Lc/a/a/a/a;


# instance fields
.field a:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lc/a/a/a/a;-><init>()V

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lc/a/a/a/b;->a:Ljavax/crypto/Cipher;

    return-void
.end method


# virtual methods
.method public a(ILjava/security/Key;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc/a/a/a/b;->a(ILjava/security/Key;)V

    return-void
.end method

.method public a(ILjavax/crypto/SecretKey;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc/a/a/a/b;->a(ILjavax/crypto/SecretKey;)V

    return-void
.end method

.method public a(ILjavax/crypto/spec/SecretKeySpec;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc/a/a/a/b;->a(ILjavax/crypto/spec/SecretKeySpec;)V

    return-void
.end method

.method public a(ILjavax/crypto/spec/SecretKeySpec;Ljavax/crypto/spec/IvParameterSpec;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lc/a/a/a/b;->a(ILjavax/crypto/spec/SecretKeySpec;Ljavax/crypto/spec/IvParameterSpec;)V

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Lc/a/a/a/b;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public a([BII[B)V
    .locals 1

    iget-object v0, p0, Lc/a/a/a/b;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    return-void
.end method

.method public a([B)[B
    .locals 1

    iget-object v0, p0, Lc/a/a/a/b;->a:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method
