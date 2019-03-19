.class public Lb/a/a/a/i/c/a/f;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lb/a/a/a/h/b;

.field protected final b:Lb/a/a/a/e/b/b;

.field protected final c:I

.field protected final d:Lb/a/a/a/e/a/b;

.field protected final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lb/a/a/a/i/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lb/a/a/a/i/c/a/h;",
            ">;"
        }
    .end annotation
.end field

.field protected g:I


# direct methods
.method public constructor <init>(Lb/a/a/a/e/b/b;Lb/a/a/a/e/a/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/i/c/a/f;->a:Lb/a/a/a/h/b;

    iput-object p1, p0, Lb/a/a/a/i/c/a/f;->b:Lb/a/a/a/e/b/b;

    iput-object p2, p0, Lb/a/a/a/i/c/a/f;->d:Lb/a/a/a/e/a/b;

    invoke-interface {p2, p1}, Lb/a/a/a/e/a/b;->a(Lb/a/a/a/e/b/b;)I

    move-result v0

    iput v0, p0, Lb/a/a/a/i/c/a/f;->c:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i/c/a/f;->e:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i/c/a/f;->f:Ljava/util/Queue;

    const/4 v0, 0x0

    iput v0, p0, Lb/a/a/a/i/c/a/f;->g:I

    return-void
.end method


# virtual methods
.method public final a()Lb/a/a/a/e/b/b;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->b:Lb/a/a/a/e/b/b;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lb/a/a/a/i/c/a/b;
    .locals 4

    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->e:Ljava/util/LinkedList;

    iget-object v1, p0, Lb/a/a/a/i/c/a/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/i/c/a/b;

    invoke-virtual {v0}, Lb/a/a/a/i/c/a/b;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lb/a/a/a/i/c/a/b;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lb/a/a/a/i/c/a/f;->d()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/i/c/a/b;

    invoke-virtual {v0}, Lb/a/a/a/i/c/a/b;->b()V

    invoke-virtual {v0}, Lb/a/a/a/i/c/a/b;->c()Lb/a/a/a/e/q;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Lb/a/a/a/e/q;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lb/a/a/a/i/c/a/f;->a:Lb/a/a/a/h/b;

    const-string v3, "I/O error closing connection"

    invoke-virtual {v2, v3, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lb/a/a/a/i/c/a/b;)V
    .locals 3

    iget v0, p0, Lb/a/a/a/i/c/a/f;->g:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry created for this pool. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/i/c/a/f;->b:Lb/a/a/a/e/b/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lb/a/a/a/i/c/a/f;->g:I

    iget-object v1, p0, Lb/a/a/a/i/c/a/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-gt v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry allocated from this pool. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/i/c/a/f;->b:Lb/a/a/a/e/b/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lb/a/a/a/i/c/a/h;)V
    .locals 1

    const-string v0, "Waiting thread"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lb/a/a/a/i/c/a/f;->c:I

    return v0
.end method

.method public b(Lb/a/a/a/i/c/a/b;)V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->b:Lb/a/a/a/e/b/b;

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/b;->d()Lb/a/a/a/e/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/e/b/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Entry not planned for this pool"

    invoke-static {v0, v1}, Lb/a/a/a/o/a;->a(ZLjava/lang/String;)V

    iget v0, p0, Lb/a/a/a/i/c/a/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/a/i/c/a/f;->g:I

    return-void
.end method

.method public b(Lb/a/a/a/i/c/a/h;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lb/a/a/a/i/c/a/f;->g:I

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lb/a/a/a/i/c/a/f;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lb/a/a/a/i/c/a/b;)Z
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->e:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lb/a/a/a/i/c/a/f;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lb/a/a/a/i/c/a/f;->g:I

    :cond_0
    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->d:Lb/a/a/a/e/a/b;

    iget-object v1, p0, Lb/a/a/a/i/c/a/f;->b:Lb/a/a/a/e/b/b;

    invoke-interface {v0, v1}, Lb/a/a/a/e/a/b;->a(Lb/a/a/a/e/b/b;)I

    move-result v0

    iget v1, p0, Lb/a/a/a/i/c/a/f;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public e()V
    .locals 2

    iget v0, p0, Lb/a/a/a/i/c/a/f;->g:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "There is no entry that could be dropped"

    invoke-static {v0, v1}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    iget v0, p0, Lb/a/a/a/i/c/a/f;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/a/a/a/i/c/a/f;->g:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lb/a/a/a/i/c/a/h;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/a/f;->f:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/i/c/a/h;

    return-object v0
.end method
