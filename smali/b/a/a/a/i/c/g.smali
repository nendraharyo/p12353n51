.class public Lb/a/a/a/i/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/e/d;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lb/a/a/a/h/b;

.field protected final b:Lb/a/a/a/e/c/i;

.field protected final c:Lb/a/a/a/e/j;


# direct methods
.method public constructor <init>(Lb/a/a/a/e/c/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/i/c/g;->a:Lb/a/a/a/h/b;

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/i/c/g;->b:Lb/a/a/a/e/c/i;

    new-instance v0, Lb/a/a/a/i/c/q;

    invoke-direct {v0}, Lb/a/a/a/i/c/q;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i/c/g;->c:Lb/a/a/a/e/j;

    return-void
.end method

.method private a(Lb/a/a/a/n/e;)Lb/a/a/a/e/c/i;
    .locals 1

    const-string v0, "http.scheme-registry"

    invoke-interface {p1, v0}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/c/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/g;->b:Lb/a/a/a/e/c/i;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lb/a/a/a/e/q;
    .locals 1

    new-instance v0, Lb/a/a/a/i/c/f;

    invoke-direct {v0}, Lb/a/a/a/i/c/f;-><init>()V

    return-object v0
.end method

.method public a(Lb/a/a/a/e/q;Lb/a/a/a/n;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V
    .locals 5

    const-string v0, "Connection"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Target host"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parameters"

    invoke-static {p4, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/a/a/a/e/q;->c()Z

    move-result v0

    const-string v1, "Connection must be open"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    invoke-direct {p0, p3}, Lb/a/a/a/i/c/g;->a(Lb/a/a/a/n/e;)Lb/a/a/a/e/c/i;

    move-result-object v0

    invoke-virtual {p2}, Lb/a/a/a/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/e/c/i;->a(Ljava/lang/String;)Lb/a/a/a/e/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/a/e/c/e;->b()Lb/a/a/a/e/c/j;

    move-result-object v0

    instance-of v0, v0, Lb/a/a/a/e/c/f;

    const-string v2, "Socket factory must implement SchemeLayeredSocketFactory"

    invoke-static {v0, v2}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    invoke-virtual {v1}, Lb/a/a/a/e/c/e;->b()Lb/a/a/a/e/c/j;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/c/f;

    invoke-interface {p1}, Lb/a/a/a/e/q;->i()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {p2}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lb/a/a/a/n;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Lb/a/a/a/e/c/e;->a(I)I

    move-result v1

    invoke-interface {v0, v2, v3, v1, p4}, Lb/a/a/a/e/c/f;->createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILb/a/a/a/l/e;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {p0, v1, p3, p4}, Lb/a/a/a/i/c/g;->a(Ljava/net/Socket;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    invoke-interface {v0, v1}, Lb/a/a/a/e/c/f;->isSecure(Ljava/net/Socket;)Z

    move-result v0

    invoke-interface {p1, v1, p2, v0, p4}, Lb/a/a/a/e/q;->a(Ljava/net/Socket;Lb/a/a/a/n;ZLb/a/a/a/l/e;)V

    return-void
.end method

.method public a(Lb/a/a/a/e/q;Lb/a/a/a/n;Ljava/net/InetAddress;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V
    .locals 13

    const-string v2, "Connection"

    invoke-static {p1, v2}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "Target host"

    invoke-static {p2, v2}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "HTTP parameters"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/a/a/a/e/q;->c()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    const-string v3, "Connection must not be open"

    invoke-static {v2, v3}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lb/a/a/a/i/c/g;->a(Lb/a/a/a/n/e;)Lb/a/a/a/e/c/i;

    move-result-object v2

    invoke-virtual {p2}, Lb/a/a/a/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/a/a/a/e/c/i;->a(Ljava/lang/String;)Lb/a/a/a/e/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/a/a/e/c/e;->b()Lb/a/a/a/e/c/j;

    move-result-object v6

    invoke-virtual {p2}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lb/a/a/a/i/c/g;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {p2}, Lb/a/a/a/n;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lb/a/a/a/e/c/e;->a(I)I

    move-result v8

    const/4 v2, 0x0

    :goto_1
    array-length v3, v7

    if-ge v2, v3, :cond_2

    aget-object v4, v7, v2

    array-length v3, v7

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p5

    invoke-interface {v6, v0}, Lb/a/a/a/e/c/j;->createSocket(Lb/a/a/a/l/e;)Ljava/net/Socket;

    move-result-object v5

    invoke-interface {p1, v5, p2}, Lb/a/a/a/e/q;->a(Ljava/net/Socket;Lb/a/a/a/n;)V

    new-instance v9, Lb/a/a/a/e/m;

    invoke-direct {v9, p2, v4, v8}, Lb/a/a/a/e/m;-><init>(Lb/a/a/a/n;Ljava/net/InetAddress;I)V

    const/4 v4, 0x0

    if-eqz p3, :cond_0

    new-instance v4, Ljava/net/InetSocketAddress;

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-direct {v4, v0, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    :cond_0
    iget-object v10, p0, Lb/a/a/a/i/c/g;->a:Lb/a/a/a/h/b;

    invoke-virtual {v10}, Lb/a/a/a/h/b;->a()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lb/a/a/a/i/c/g;->a:Lb/a/a/a/h/b;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connecting to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    move-object/from16 v0, p5

    invoke-interface {v6, v5, v9, v4, v0}, Lb/a/a/a/e/c/j;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lb/a/a/a/l/e;)Ljava/net/Socket;

    move-result-object v4

    if-eq v5, v4, :cond_7

    invoke-interface {p1, v4, p2}, Lb/a/a/a/e/q;->a(Ljava/net/Socket;Lb/a/a/a/n;)V

    :goto_3
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v4, v0, v1}, Lb/a/a/a/i/c/g;->a(Ljava/net/Socket;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    invoke-interface {v6, v4}, Lb/a/a/a/e/c/j;->isSecure(Ljava/net/Socket;)Z

    move-result v4

    move-object/from16 v0, p5

    invoke-interface {p1, v4, v0}, Lb/a/a/a/e/q;->a(ZLb/a/a/a/l/e;)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lb/a/a/a/e/f; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :catch_0
    move-exception v4

    if-eqz v3, :cond_5

    throw v4

    :catch_1
    move-exception v4

    if-eqz v3, :cond_5

    throw v4

    :cond_5
    iget-object v3, p0, Lb/a/a/a/i/c/g;->a:Lb/a/a/a/h/b;

    invoke-virtual {v3}, Lb/a/a/a/h/b;->a()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lb/a/a/a/i/c/g;->a:Lb/a/a/a/h/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " timed out. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Connection will be retried using another IP address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    move-object v4, v5

    goto :goto_3
.end method

.method protected a(Ljava/net/Socket;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V
    .locals 2

    invoke-static {p3}, Lb/a/a/a/l/c;->c(Lb/a/a/a/l/e;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-static {p3}, Lb/a/a/a/l/c;->a(Lb/a/a/a/l/e;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    invoke-static {p3}, Lb/a/a/a/l/c;->d(Lb/a/a/a/l/e;)I

    move-result v1

    if-ltz v1, :cond_0

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/net/Socket;->setSoLinger(ZI)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/g;->c:Lb/a/a/a/e/j;

    invoke-interface {v0, p1}, Lb/a/a/a/e/j;->a(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
