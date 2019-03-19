.class public final Lb/a/a/a/l/c;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lb/a/a/a/l/e;)I
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.socket.timeout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Lb/a/a/a/l/e;I)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.socket.timeout"

    invoke-interface {p0, v0, p1}, Lb/a/a/a/l/e;->b(Ljava/lang/String;I)Lb/a/a/a/l/e;

    return-void
.end method

.method public static a(Lb/a/a/a/l/e;Z)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.tcp.nodelay"

    invoke-interface {p0, v0, p1}, Lb/a/a/a/l/e;->b(Ljava/lang/String;Z)Lb/a/a/a/l/e;

    return-void
.end method

.method public static b(Lb/a/a/a/l/e;I)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.socket.buffer-size"

    invoke-interface {p0, v0, p1}, Lb/a/a/a/l/e;->b(Ljava/lang/String;I)Lb/a/a/a/l/e;

    return-void
.end method

.method public static b(Lb/a/a/a/l/e;)Z
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.socket.reuseaddr"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Lb/a/a/a/l/e;I)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.connection.timeout"

    invoke-interface {p0, v0, p1}, Lb/a/a/a/l/e;->b(Ljava/lang/String;I)Lb/a/a/a/l/e;

    return-void
.end method

.method public static c(Lb/a/a/a/l/e;)Z
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.tcp.nodelay"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static d(Lb/a/a/a/l/e;)I
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.socket.linger"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static e(Lb/a/a/a/l/e;)I
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.connection.timeout"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static f(Lb/a/a/a/l/e;)Z
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.connection.stalecheck"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
