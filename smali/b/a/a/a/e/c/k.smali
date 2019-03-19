.class Lb/a/a/a/e/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/e/c/j;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lb/a/a/a/e/c/l;


# direct methods
.method constructor <init>(Lb/a/a/a/e/c/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/e/c/k;->a:Lb/a/a/a/e/c/l;

    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lb/a/a/a/l/e;)Ljava/net/Socket;
    .locals 7

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    :cond_0
    iget-object v0, p0, Lb/a/a/a/e/c/k;->a:Lb/a/a/a/e/c/l;

    move-object v1, p1

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lb/a/a/a/e/c/l;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILb/a/a/a/l/e;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Lb/a/a/a/l/e;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/c/k;->a:Lb/a/a/a/e/c/l;

    invoke-interface {v0}, Lb/a/a/a/e/c/l;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lb/a/a/a/e/c/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/e/c/k;->a:Lb/a/a/a/e/c/l;

    check-cast p1, Lb/a/a/a/e/c/k;

    iget-object v1, p1, Lb/a/a/a/e/c/k;->a:Lb/a/a/a/e/c/l;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/a/a/a/e/c/k;->a:Lb/a/a/a/e/c/l;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/c/k;->a:Lb/a/a/a/e/c/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/c/k;->a:Lb/a/a/a/e/c/l;

    invoke-interface {v0, p1}, Lb/a/a/a/e/c/l;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
