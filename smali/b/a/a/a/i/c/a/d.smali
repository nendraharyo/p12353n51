.class public Lb/a/a/a/i/c/a/d;
.super Lb/a/a/a/i/c/a/a;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public f:Lb/a/a/a/h/b;

.field protected final g:Lb/a/a/a/e/d;

.field protected final h:Lb/a/a/a/e/a/b;

.field protected final i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lb/a/a/a/i/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field protected final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lb/a/a/a/i/c/a/b;",
            ">;"
        }
    .end annotation
.end field

.field protected final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lb/a/a/a/i/c/a/h;",
            ">;"
        }
    .end annotation
.end field

.field protected final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lb/a/a/a/e/b/b;",
            "Lb/a/a/a/i/c/a/f;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile m:Z

.field protected volatile n:I

.field protected volatile o:I

.field private final p:Ljava/util/concurrent/locks/Lock;

.field private final q:J

.field private final r:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(Lb/a/a/a/e/d;Lb/a/a/a/e/a/b;I)V
    .locals 7

    const-wide/16 v4, -0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lb/a/a/a/i/c/a/d;-><init>(Lb/a/a/a/e/d;Lb/a/a/a/e/a/b;IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/e/d;Lb/a/a/a/e/a/b;IJLjava/util/concurrent/TimeUnit;)V
    .locals 2

    invoke-direct {p0}, Lb/a/a/a/i/c/a/a;-><init>()V

    new-instance v0, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    const-string v0, "Connection operator"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Connections per route"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/i/c/a/a;->b:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lb/a/a/a/i/c/a/a;->c:Ljava/util/Set;

    iput-object v0, p0, Lb/a/a/a/i/c/a/d;->i:Ljava/util/Set;

    iput-object p1, p0, Lb/a/a/a/i/c/a/d;->g:Lb/a/a/a/e/d;

    iput-object p2, p0, Lb/a/a/a/i/c/a/d;->h:Lb/a/a/a/e/a/b;

    iput p3, p0, Lb/a/a/a/i/c/a/d;->n:I

    invoke-virtual {p0}, Lb/a/a/a/i/c/a/d;->b()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/c/a/d;->j:Ljava/util/Queue;

    invoke-virtual {p0}, Lb/a/a/a/i/c/a/d;->c()Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/c/a/d;->k:Ljava/util/Queue;

    invoke-virtual {p0}, Lb/a/a/a/i/c/a/d;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/c/a/d;->l:Ljava/util/Map;

    iput-wide p4, p0, Lb/a/a/a/i/c/a/d;->q:J

    iput-object p6, p0, Lb/a/a/a/i/c/a/d;->r:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/e/d;Lb/a/a/a/l/e;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Lb/a/a/a/e/a/a;->a(Lb/a/a/a/l/e;)Lb/a/a/a/e/a/b;

    move-result-object v0

    invoke-static {p2}, Lb/a/a/a/e/a/a;->b(Lb/a/a/a/l/e;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lb/a/a/a/i/c/a/d;-><init>(Lb/a/a/a/e/d;Lb/a/a/a/e/a/b;I)V

    return-void
.end method

.method static synthetic a(Lb/a/a/a/i/c/a/d;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private b(Lb/a/a/a/i/c/a/b;)V
    .locals 3

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/b;->c()Lb/a/a/a/e/q;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lb/a/a/a/e/q;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lb/a/a/a/e/b/b;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lb/a/a/a/i/c/a/i;)Lb/a/a/a/i/c/a/b;
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :cond_0
    const/4 v3, 0x0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/e/b/b;Z)Lb/a/a/a/i/c/a/f;

    move-result-object v2

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v3, :cond_3

    iget-boolean v3, p0, Lb/a/a/a/i/c/a/d;->m:Z

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    const-string v4, "Connection pool shut down"

    invoke-static {v3, v4}, Lb/a/a/a/o/b;->a(ZLjava/lang/String;)V

    iget-object v3, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v3}, Lb/a/a/a/h/b;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] total kept alive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lb/a/a/a/i/c/a/d;->j:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", total issued: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lb/a/a/a/i/c/a/d;->i:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", total allocated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lb/a/a/a/i/c/a/d;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lb/a/a/a/i/c/a/d;->n:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, v2, p2}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/i/c/a/f;Ljava/lang/Object;)Lb/a/a/a/i/c/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-virtual {v2}, Lb/a/a/a/i/c/a/f;->d()I

    move-result v4

    if-lez v4, :cond_7

    const/4 v4, 0x1

    :goto_2
    iget-object v5, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v5}, Lb/a/a/a/h/b;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Available capacity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lb/a/a/a/i/c/a/f;->d()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " out of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lb/a/a/a/i/c/a/f;->b()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_6
    if-eqz v4, :cond_8

    iget v5, p0, Lb/a/a/a/i/c/a/d;->o:I

    iget v6, p0, Lb/a/a/a/i/c/a/d;->n:I

    if-ge v5, v6, :cond_8

    iget-object v3, p0, Lb/a/a/a/i/c/a/d;->g:Lb/a/a/a/e/d;

    invoke-virtual {p0, v2, v3}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/i/c/a/f;Lb/a/a/a/e/d;)Lb/a/a/a/i/c/a/b;

    move-result-object v3

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    if-eqz v4, :cond_9

    iget-object v4, p0, Lb/a/a/a/i/c/a/d;->j:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lb/a/a/a/i/c/a/d;->e()V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/e/b/b;Z)Lb/a/a/a/i/c/a/f;

    move-result-object v2

    iget-object v3, p0, Lb/a/a/a/i/c/a/d;->g:Lb/a/a/a/e/d;

    invoke-virtual {p0, v2, v3}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/i/c/a/f;Lb/a/a/a/e/d;)Lb/a/a/a/i/c/a/b;

    move-result-object v3

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v4}, Lb/a/a/a/h/b;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Need to wait for connection ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_a
    if-nez v1, :cond_b

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lb/a/a/a/i/c/a/d;->a(Ljava/util/concurrent/locks/Condition;Lb/a/a/a/i/c/a/f;)Lb/a/a/a/i/c/a/h;

    move-result-object v1

    invoke-virtual {p6, v1}, Lb/a/a/a/i/c/a/i;->a(Lb/a/a/a/i/c/a/h;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_b
    :try_start_2
    invoke-virtual {v2, v1}, Lb/a/a/a/i/c/a/f;->a(Lb/a/a/a/i/c/a/h;)V

    iget-object v4, p0, Lb/a/a/a/i/c/a/d;->k:Ljava/util/Queue;

    invoke-interface {v4, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lb/a/a/a/i/c/a/h;->a(Ljava/util/Date;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    :try_start_3
    invoke-virtual {v2, v1}, Lb/a/a/a/i/c/a/f;->b(Lb/a/a/a/i/c/a/h;)V

    iget-object v5, p0, Lb/a/a/a/i/c/a/d;->k:Ljava/util/Queue;

    invoke-interface {v5, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    new-instance v0, Lb/a/a/a/e/h;

    const-string v1, "Timeout waiting for connection from pool"

    invoke-direct {v0, v1}, Lb/a/a/a/e/h;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v2, v1}, Lb/a/a/a/i/c/a/f;->b(Lb/a/a/a/i/c/a/h;)V

    iget-object v2, p0, Lb/a/a/a/i/c/a/d;->k:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected a(Lb/a/a/a/i/c/a/f;Lb/a/a/a/e/d;)Lb/a/a/a/i/c/a/b;
    .locals 7

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating new connection ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/f;->a()Lb/a/a/a/e/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lb/a/a/a/i/c/a/b;

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/f;->a()Lb/a/a/a/e/b/b;

    move-result-object v3

    iget-wide v4, p0, Lb/a/a/a/i/c/a/d;->q:J

    iget-object v6, p0, Lb/a/a/a/i/c/a/d;->r:Ljava/util/concurrent/TimeUnit;

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Lb/a/a/a/i/c/a/b;-><init>(Lb/a/a/a/e/d;Lb/a/a/a/e/b/b;JLjava/util/concurrent/TimeUnit;)V

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p1, v1}, Lb/a/a/a/i/c/a/f;->b(Lb/a/a/a/i/c/a/b;)V

    iget v0, p0, Lb/a/a/a/i/c/a/d;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/a/i/c/a/d;->o:I

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->i:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected a(Lb/a/a/a/i/c/a/f;Ljava/lang/Object;)Lb/a/a/a/i/c/a/b;
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    :try_start_0
    invoke-virtual {p1, p2}, Lb/a/a/a/i/c/a/f;->a(Ljava/lang/Object;)Lb/a/a/a/i/c/a/b;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v3}, Lb/a/a/a/h/b;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting free connection ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/f;->a()Lb/a/a/a/e/b/b;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v3, p0, Lb/a/a/a/i/c/a/d;->j:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lb/a/a/a/i/c/a/b;->a(J)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v3}, Lb/a/a/a/h/b;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing expired free connection ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/f;->a()Lb/a/a/a/e/b/b;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0, v2}, Lb/a/a/a/i/c/a/d;->b(Lb/a/a/a/i/c/a/b;)V

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/f;->e()V

    iget v3, p0, Lb/a/a/a/i/c/a/d;->o:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lb/a/a/a/i/c/a/d;->o:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->i:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No free connections ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/f;->a()Lb/a/a/a/e/b/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v2

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method public a(Lb/a/a/a/e/b/b;Ljava/lang/Object;)Lb/a/a/a/i/c/a/e;
    .locals 2

    new-instance v0, Lb/a/a/a/i/c/a/i;

    invoke-direct {v0}, Lb/a/a/a/i/c/a/i;-><init>()V

    new-instance v1, Lb/a/a/a/i/c/a/d$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lb/a/a/a/i/c/a/d$1;-><init>(Lb/a/a/a/i/c/a/d;Lb/a/a/a/i/c/a/i;Lb/a/a/a/e/b/b;Ljava/lang/Object;)V

    return-object v1
