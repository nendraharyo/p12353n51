.class public Lb/a/a/a/i/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/e/b/d;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Lb/a/a/a/e/c/i;


# direct methods
.method public constructor <init>(Lb/a/a/a/e/c/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scheme registry"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/i/c/i;->a:Lb/a/a/a/e/c/i;

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/n;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/e/b/b;
    .locals 4

    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Lb/a/a/a/q;->getParams()Lb/a/a/a/l/e;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/e/a/d;->b(Lb/a/a/a/l/e;)Lb/a/a/a/e/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Target host"

    invoke-static {p1, v0}, Lb/a/a/a/o/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lb/a/a/a/q;->getParams()Lb/a/a/a/l/e;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/e/a/d;->c(Lb/a/a/a/l/e;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {p2}, Lb/a/a/a/q;->getParams()Lb/a/a/a/l/e;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/e/a/d;->a(Lb/a/a/a/l/e;)Lb/a/a/a/n;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/c/i;->a:Lb/a/a/a/e/c/i;

    invoke-virtual {p1}, Lb/a/a/a/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lb/a/a/a/e/c/i;->a(Ljava/lang/String;)Lb/a/a/a/e/c/e;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e/c/e;->d()Z

    move-result v3

    if-nez v2, :cond_1

    new-instance v0, Lb/a/a/a/e/b/b;

    invoke-direct {v0, p1, v1, v3}, Lb/a/a/a/e/b/b;-><init>(Lb/a/a/a/n;Ljava/net/InetAddress;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lb/a/a/a/m;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/m;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lb/a/a/a/e/b/b;

    invoke-direct {v0, p1, v1, v2, v3}, Lb/a/a/a/e/b/b;-><init>(Lb/a/a/a/n;Ljava/net/InetAddress;Lb/a/a/a/n;Z)V

    goto :goto_0
.end method
