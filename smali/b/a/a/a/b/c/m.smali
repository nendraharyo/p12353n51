.class public Lb/a/a/a/b/c/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/a/b/c/m$a;,
        Lb/a/a/a/b/c/m$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lb/a/a/a/ac;

.field private c:Ljava/net/URI;

.field private d:Lb/a/a/a/k/q;

.field private e:Lb/a/a/a/k;

.field private f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lb/a/a/a/y;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lb/a/a/a/b/a/a;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/b/c/m;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/b/c/m;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lb/a/a/a/q;)Lb/a/a/a/b/c/m;
    .locals 1

    const-string v0, "HTTP request"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lb/a/a/a/b/c/m;

    invoke-direct {v0}, Lb/a/a/a/b/c/m;-><init>()V

    invoke-direct {v0, p0}, Lb/a/a/a/b/c/m;->b(Lb/a/a/a/q;)Lb/a/a/a/b/c/m;

    move-result-object v0

    return-object v0
.end method

.method private b(Lb/a/a/a/q;)Lb/a/a/a/b/c/m;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/c/m;->a:Ljava/lang/String;

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/ae;->b()Lb/a/a/a/ac;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/c/m;->b:Lb/a/a/a/ac;

    instance-of v0, p1, Lb/a/a/a/b/c/l;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lb/a/a/a/b/c/l;

    invoke-interface {v0}, Lb/a/a/a/b/c/l;->getURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/c/m;->c:Ljava/net/URI;

    :goto_1
    iget-object v0, p0, Lb/a/a/a/b/c/m;->d:Lb/a/a/a/k/q;

    if-nez v0, :cond_1

    new-instance v0, Lb/a/a/a/k/q;

    invoke-direct {v0}, Lb/a/a/a/k/q;-><init>()V

    iput-object v0, p0, Lb/a/a/a/b/c/m;->d:Lb/a/a/a/k/q;

    :cond_1
    iget-object v0, p0, Lb/a/a/a/b/c/m;->d:Lb/a/a/a/k/q;

    invoke-virtual {v0}, Lb/a/a/a/k/q;->a()V

    iget-object v0, p0, Lb/a/a/a/b/c/m;->d:Lb/a/a/a/k/q;

    invoke-interface {p1}, Lb/a/a/a/q;->getAllHeaders()[Lb/a/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/k/q;->a([Lb/a/a/a/e;)V

    instance-of v0, p1, Lb/a/a/a/l;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lb/a/a/a/l;

    invoke-interface {v0}, Lb/a/a/a/l;->getEntity()Lb/a/a/a/k;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/c/m;->e:Lb/a/a/a/k;

    :goto_2
    instance-of v0, p1, Lb/a/a/a/b/c/d;

    if-eqz v0, :cond_4

    check-cast p1, Lb/a/a/a/b/c/d;

    invoke-interface {p1}, Lb/a/a/a/b/c/d;->getConfig()Lb/a/a/a/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/c/m;->g:Lb/a/a/a/b/a/a;

    :goto_3
    iput-object v2, p0, Lb/a/a/a/b/c/m;->f:Ljava/util/LinkedList;

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/ae;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/c/m;->c:Ljava/net/URI;

    goto :goto_1

    :cond_3
    iput-object v2, p0, Lb/a/a/a/b/c/m;->e:Lb/a/a/a/k;

    goto :goto_2

    :cond_4
    iput-object v2, p0, Lb/a/a/a/b/c/m;->g:Lb/a/a/a/b/a/a;

    goto :goto_3
.end method


# virtual methods
.method public a()Lb/a/a/a/b/c/l;
    .locals 4

    iget-object v0, p0, Lb/a/a/a/b/c/m;->c:Ljava/net/URI;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/b/c/m;->c:Ljava/net/URI;

    :goto_0
    iget-object v1, p0, Lb/a/a/a/b/c/m;->e:Lb/a/a/a/k;

    iget-object v2, p0, Lb/a/a/a/b/c/m;->f:Ljava/util/LinkedList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lb/a/a/a/b/c/m;->f:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v1, :cond_3

    const-string v2, "POST"

    iget-object v3, p0, Lb/a/a/a/b/c/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PUT"

    iget-object v3, p0, Lb/a/a/a/b/c/m;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    new-instance v1, Lb/a/a/a/b/b/a;

    iget-object v2, p0, Lb/a/a/a/b/c/m;->f:Ljava/util/LinkedList;

    sget-object v3, Lb/a/a/a/n/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lb/a/a/a/b/b/a;-><init>(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)V

    move-object v2, v0

    :goto_1
    if-nez v1, :cond_4

    new-instance v0, Lb/a/a/a/b/c/m$b;

    iget-object v1, p0, Lb/a/a/a/b/c/m;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lb/a/a/a/b/c/m$b;-><init>(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lb/a/a/a/b/c/m;->b:Lb/a/a/a/ac;

    invoke-virtual {v0, v1}, Lb/a/a/a/b/c/k;->setProtocolVersion(Lb/a/a/a/ac;)V

    invoke-virtual {v0, v2}, Lb/a/a/a/b/c/k;->setURI(Ljava/net/URI;)V

    iget-object v1, p0, Lb/a/a/a/b/c/m;->d:Lb/a/a/a/k/q;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/a/a/a/b/c/m;->d:Lb/a/a/a/k/q;

    invoke-virtual {v1}, Lb/a/a/a/k/q;->b()[Lb/a/a/a/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/b/c/k;->setHeaders([Lb/a/a/a/e;)V

    :cond_1
    iget-object v1, p0, Lb/a/a/a/b/c/m;->g:Lb/a/a/a/b/a/a;

    invoke-virtual {v0, v1}, Lb/a/a/a/b/c/k;->setConfig(Lb/a/a/a/b/a/a;)V

    return-object v0

    :cond_2
    const-string v0, "/"

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v2, Lb/a/a/a/b/f/c;

    invoke-direct {v2, v0}, Lb/a/a/a/b/f/c;-><init>(Ljava/net/URI;)V

    iget-object v3, p0, Lb/a/a/a/b/c/m;->f:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Lb/a/a/a/b/f/c;->a(Ljava/util/List;)Lb/a/a/a/b/f/c;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/a/a/b/f/c;->a()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v2, v0

    goto :goto_1

    :cond_4
    new-instance v0, Lb/a/a/a/b/c/m$a;

    iget-object v3, p0, Lb/a/a/a/b/c/m;->a:Ljava/lang/String;

    invoke-direct {v0, v3}, Lb/a/a/a/b/c/m$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb/a/a/a/b/c/m$a;->setEntity(Lb/a/a/a/k;)V

    goto :goto_2

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public a(Ljava/net/URI;)Lb/a/a/a/b/c/m;
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/c/m;->c:Ljava/net/URI;

    return-object p0
.end method
