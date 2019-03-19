.class public Lb/a/a/a/i/c/f;
.super Lb/a/a/a/i/f;

# interfaces
.implements Lb/a/a/a/e/p;
.implements Lb/a/a/a/e/q;
.implements Lb/a/a/a/n/e;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lb/a/a/a/h/b;

.field public b:Lb/a/a/a/h/b;

.field public c:Lb/a/a/a/h/b;

.field private volatile d:Ljava/net/Socket;

.field private e:Lb/a/a/a/n;

.field private f:Z

.field private volatile g:Z

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lb/a/a/a/i/f;-><init>()V

    new-instance v0, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/i/c/f;->a:Lb/a/a/a/h/b;

    new-instance v0, Lb/a/a/a/h/b;

    const-string v1, "cz.msebera.android.httpclient.headers"

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/i/c/f;->b:Lb/a/a/a/h/b;

    new-instance v0, Lb/a/a/a/h/b;

    const-string v1, "cz.msebera.android.httpclient.wire"

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/i/c/f;->c:Lb/a/a/a/h/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i/c/f;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected a(Lb/a/a/a/j/f;Lb/a/a/a/t;Lb/a/a/a/l/e;)Lb/a/a/a/j/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/j/f;",
            "Lb/a/a/a/t;",
            "Lb/a/a/a/l/e;",
            ")",
            "Lb/a/a/a/j/c",
            "<",
            "Lb/a/a/a/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Lb/a/a/a/i/c/h;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lb/a/a/a/i/c/h;-><init>(Lb/a/a/a/j/f;Lb/a/a/a/k/t;Lb/a/a/a/t;Lb/a/a/a/l/e;)V

    return-object v0
.end method

