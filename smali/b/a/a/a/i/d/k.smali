.class public Lb/a/a/a/i/d/k;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/f/h;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Z

.field private c:Lb/a/a/a/i/d/ae;

.field private d:Lb/a/a/a/i/d/x;

.field private e:Lb/a/a/a/i/d/m;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lb/a/a/a/i/d/k;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lb/a/a/a/i/d/k;->a:[Ljava/lang/String;

    iput-boolean p2, p0, Lb/a/a/a/i/d/k;->b:Z

    return-void

    :cond_0
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private c()Lb/a/a/a/i/d/ae;
    .locals 3

    iget-object v0, p0, Lb/a/a/a/i/d/k;->c:Lb/a/a/a/i/d/ae;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/i/d/ae;

    iget-object v1, p0, Lb/a/a/a/i/d/k;->a:[Ljava/lang/String;

    iget-boolean v2, p0, Lb/a/a/a/i/d/k;->b:Z

    invoke-direct {v0, v1, v2}, Lb/a/a/a/i/d/ae;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lb/a/a/a/i/d/k;->c:Lb/a/a/a/i/d/ae;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/d/k;->c:Lb/a/a/a/i/d/ae;

    return-object v0
.end method

.method private d()Lb/a/a/a/i/d/x;
    .locals 3

    iget-object v0, p0, Lb/a/a/a/i/d/k;->d:Lb/a/a/a/i/d/x;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/i/d/x;

    iget-object v1, p0, Lb/a/a/a/i/d/k;->a:[Ljava/lang/String;

    iget-boolean v2, p0, Lb/a/a/a/i/d/k;->b:Z

    invoke-direct {v0, v1, v2}, Lb/a/a/a/i/d/x;-><init>([Ljava/lang/String;Z)V

    iput-object v0, p0, Lb/a/a/a/i/d/k;->d:Lb/a/a/a/i/d/x;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/d/k;->d:Lb/a/a/a/i/d/x;

    return-object v0
.end method

.method private e()Lb/a/a/a/i/d/m;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/d/k;->e:Lb/a/a/a/i/d/m;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/i/d/m;

    iget-object v1, p0, Lb/a/a/a/i/d/k;->a:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lb/a/a/a/i/d/m;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lb/a/a/a/i/d/k;->e:Lb/a/a/a/i/d/m;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/d/k;->e:Lb/a/a/a/i/d/m;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/d/k;->c()Lb/a/a/a/i/d/ae;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/i/d/ae;->a()I

    move-result v0

    return v0
.end method

.method public a(Lb/a/a/a/e;Lb/a/a/a/f/e;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/e;",
            "Lb/a/a/a/f/e;",
            ")",
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/f/b;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v0, "Header"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/a/a/a/e;->e()[Lb/a/a/a/f;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    move v2, v4

    move v0, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v7, v5, v3

    const-string v8, "version"

    invoke-interface {v7, v8}, Lb/a/a/a/f;->a(Ljava/lang/String;)Lb/a/a/a/y;

    move-result-object v8

    if-eqz v8, :cond_0

    move v0, v1

    :cond_0
    const-string v8, "expires"

    invoke-interface {v7, v8}, Lb/a/a/a/f;->a(Ljava/lang/String;)Lb/a/a/a/y;

    move-result-object v7

    if-eqz v7, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-nez v0, :cond_6

    :cond_3
    sget-object v3, Lb/a/a/a/i/d/t;->a:Lb/a/a/a/i/d/t;

    instance-of v0, p1, Lb/a/a/a/d;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lb/a/a/a/d;

    invoke-interface {v0}, Lb/a/a/a/d;->a()Lb/a/a/a/o/d;

    move-result-object v2

    new-instance v0, Lb/a/a/a/k/u;

    check-cast p1, Lb/a/a/a/d;

    invoke-interface {p1}, Lb/a/a/a/d;->b()I

    move-result v5

    invoke-virtual {v2}, Lb/a/a/a/o/d;->c()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lb/a/a/a/k/u;-><init>(II)V

    :goto_1
    new-array v1, v1, [Lb/a/a/a/f;

    invoke-virtual {v3, v2, v0}, Lb/a/a/a/i/d/t;->a(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Lb/a/a/a/f;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-direct {p0}, Lb/a/a/a/i/d/k;->e()Lb/a/a/a/i/d/m;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lb/a/a/a/i/d/m;->a([Lb/a/a/a/f;Lb/a/a/a/f/e;)Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_4
    invoke-interface {p1}, Lb/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lb/a/a/a/f/l;

    const-string v1, "Header value is null"

    invoke-direct {v0, v1}, Lb/a/a/a/f/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v2, Lb/a/a/a/o/d;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v2, v5}, Lb/a/a/a/o/d;-><init>(I)V

    invoke-virtual {v2, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    new-instance v0, Lb/a/a/a/k/u;

    invoke-virtual {v2}, Lb/a/a/a/o/d;->c()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lb/a/a/a/k/u;-><init>(II)V

    goto :goto_1

    :cond_6
    const-string v0, "Set-Cookie2"

    invoke-interface {p1}, Lb/a/a/a/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lb/a/a/a/i/d/k;->c()Lb/a/a/a/i/d/ae;

    move-result-object v0

    invoke-virtual {v0, v5, p2}, Lb/a/a/a/i/d/ae;->a([Lb/a/a/a/f;Lb/a/a/a/f/e;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lb/a/a/a/i/d/k;->d()Lb/a/a/a/i/d/x;

    move-result-object v0

    invoke-virtual {v0, v5, p2}, Lb/a/a/a/i/d/x;->a([Lb/a/a/a/f;Lb/a/a/a/f/e;)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/f/b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/e;",
            ">;"
        }
    .end annotation

    const-string v0, "List of cookies"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const v1, 0x7fffffff

    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/f/b;

    instance-of v4, v0, Lb/a/a/a/f/n;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Lb/a/a/a/f/b;->j()I

    move-result v4

    if-ge v4, v2, :cond_4

    invoke-interface {v0}, Lb/a/a/a/f/b;->j()I

    move-result v0

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_1
    if-lez v2, :cond_3

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lb/a/a/a/i/d/k;->c()Lb/a/a/a/i/d/ae;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/i/d/ae;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    invoke-direct {p0}, Lb/a/a/a/i/d/k;->d()Lb/a/a/a/i/d/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/i/d/x;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lb/a/a/a/i/d/k;->e()Lb/a/a/a/i/d/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/i/d/m;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public a(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)V
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/a/a/a/f/b;->j()I

    move-result v0

    if-lez v0, :cond_1

    instance-of v0, p1, Lb/a/a/a/f/n;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/a/a/i/d/k;->c()Lb/a/a/a/i/d/ae;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/i/d/ae;->a(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lb/a/a/a/i/d/k;->d()Lb/a/a/a/i/d/x;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/i/d/x;->a(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lb/a/a/a/i/d/k;->e()Lb/a/a/a/i/d/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/i/d/m;->a(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)V

    goto :goto_0
.end method

.method public b()Lb/a/a/a/e;
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/d/k;->c()Lb/a/a/a/i/d/ae;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/i/d/ae;->b()Lb/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public b(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)Z
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/a/a/a/f/b;->j()I

    move-result v0

    if-lez v0, :cond_1

    instance-of v0, p1, Lb/a/a/a/f/n;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lb/a/a/a/i/d/k;->c()Lb/a/a/a/i/d/ae;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/i/d/ae;->b(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lb/a/a/a/i/d/k;->d()Lb/a/a/a/i/d/x;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/i/d/x;->b(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lb/a/a/a/i/d/k;->e()Lb/a/a/a/i/d/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/i/d/m;->b(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "best-match"

    return-object v0
.end method
