.class public abstract Lc/a/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lc/a/a/a/a;
    .locals 1

    const-string v0, "RC4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lc/a/a/a/c;

    invoke-direct {v0}, Lc/a/a/a/c;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc/a/a/a/b;

    invoke-direct {v0, p0}, Lc/a/a/a/b;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(ILjava/security/Key;)V
.end method

.method public abstract a(ILjavax/crypto/SecretKey;)V
.end method

.method public abstract a(ILjavax/crypto/spec/SecretKeySpec;)V
.end method

.method public abstract a(ILjavax/crypto/spec/SecretKeySpec;Ljavax/crypto/spec/IvParameterSpec;)V
.end method

.method public abstract a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract a([BII[B)V
.end method

.method public abstract a([B)[B
.end method