.method protected a(Ljava/net/Socket;ILb/a/a/a/l/e;)Lb/a/a/a/j/f;
    .locals 4

    if-lez p2, :cond_0

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lb/a/a/a/i/f;->a(Ljava/net/Socket;ILb/a/a/a/l/e;)Lb/a/a/a/j/f;

    move-result-object v1

    iget-object v0, p0, Lb/a/a/a/i/c/f;->c:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lb/a/a/a/i/c/m;

    new-instance v2, Lb/a/a/a/i/c/r;

    iget-object v3, p0, Lb/a/a/a/i/c/f;->c:Lb/a/a/a/h/b;

    invoke-direct {v2, v3}, Lb/a/a/a/i/c/r;-><init>(Lb/a/a/a/h/b;)V

    invoke-static {p3}, Lb/a/a/a/l/f;->a(Lb/a/a/a/l/e;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/i/c/m;-><init>(Lb/a/a/a/j/f;Lb/a/a/a/i/c/r;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    const/16 p2, 0x2000

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a()Lb/a/a/a/s;
    .locals 8

    invoke-super {p0}, Lb/a/a/a/i/f;->a()Lb/a/a/a/s;

    move-result-object v1

    iget-object v0, p0, Lb/a/a/a/i/c/f;->a:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/f;->a:Lb/a/a/a/h/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiving response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lb/a/a/a/s;->a()Lb/a/a/a/af;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/c/f;->b:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/i/c/f;->b:Lb/a/a/a/h/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lb/a/a/a/s;->a()Lb/a/a/a/af;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    invoke-interface {v1}, Lb/a/a/a/s;->getAllHeaders()[Lb/a/a/a/e;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    iget-object v5, p0, Lb/a/a/a/i/c/f;->b:Lb/a/a/a/h/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<< "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/f;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/a/a/a/q;)V
    .locals 7

    iget-object v0, p0, Lb/a/a/a/i/c/f;->a:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/f;->a:Lb/a/a/a/h/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Lb/a/a/a/i/f;->a(Lb/a/a/a/q;)V

    iget-object v0, p0, Lb/a/a/a/i/c/f;->b:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/i/c/f;->b:Lb/a/a/a/h/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    invoke-interface {p1}, Lb/a/a/a/q;->getAllHeaders()[Lb/a/a/a/e;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Lb/a/a/a/i/c/f;->b:Lb/a/a/a/h/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/f;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/net/Socket;Lb/a/a/a/n;)V
    .locals 2

    invoke-virtual {p0}, Lb/a/a/a/i/c/f;->q()V

    iput-object p1, p0, Lb/a/a/a/i/c/f;->d:Ljava/net/Socket;

    iput-object p2, p0, Lb/a/a/a/i/c/f;->e:Lb/a/a/a/n;

    iget-boolean v0, p0, Lb/a/a/a/i/c/f;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Connection already shutdown"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a(Ljava/net/Socket;Lb/a/a/a/n;ZLb/a/a/a/l/e;)V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/c/f;->j()V

    const-string v0, "Target host"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parameters"

    invoke-static {p4, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lb/a/a/a/i/c/f;->d:Ljava/net/Socket;

    invoke-virtual {p0, p1, p4}, Lb/a/a/a/i/c/f;->a(Ljava/net/Socket;Lb/a/a/a/l/e;)V

    :cond_0
    iput-object p2, p0, Lb/a/a/a/i/c/f;->e:Lb/a/a/a/n;

    iput-boolean p3, p0, Lb/a/a/a/i/c/f;->f:Z

    return-void
.end method

.method public a(ZLb/a/a/a/l/e;)V
    .locals 1

    const-string v0, "Parameters"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lb/a/a/a/i/c/f;->q()V

    iput-boolean p1, p0, Lb/a/a/a/i/c/f;->f:Z

    iget-object v0, p0, Lb/a/a/a/i/c/f;->d:Ljava/net/Socket;

    invoke-virtual {p0, v0, p2}, Lb/a/a/a/i/c/f;->a(Ljava/net/Socket;Lb/a/a/a/l/e;)V

    return-void
.end method

.method protected b(Ljava/net/Socket;ILb/a/a/a/l/e;)Lb/a/a/a/j/g;
    .locals 4

    if-lez p2, :cond_0

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lb/a/a/a/i/f;->b(Ljava/net/Socket;ILb/a/a/a/l/e;)Lb/a/a/a/j/g;

    move-result-object v1

    iget-object v0, p0, Lb/a/a/a/i/c/f;->c:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lb/a/a/a/i/c/n;

    new-instance v2, Lb/a/a/a/i/c/r;

    iget-object v3, p0, Lb/a/a/a/i/c/f;->c:Lb/a/a/a/h/b;

    invoke-direct {v2, v3}, Lb/a/a/a/i/c/r;-><init>(Lb/a/a/a/h/b;)V

    invoke-static {p3}, Lb/a/a/a/l/f;->a(Lb/a/a/a/l/e;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/i/c/n;-><init>(Lb/a/a/a/j/g;Lb/a/a/a/i/c/r;Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_0
    const/16 p2, 0x2000

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public close()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Lb/a/a/a/i/f;->close()V

    iget-object v0, p0, Lb/a/a/a/i/c/f;->a:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/f;->a:Lb/a/a/a/h/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/f;->a:Lb/a/a/a/h/b;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public e()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a/i/c/f;->g:Z

    :try_start_0
    invoke-super {p0}, Lb/a/a/a/i/f;->e()V

    iget-object v0, p0, Lb/a/a/a/i/c/f;->a:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/f;->a:Lb/a/a/a/h/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shut down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/c/f;->d:Ljava/net/Socket;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/f;->a:Lb/a/a/a/h/b;

    const-string v2, "I/O error shutting down connection"

    invoke-virtual {v1, v2, v0}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/i/c/f;->f:Z

    return v0
.end method

.method public final i()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/f;->d:Ljava/net/Socket;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/SSLSession;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/f;->d:Ljava/net/Socket;

    instance-of v0, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/f;->d:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
