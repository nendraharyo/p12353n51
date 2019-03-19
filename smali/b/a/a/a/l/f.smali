.class public final Lb/a/a/a/l/f;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lb/a/a/a/l/e;)Ljava/lang/String;
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.element-charset"

    invoke-interface {p0, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lb/a/a/a/n/d;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Lb/a/a/a/l/e;Lb/a/a/a/ac;)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0, p1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/a/l/e;

    return-void
.end method

.method public static a(Lb/a/a/a/l/e;Ljava/lang/String;)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.content-charset"

    invoke-interface {p0, v0, p1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/a/l/e;

    return-void
.end method

.method public static b(Lb/a/a/a/l/e;)Lb/a/a/a/ac;
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.protocol.version"

    invoke-interface {p0, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lb/a/a/a/v;->c:Lb/a/a/a/v;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lb/a/a/a/ac;

    goto :goto_0
.end method

.method public static b(Lb/a/a/a/l/e;Ljava/lang/String;)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.useragent"

    invoke-interface {p0, v0, p1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/a/l/e;

    return-void
.end method