.end method

.method protected a(Lb/a/a/a/e/b/b;)Lb/a/a/a/i/c/a/f;
    .locals 2

    new-instance v0, Lb/a/a/a/i/c/a/f;

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->h:Lb/a/a/a/e/a/b;

    invoke-direct {v0, p1, v1}, Lb/a/a/a/i/c/a/f;-><init>(Lb/a/a/a/e/b/b;Lb/a/a/a/e/a/b;)V

    return-object v0
.end method

.method protected a(Lb/a/a/a/e/b/b;Z)Lb/a/a/a/i/c/a/f;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/i/c/a/f;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/e/b/b;)Lb/a/a/a/i/c/a/f;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->l:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected a(Ljava/util/concurrent/locks/Condition;Lb/a/a/a/i/c/a/f;)Lb/a/a/a/i/c/a/h;
    .locals 1

    new-instance v0, Lb/a/a/a/i/c/a/h;

    invoke-direct {v0, p1, p2}, Lb/a/a/a/i/c/a/h;-><init>(Ljava/util/concurrent/locks/Condition;Lb/a/a/a/i/c/a/f;)V

    return-object v0
.end method

.method public a()V
    .locals 5

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lb/a/a/a/i/c/a/d;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lb/a/a/a/i/c/a/d;->m:Z

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->i:Ljava/util/Set;

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

    invoke-direct {p0, v0}, Lb/a/a/a/i/c/a/d;->b(Lb/a/a/a/i/c/a/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/i/c/a/b;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget-object v2, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v2}, Lb/a/a/a/h/b;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing connection ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lb/a/a/a/i/c/a/b;->d()Lb/a/a/a/e/b/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lb/a/a/a/i/c/a/b;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_2
    invoke-direct {p0, v0}, Lb/a/a/a/i/c/a/d;->b(Lb/a/a/a/i/c/a/b;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/i/c/a/h;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v0}, Lb/a/a/a/i/c/a/h;->a()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0
