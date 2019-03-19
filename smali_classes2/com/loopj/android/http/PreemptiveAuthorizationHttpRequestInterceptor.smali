.class public Lcom/loopj/android/http/PreemptiveAuthorizationHttpRequestInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lb/a/a/a/q;Lb/a/a/a/n/e;)V
    .locals 5

    const-string v0, "http.auth.target-scope"

    invoke-interface {p2, v0}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/h;

    const-string v1, "http.auth.credentials-provider"

    invoke-interface {p2, v1}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/b/i;

    const-string v2, "http.target_host"

    invoke-interface {p2, v2}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/n;

    invoke-virtual {v0}, Lb/a/a/a/a/h;->c()Lb/a/a/a/a/c;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lb/a/a/a/a/g;

    invoke-virtual {v2}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lb/a/a/a/n;->b()I

    move-result v2

    invoke-direct {v3, v4, v2}, Lb/a/a/a/a/g;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v3}, Lb/a/a/a/b/i;->a(Lb/a/a/a/a/g;)Lb/a/a/a/a/m;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lb/a/a/a/i/a/b;

    invoke-direct {v2}, Lb/a/a/a/i/a/b;-><init>()V

    invoke-virtual {v0, v2}, Lb/a/a/a/a/h;->a(Lb/a/a/a/a/c;)V

    invoke-virtual {v0, v1}, Lb/a/a/a/a/h;->a(Lb/a/a/a/a/m;)V

    :cond_0
    return-void
.end method
