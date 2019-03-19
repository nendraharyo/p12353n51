.class public Lb/a/a/a/k/k;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/h;


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/e;",
            ">;"
        }
    .end annotation
.end field

.field protected b:I

.field protected c:I

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/e;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Header list"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lb/a/a/a/k/k;->a:Ljava/util/List;

    iput-object p2, p0, Lb/a/a/a/k/k;->d:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lb/a/a/a/k/k;->a(I)I

    move-result v0

    iput v0, p0, Lb/a/a/a/k/k;->b:I

    iput v1, p0, Lb/a/a/a/k/k;->c:I

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 4

    const/4 v1, -0x1

    if-ge p1, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lb/a/a/a/k/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    const/4 v0, 0x0

    move v2, v0

    move v0, p1

    :goto_1
    if-nez v2, :cond_1

    if-ge v0, v3, :cond_1

    add-int/lit8 p1, v0, 0x1

    invoke-virtual {p0, p1}, Lb/a/a/a/k/k;->b(I)Z

    move-result v0

    move v2, v0

    move v0, p1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public a()Lb/a/a/a/e;
    .locals 2

    iget v0, p0, Lb/a/a/a/k/k;->b:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput v0, p0, Lb/a/a/a/k/k;->c:I

    invoke-virtual {p0, v0}, Lb/a/a/a/k/k;->a(I)I

    move-result v1

    iput v1, p0, Lb/a/a/a/k/k;->b:I

    iget-object v1, p0, Lb/a/a/a/k/k;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e;

    return-object v0
.end method

.method protected b(I)Z
    .locals 2

    iget-object v0, p0, Lb/a/a/a/k/k;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/k/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e;

    invoke-interface {v0}, Lb/a/a/a/e;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/k/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lb/a/a/a/k/k;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/k/k;->a()Lb/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget v0, p0, Lb/a/a/a/k/k;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "No header to remove"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/k/k;->a:Ljava/util/List;

    iget v1, p0, Lb/a/a/a/k/k;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lb/a/a/a/k/k;->c:I

    iget v0, p0, Lb/a/a/a/k/k;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/a/a/a/k/k;->b:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