.end method

.method protected a(Lb/a/a/a/i/c/a/b;)V
    .locals 4

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/b;->d()Lb/a/a/a/e/b/b;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Lb/a/a/a/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting connection ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/b;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0, p1}, Lb/a/a/a/i/c/a/d;->b(Lb/a/a/a/i/c/a/b;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/e/b/b;Z)Lb/a/a/a/i/c/a/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lb/a/a/a/i/c/a/f;->c(Lb/a/a/a/i/c/a/b;)Z

    iget v2, p0, Lb/a/a/a/i/c/a/d;->o:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lb/a/a/a/i/c/a/d;->o:I

    invoke-virtual {v1}, Lb/a/a/a/i/c/a/f;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->l:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a(Lb/a/a/a/i/c/a/b;ZJLjava/util/concurrent/TimeUnit;)V
    .locals 7

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/b;->d()Lb/a/a/a/e/b/b;

    move-result-object v1

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing connection ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/b;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lb/a/a/a/i/c/a/d;->m:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lb/a/a/a/i/c/a/d;->b(Lb/a/a/a/i/c/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/e/b/b;Z)Lb/a/a/a/i/c/a/f;

    move-result-object v2

    if-eqz p2, :cond_4

    invoke-virtual {v2}, Lb/a/a/a/i/c/a/f;->d()I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pooling connection ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/b;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]; keep alive "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v2, p1}, Lb/a/a/a/i/c/a/f;->a(Lb/a/a/a/i/c/a/b;)V

    invoke-virtual {p1, p3, p4, p5}, Lb/a/a/a/i/c/a/b;->a(JLjava/util/concurrent/TimeUnit;)V

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p0, v2}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/i/c/a/f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    const-string v0, "indefinitely"

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lb/a/a/a/i/c/a/d;->b(Lb/a/a/a/i/c/a/b;)V

    invoke-virtual {v2}, Lb/a/a/a/i/c/a/f;->e()V

    iget v0, p0, Lb/a/a/a/i/c/a/d;->o:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/a/a/a/i/c/a/d;->o:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected a(Lb/a/a/a/i/c/a/f;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lb/a/a/a/i/c/a/f;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying thread waiting on pool ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/a/i/c/a/f;->a()Lb/a/a/a/e/b/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lb/a/a/a/i/c/a/f;->g()Lb/a/a/a/i/c/a/h;

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lb/a/a/a/i/c/a/h;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->k:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    const-string v1, "Notifying thread waiting on any pool"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/i/c/a/h;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Lb/a/a/a/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    const-string v2, "Notifying no-one, there are no waiting threads"

    invoke-virtual {v1, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected b()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lb/a/a/a/i/c/a/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected c()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lb/a/a/a/i/c/a/h;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lb/a/a/a/e/b/b;",
            "Lb/a/a/a/i/c/a/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method protected e()V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/i/c/a/b;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/i/c/a/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/d;->f:Lb/a/a/a/h/b;

    const-string v1, "No free connection to delete"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d;->p:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
