.class Lb/a/a/a/i/b/o;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/b/p;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lb/a/a/a/b/o;


# direct methods
.method public constructor <init>(Lb/a/a/a/b/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/i/b/o;->a:Lb/a/a/a/b/o;

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/a/b/o;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/o;->a:Lb/a/a/a/b/o;

    return-object v0
.end method

.method public a(Lb/a/a/a/q;Lb/a/a/a/s;Lb/a/a/a/n/e;)Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/o;->a:Lb/a/a/a/b/o;

    invoke-interface {v0, p2, p3}, Lb/a/a/a/b/o;->isRedirectRequested(Lb/a/a/a/s;Lb/a/a/a/n/e;)Z

    move-result v0

    return v0
.end method

.method public b(Lb/a/a/a/q;Lb/a/a/a/s;Lb/a/a/a/n/e;)Lb/a/a/a/b/c/l;
    .locals 3

    iget-object v0, p0, Lb/a/a/a/i/b/o;->a:Lb/a/a/a/b/o;

    invoke-interface {v0, p2, p3}, Lb/a/a/a/b/o;->getLocationURI(Lb/a/a/a/s;Lb/a/a/a/n/e;)Ljava/net/URI;

    move-result-object v1

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lb/a/a/a/b/c/g;

    invoke-direct {v0, v1}, Lb/a/a/a/b/c/g;-><init>(Ljava/net/URI;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lb/a/a/a/b/c/f;

    invoke-direct {v0, v1}, Lb/a/a/a/b/c/f;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method
