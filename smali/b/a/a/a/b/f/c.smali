.class public Lb/a/a/a/b/f/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/y;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/a/a/b/f/c;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lb/a/a/a/b/f/c;->a(Ljava/net/URI;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ")",
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/y;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Lb/a/a/a/b/f/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/net/URI;)V
    .locals 2

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v0

    iput v0, p0, Lb/a/a/a/b/f/c;->g:I

    invoke-virtual {p1}, Ljava/net/URI;->getRawUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->e:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->d:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->i:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->h:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lb/a/a/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Lb/a/a/a/b/f/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->k:Ljava/util/List;

    invoke-virtual {p1}, Ljava/net/URI;->getRawFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->n:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->m:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/y;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lb/a/a/a/c;->a:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lb/a/a/a/b/f/e;->a(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/a/b/f/c;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/a/b/f/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lb/a/a/a/b/f/c;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/a/a/a/b/f/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    iget-object v1, p0, Lb/a/a/a/b/f/c;->n:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/b/f/c;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v1, p0, Lb/a/a/a/b/f/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/b/f/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    iget-object v1, p0, Lb/a/a/a/b/f/c;->i:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lb/a/a/a/b/f/c;->i:Ljava/lang/String;

    invoke-static {v1}, Lb/a/a/a/b/f/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    iget-object v1, p0, Lb/a/a/a/b/f/c;->j:Ljava/lang/String;

    if-eqz v1, :cond_b

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/b/f/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lb/a/a/a/b/f/c;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a/b/f/c;->e:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lb/a/a/a/b/f/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_4
    iget-object v1, p0, Lb/a/a/a/b/f/c;->f:Ljava/lang/String;

    invoke-static {v1}, Lb/a/a/a/e/e/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/b/f/c;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    iget v1, p0, Lb/a/a/a/b/f/c;->g:I

    if-ltz v1, :cond_4

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/a/a/b/f/c;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lb/a/a/a/b/f/c;->d:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lb/a/a/a/b/f/c;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lb/a/a/a/b/f/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    iget-object v1, p0, Lb/a/a/a/b/f/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lb/a/a/a/b/f/c;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lb/a/a/a/b/f/c;->h:Ljava/lang/String;

    invoke-static {v1}, Lb/a/a/a/b/f/c;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lb/a/a/a/b/f/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lb/a/a/a/b/f/c;->k:Ljava/util/List;

    if-eqz v1, :cond_c

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/b/f/c;->k:Ljava/util/List;

    invoke-direct {p0, v2}, Lb/a/a/a/b/f/c;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lb/a/a/a/b/f/c;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/b/f/c;->l:Ljava/lang/String;

    invoke-direct {p0, v2}, Lb/a/a/a/b/f/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lb/a/a/a/b/f/c;->m:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/b/f/c;->m:Ljava/lang/String;

    invoke-direct {p0, v2}, Lb/a/a/a/b/f/c;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lb/a/a/a/c;->a:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lb/a/a/a/b/f/e;->b(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lb/a/a/a/c;->a:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lb/a/a/a/b/f/e;->d(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lb/a/a/a/c;->a:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lb/a/a/a/b/f/e;->c(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(I)Lb/a/a/a/b/f/c;
    .locals 1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    iput p1, p0, Lb/a/a/a/b/f/c;->g:I

    iput-object v0, p0, Lb/a/a/a/b/f/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/b/f/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/a/a/b/f/c;
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/f/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lb/a/a/a/b/f/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/y;",
            ">;)",
            "Lb/a/a/a/b/f/c;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lb/a/a/a/b/f/c;->k:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/a/b/f/c;->k:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/b/f/c;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v1, p0, Lb/a/a/a/b/f/c;->j:Ljava/lang/String;

    iput-object v1, p0, Lb/a/a/a/b/f/c;->b:Ljava/lang/String;

    iput-object v1, p0, Lb/a/a/a/b/f/c;->l:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/net/URI;
    .locals 2

    new-instance v0, Ljava/net/URI;

    invoke-direct {p0}, Lb/a/a/a/b/f/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lb/a/a/a/b/f/c;
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lb/a/a/a/b/f/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/b/f/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/b/f/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/b/f/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/f/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lb/a/a/a/b/f/c;
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lb/a/a/a/b/f/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/b/f/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/b/f/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/f/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lb/a/a/a/b/f/c;
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lb/a/a/a/b/f/c;->h:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/b/f/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/b/f/c;->i:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/f/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lb/a/a/a/b/f/c;
    .locals 1

    iput-object p1, p0, Lb/a/a/a/b/f/c;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/b/f/c;->n:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/b/f/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
