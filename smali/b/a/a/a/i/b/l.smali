.class public Lb/a/a/a/i/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/b/k;


# static fields
.field public static final a:Lb/a/a/a/i/b/l;


# instance fields
.field private final b:I

.field private final c:Z

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/io/IOException;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/a/i/b/l;

    invoke-direct {v0}, Lb/a/a/a/i/b/l;-><init>()V

    sput-object v0, Lb/a/a/a/i/b/l;->a:Lb/a/a/a/i/b/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lb/a/a/a/i/b/l;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/io/InterruptedIOException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/net/UnknownHostException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/net/ConnectException;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/net/ssl/SSLException;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lb/a/a/a/i/b/l;-><init>(IZLjava/util/Collection;)V

    return-void
.end method

.method protected constructor <init>(IZLjava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/io/IOException;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb/a/a/a/i/b/l;->b:I

    iput-boolean p2, p0, Lb/a/a/a/i/b/l;->c:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i/b/l;->d:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v2, p0, Lb/a/a/a/i/b/l;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lb/a/a/a/q;)Z
    .locals 1

    instance-of v0, p1, Lb/a/a/a/l;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lb/a/a/a/q;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of v0, p1, Lb/a/a/a/i/b/w;

    if-eqz v0, :cond_1

    check-cast p1, Lb/a/a/a/i/b/w;

    invoke-virtual {p1}, Lb/a/a/a/i/b/w;->c()Lb/a/a/a/q;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lb/a/a/a/b/c/l;

    if-eqz v1, :cond_0

    check-cast v0, Lb/a/a/a/b/c/l;

    invoke-interface {v0}, Lb/a/a/a/b/c/l;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public retryRequest(Ljava/io/IOException;ILb/a/a/a/n/e;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "Exception parameter"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget v0, p0, Lb/a/a/a/i/b/l;->b:I

    if-le p2, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/l;->d:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/a/a/a/i/b/l;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p3}, Lb/a/a/a/b/e/a;->a(Lb/a/a/a/n/e;)Lb/a/a/a/b/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/b/e/a;->m()Lb/a/a/a/q;

    move-result-object v3

    invoke-virtual {p0, v3}, Lb/a/a/a/i/b/l;->b(Lb/a/a/a/q;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lb/a/a/a/i/b/l;->a(Lb/a/a/a/q;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lb/a/a/a/b/e/a;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lb/a/a/a/i/b/l;->c:Z

    if-eqz v0, :cond_7

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method
