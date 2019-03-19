.class public Lb/a/a/a/b/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/r;


# instance fields
.field public a:Lb/a/a/a/h/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/b/e/b;->a:Lb/a/a/a/h/b;

    return-void
.end method


# virtual methods
.method public process(Lb/a/a/a/q;Lb/a/a/a/n/e;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lb/a/a/a/b/e/a;->a(Lb/a/a/a/n/e;)Lb/a/a/a/b/e/a;

    move-result-object v4

    invoke-virtual {v4}, Lb/a/a/a/b/e/a;->b()Lb/a/a/a/b/h;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v0, p0, Lb/a/a/a/b/e/b;->a:Lb/a/a/a/h/b;

    const-string v1, "Cookie store not specified in HTTP context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lb/a/a/a/b/e/a;->e()Lb/a/a/a/d/a;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v0, p0, Lb/a/a/a/b/e/b;->a:Lb/a/a/a/h/b;

    const-string v1, "CookieSpec registry not specified in HTTP context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lb/a/a/a/b/e/a;->o()Lb/a/a/a/n;

    move-result-object v7

    if-nez v7, :cond_3

    iget-object v0, p0, Lb/a/a/a/b/e/b;->a:Lb/a/a/a/h/b;

    const-string v1, "Target host not set in the context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lb/a/a/a/b/e/a;->a()Lb/a/a/a/e/b/e;

    move-result-object v8

    if-nez v8, :cond_4

    iget-object v0, p0, Lb/a/a/a/b/e/b;->a:Lb/a/a/a/h/b;

    const-string v1, "Connection route not set in the context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lb/a/a/a/b/e/a;->k()Lb/a/a/a/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/b/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    const-string v0, "best-match"

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lb/a/a/a/b/e/b;->a:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/a/a/a/b/e/b;->a:Lb/a/a/a/h/b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CookieSpec selected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_5
    instance-of v0, p1, Lb/a/a/a/b/c/l;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lb/a/a/a/b/c/l;

    invoke-interface {v0}, Lb/a/a/a/b/c/l;->getURI()Ljava/net/URI;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v7}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lb/a/a/a/n;->b()I

    move-result v2

    if-gez v2, :cond_6

    invoke-interface {v8}, Lb/a/a/a/e/b/e;->a()Lb/a/a/a/n;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/a/a/n;->b()I

    move-result v2

    :cond_6
    new-instance v7, Lb/a/a/a/f/e;

    if-ltz v2, :cond_9

    :goto_4
    invoke-static {v0}, Lb/a/a/a/o/h;->a(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    :goto_5
    invoke-interface {v8}, Lb/a/a/a/e/b/e;->g()Z

    move-result v8

    invoke-direct {v7, v9, v2, v0, v8}, Lb/a/a/a/f/e;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v6, v1}, Lb/a/a/a/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/f/j;

    if-nez v0, :cond_b

    new-instance v0, Lb/a/a/a/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported cookie policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v9

    invoke-interface {v9}, Lb/a/a/a/ae;->c()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :cond_8
    move-object v0, v2

    goto :goto_3

    :cond_9
    move v2, v3

    goto :goto_4

    :cond_a
    const-string v0, "/"

    goto :goto_5

    :cond_b
    invoke-interface {v0, v4}, Lb/a/a/a/f/j;->a(Lb/a/a/a/n/e;)Lb/a/a/a/f/h;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Lb/a/a/a/b/h;->getCookies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/f/b;

    invoke-interface {v0, v4}, Lb/a/a/a/f/b;->a(Ljava/util/Date;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-interface {v1, v0, v7}, Lb/a/a/a/f/h;->b(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lb/a/a/a/b/e/b;->a:Lb/a/a/a/h/b;

    invoke-virtual {v6}, Lb/a/a/a/h/b;->a()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lb/a/a/a/b/e/b;->a:Lb/a/a/a/h/b;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cookie "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " match "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_d
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    iget-object v6, p0, Lb/a/a/a/b/e/b;->a:Lb/a/a/a/h/b;

    invoke-virtual {v6}, Lb/a/a/a/h/b;->a()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lb/a/a/a/b/e/b;->a:Lb/a/a/a/h/b;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cookie "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " expired"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_6

    :cond_f
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-interface {v1, v2}, Lb/a/a/a/f/h;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e;

    invoke-interface {p1, v0}, Lb/a/a/a/q;->addHeader(Lb/a/a/a/e;)V

    goto :goto_7

    :cond_10
    invoke-interface {v1}, Lb/a/a/a/f/h;->a()I

    move-result v4

    if-lez v4, :cond_14

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/f/b;

    invoke-interface {v0}, Lb/a/a/a/f/b;->j()I

    move-result v5

    if-ne v4, v5, :cond_12

    instance-of v0, v0, Lb/a/a/a/f/n;

    if-nez v0, :cond_11

    :cond_12
    const/4 v3, 0x1

    goto :goto_8

    :cond_13
    if-eqz v3, :cond_14

    invoke-interface {v1}, Lb/a/a/a/f/h;->b()Lb/a/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {p1, v0}, Lb/a/a/a/q;->addHeader(Lb/a/a/a/e;)V

    :cond_14
    const-string v0, "http.cookie-spec"

    invoke-interface {p2, v0, v1}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http.cookie-origin"

    invoke-interface {p2, v0, v7}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    move-object v1, v0

    goto/16 :goto_1
.end method
