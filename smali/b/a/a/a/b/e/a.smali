.class public Lb/a/a/a/b/e/a;
.super Lb/a/a/a/n/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/a/a/n/f;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/n/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/a/a/n/f;-><init>(Lb/a/a/a/n/e;)V

    return-void
.end method

.method public static a(Lb/a/a/a/n/e;)Lb/a/a/a/b/e/a;
    .locals 1

    instance-of v0, p0, Lb/a/a/a/b/e/a;

    if-eqz v0, :cond_0

    check-cast p0, Lb/a/a/a/b/e/a;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lb/a/a/a/b/e/a;

    invoke-direct {v0, p0}, Lb/a/a/a/b/e/a;-><init>(Lb/a/a/a/n/e;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Class;)Lb/a/a/a/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lb/a/a/a/d/a",
            "<TT;>;"
        }
    .end annotation

    const-class v0, Lb/a/a/a/d/a;

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/d/a;

    return-object v0
.end method


# virtual methods
.method public a()Lb/a/a/a/e/b/e;
    .locals 2

    const-string v0, "http.route"

    const-class v1, Lb/a/a/a/e/b/b;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/b/e;

    return-object v0
.end method

.method public a(Lb/a/a/a/b/a;)V
    .locals 1

    const-string v0, "http.auth.auth-cache"

    invoke-virtual {p0, v0, p1}, Lb/a/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public b()Lb/a/a/a/b/h;
    .locals 2

    const-string v0, "http.cookie-store"

    const-class v1, Lb/a/a/a/b/h;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/b/h;

    return-object v0
.end method

.method public c()Lb/a/a/a/f/h;
    .locals 2

    const-string v0, "http.cookie-spec"

    const-class v1, Lb/a/a/a/f/h;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/f/h;

    return-object v0
.end method

.method public d()Lb/a/a/a/f/e;
    .locals 2

    const-string v0, "http.cookie-origin"

    const-class v1, Lb/a/a/a/f/e;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/f/e;

    return-object v0
.end method

.method public e()Lb/a/a/a/d/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/a/a/a/d/a",
            "<",
            "Lb/a/a/a/f/j;",
            ">;"
        }
    .end annotation

    const-string v0, "http.cookiespec-registry"

    const-class v1, Lb/a/a/a/f/j;

    invoke-direct {p0, v0, v1}, Lb/a/a/a/b/e/a;->b(Ljava/lang/String;Ljava/lang/Class;)Lb/a/a/a/d/a;

    move-result-object v0

    return-object v0
.end method

.method public f()Lb/a/a/a/d/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/a/a/a/d/a",
            "<",
            "Lb/a/a/a/a/e;",
            ">;"
        }
    .end annotation

    const-string v0, "http.authscheme-registry"

    const-class v1, Lb/a/a/a/a/e;

    invoke-direct {p0, v0, v1}, Lb/a/a/a/b/e/a;->b(Ljava/lang/String;Ljava/lang/Class;)Lb/a/a/a/d/a;

    move-result-object v0

    return-object v0
.end method

.method public g()Lb/a/a/a/b/i;
    .locals 2

    const-string v0, "http.auth.credentials-provider"

    const-class v1, Lb/a/a/a/b/i;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/b/i;

    return-object v0
.end method

.method public h()Lb/a/a/a/b/a;
    .locals 2

    const-string v0, "http.auth.auth-cache"

    const-class v1, Lb/a/a/a/b/a;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/b/a;

    return-object v0
.end method

.method public i()Lb/a/a/a/a/h;
    .locals 2

    const-string v0, "http.auth.target-scope"

    const-class v1, Lb/a/a/a/a/h;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/h;

    return-object v0
.end method

.method public j()Lb/a/a/a/a/h;
    .locals 2

    const-string v0, "http.auth.proxy-scope"

    const-class v1, Lb/a/a/a/a/h;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/h;

    return-object v0
.end method

.method public k()Lb/a/a/a/b/a/a;
    .locals 2

    const-string v0, "http.request-config"

    const-class v1, Lb/a/a/a/b/a/a;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/b/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/b/a/a;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lb/a/a/a/b/a/a;->a:Lb/a/a/a/b/a/a;

    goto :goto_0
.end method
