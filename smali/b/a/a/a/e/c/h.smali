.class Lb/a/a/a/e/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/e/c/f;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lb/a/a/a/e/c/b;


# direct methods
.method constructor <init>(Lb/a/a/a/e/c/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/e/c/h;->a:Lb/a/a/a/e/c/b;

    return-void
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lb/a/a/a/l/e;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/c/h;->a:Lb/a/a/a/e/c/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lb/a/a/a/e/c/b;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lb/a/a/a/l/e;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILb/a/a/a/l/e;)Ljava/net/Socket;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/e/c/h;->a:Lb/a/a/a/e/c/b;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lb/a/a/a/e/c/b;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Lb/a/a/a/l/e;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/c/h;->a:Lb/a/a/a/e/c/b;

    invoke-interface {v0, p1}, Lb/a/a/a/e/c/b;->createSocket(Lb/a/a/a/l/e;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/c/h;->a:Lb/a/a/a/e/c/b;

    invoke-interface {v0, p1}, Lb/a/a/a/e/c/b;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    return v0
.end method
