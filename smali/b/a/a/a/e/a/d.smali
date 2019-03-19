.class public Lb/a/a/a/e/a/d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final a:Lb/a/a/a/n;

.field public static final b:Lb/a/a/a/e/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb/a/a/a/n;

    const-string v1, "127.0.0.255"

    const/4 v2, 0x0

    const-string v3, "no-host"

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb/a/a/a/e/a/d;->a:Lb/a/a/a/n;

    new-instance v0, Lb/a/a/a/e/b/b;

    sget-object v1, Lb/a/a/a/e/a/d;->a:Lb/a/a/a/n;

    invoke-direct {v0, v1}, Lb/a/a/a/e/b/b;-><init>(Lb/a/a/a/n;)V

    sput-object v0, Lb/a/a/a/e/a/d;->b:Lb/a/a/a/e/b/b;

    return-void
.end method

.method public static a(Lb/a/a/a/l/e;)Lb/a/a/a/n;
    .locals 2

    const-string v0, "Parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.route.default-proxy"

    invoke-interface {p0, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/n;

    if-eqz v0, :cond_0

    sget-object v1, Lb/a/a/a/e/a/d;->a:Lb/a/a/a/n;

    invoke-virtual {v1, v0}, Lb/a/a/a/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static b(Lb/a/a/a/l/e;)Lb/a/a/a/e/b/b;
    .locals 2

    const-string v0, "Parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.route.forced-route"

    invoke-interface {p0, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/b/b;

    if-eqz v0, :cond_0

    sget-object v1, Lb/a/a/a/e/a/d;->b:Lb/a/a/a/e/b/b;

    invoke-virtual {v1, v0}, Lb/a/a/a/e/b/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static c(Lb/a/a/a/l/e;)Ljava/net/InetAddress;
    .locals 1

    const-string v0, "Parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.route.local-address"

    invoke-interface {p0, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    return-object v0
.end method
