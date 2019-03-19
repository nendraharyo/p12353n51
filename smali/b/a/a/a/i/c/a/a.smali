.class public abstract Lb/a/a/a/i/c/a/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lb/a/a/a/h/b;

.field protected final b:Ljava/util/concurrent/locks/Lock;

.field protected c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lb/a/a/a/i/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile d:Z

.field protected e:Lb/a/a/a/i/c/l;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/i/c/a/a;->a:Lb/a/a/a/h/b;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i/c/a/a;->c:Ljava/util/Set;

    new-instance v0, Lb/a/a/a/i/c/l;

    invoke-direct {v0}, Lb/a/a/a/i/c/l;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i/c/a/a;->e:Lb/a/a/a/i/c/l;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i/c/a/a;->b:Ljava/util/concurrent/locks/Lock;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/c/a/a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lb/a/a/a/i/c/a/a;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lb/a/a/a/i/c/a/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/i/c/a/b;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lb/a/a/a/i/c/a/b;->c()Lb/a/a/a/e/q;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a/a;->a(Lb/a/a/a/e/q;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lb/a/a/a/i/c/a/a;->e:Lb/a/a/a/i/c/l;

    invoke-virtual {v0}, Lb/a/a/a/i/c/l;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a/i/c/a/a;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/a;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method protected a(Lb/a/a/a/e/q;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lb/a/a/a/e/q;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/a;->a:Lb/a/a/a/h/b;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
