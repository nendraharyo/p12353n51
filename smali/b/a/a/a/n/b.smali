.class public final Lb/a/a/a/n/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/n/g;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/r;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/a/n/b;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/a/a/n/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lb/a/a/a/n/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lb/a/a/a/r;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lb/a/a/a/n/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lb/a/a/a/n/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/r;

    goto :goto_0
.end method

.method protected a(Lb/a/a/a/n/b;)V
    .locals 2

    iget-object v0, p1, Lb/a/a/a/n/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lb/a/a/a/n/b;->a:Ljava/util/List;

    iget-object v1, p0, Lb/a/a/a/n/b;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lb/a/a/a/n/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p1, Lb/a/a/a/n/b;->b:Ljava/util/List;

    iget-object v1, p0, Lb/a/a/a/n/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Lb/a/a/a/r;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/a/a/a/n/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lb/a/a/a/r;I)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/a/a/a/n/b;->a:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Lb/a/a/a/u;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/a/a/a/n/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a/r;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/a/n/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lb/a/a/a/n/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Lb/a/a/a/u;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lb/a/a/a/n/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lb/a/a/a/n/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/u;

    goto :goto_0
.end method

.method public final b(Lb/a/a/a/r;)V
    .locals 0

    invoke-virtual {p0, p1}, Lb/a/a/a/n/b;->a(Lb/a/a/a/r;)V

    return-void
.end method

.method public final b(Lb/a/a/a/r;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb/a/a/a/n/b;->a(Lb/a/a/a/r;I)V

    return-void
.end method

.method public final b(Lb/a/a/a/u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lb/a/a/a/n/b;->a(Lb/a/a/a/u;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/n/b;

    invoke-virtual {p0, v0}, Lb/a/a/a/n/b;->a(Lb/a/a/a/n/b;)V

    return-object v0
.end method

.method public process(Lb/a/a/a/q;Lb/a/a/a/n/e;)V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/n/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/r;

    invoke-interface {v0, p1, p2}, Lb/a/a/a/r;->process(Lb/a/a/a/q;Lb/a/a/a/n/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public process(Lb/a/a/a/s;Lb/a/a/a/n/e;)V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/n/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/u;

    invoke-interface {v0, p1, p2}, Lb/a/a/a/u;->process(Lb/a/a/a/s;Lb/a/a/a/n/e;)V

    goto :goto_0

    :cond_0
    return-void
.end method
