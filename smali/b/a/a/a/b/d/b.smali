.class public Lb/a/a/a/b/d/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lb/a/a/a/l/e;)Z
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.handle-redirects"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static b(Lb/a/a/a/l/e;)Z
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.handle-authentication"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static c(Lb/a/a/a/l/e;)J
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.timeout"

    invoke-interface {p0, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lb/a/a/a/l/c;->e(Lb/a/a/a/l/e;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method
