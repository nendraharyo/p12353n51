.class Lb/a/a/a/i/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/b/c;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lb/a/a/a/h/b;

.field private final b:Lb/a/a/a/b/b;


# direct methods
.method private a(Lb/a/a/a/a/c;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lb/a/a/a/a/c;->d()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Lb/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Digest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lb/a/a/a/b/b;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/b;->b:Lb/a/a/a/b/b;

    return-object v0
.end method

.method public a(Ljava/util/Map;Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/n/e;)Ljava/util/Queue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/a/a/e;",
            ">;",
            "Lb/a/a/a/n;",
            "Lb/a/a/a/s;",
            "Lb/a/a/a/n/e;",
            ")",
            "Ljava/util/Queue",
            "<",
            "Lb/a/a/a/a/a;",
            ">;"
        }
    .end annotation

    const-string v0, "Map of auth challenges"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Host"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP response"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p4, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const-string v0, "http.auth.credentials-provider"

    invoke-interface {p4, v0}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/b/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/b/b;->a:Lb/a/a/a/h/b;

    const-string v1, "Credentials provider not set in the context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lb/a/a/a/i/b/b;->b:Lb/a/a/a/b/b;

    invoke-interface {v1, p1, p3, p4}, Lb/a/a/a/b/b;->a(Ljava/util/Map;Lb/a/a/a/s;Lb/a/a/a/n/e;)Lb/a/a/a/a/c;
    :try_end_0
    .catch Lb/a/a/a/a/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    invoke-interface {v3}, Lb/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/a/a/a/e;

    invoke-interface {v3, v1}, Lb/a/a/a/a/c;->a(Lb/a/a/a/e;)V

    new-instance v1, Lb/a/a/a/a/g;

    invoke-virtual {p2}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lb/a/a/a/n;->b()I

    move-result v5

    invoke-interface {v3}, Lb/a/a/a/a/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lb/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v4, v5, v6, v7}, Lb/a/a/a/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lb/a/a/a/b/i;->a(Lb/a/a/a/a/g;)Lb/a/a/a/a/m;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lb/a/a/a/a/a;

    invoke-direct {v1, v3, v0}, Lb/a/a/a/a/a;-><init>(Lb/a/a/a/a/c;Lb/a/a/a/a/m;)V

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/b/b;->a:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Lb/a/a/a/h/b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/a/a/a/i/b/b;->a:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/a/i;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lb/a/a/a/h/b;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public a(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/n/e;)V
    .locals 4

    const-string v0, "http.auth.auth-cache"

    invoke-interface {p3, v0}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/b/a;

    invoke-direct {p0, p2}, Lb/a/a/a/i/b/b;->a(Lb/a/a/a/a/c;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/i/b/d;

    invoke-direct {v0}, Lb/a/a/a/i/b/d;-><init>()V

    const-string v1, "http.auth.auth-cache"

    invoke-interface {p3, v1, v0}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lb/a/a/a/i/b/b;->a:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Lb/a/a/a/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/a/a/a/i/b/b;->a:Lb/a/a/a/h/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lb/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v0, p1, p2}, Lb/a/a/a/b/a;->a(Lb/a/a/a/n;Lb/a/a/a/a/c;)V

    :cond_2
    return-void
.end method

.method public a(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/n/e;)Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/b;->b:Lb/a/a/a/b/b;

    invoke-interface {v0, p2, p3}, Lb/a/a/a/b/b;->a(Lb/a/a/a/s;Lb/a/a/a/n/e;)Z

    move-result v0

    return v0
.end method

.method public b(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/n/e;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/n;",
            "Lb/a/a/a/s;",
            "Lb/a/a/a/n/e;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lb/a/a/a/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/a/i/b/b;->b:Lb/a/a/a/b/b;

    invoke-interface {v0, p2, p3}, Lb/a/a/a/b/b;->b(Lb/a/a/a/s;Lb/a/a/a/n/e;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/n/e;)V
    .locals 4

    const-string v0, "http.auth.auth-cache"

    invoke-interface {p3, v0}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/b/a;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lb/a/a/a/i/b/b;->a:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Lb/a/a/a/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/a/a/a/i/b/b;->a:Lb/a/a/a/h/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing from cache \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lb/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_1
    invoke-interface {v0, p1}, Lb/a/a/a/b/a;->b(Lb/a/a/a/n;)V

    goto :goto_0
.end method
