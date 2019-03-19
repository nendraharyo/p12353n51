.class public abstract Lb/a/a/a/i/b/a;
.super Lb/a/a/a/i/b/h;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lb/a/a/a/h/b;

.field private c:Lb/a/a/a/l/e;

.field private d:Lb/a/a/a/n/h;

.field private e:Lb/a/a/a/e/b;

.field private f:Lb/a/a/a/b;

.field private g:Lb/a/a/a/e/g;

.field private h:Lb/a/a/a/f/k;

.field private i:Lb/a/a/a/a/f;

.field private j:Lb/a/a/a/n/b;

.field private k:Lb/a/a/a/n/i;

.field private l:Lb/a/a/a/b/k;

.field private m:Lb/a/a/a/b/p;

.field private n:Lb/a/a/a/b/c;

.field private o:Lb/a/a/a/b/c;

.field private p:Lb/a/a/a/b/h;

.field private q:Lb/a/a/a/b/i;

.field private r:Lb/a/a/a/e/b/d;

.field private s:Lb/a/a/a/b/r;

.field private t:Lb/a/a/a/b/g;

.field private u:Lb/a/a/a/b/d;


# direct methods
.method protected constructor <init>(Lb/a/a/a/e/b;Lb/a/a/a/l/e;)V
    .locals 2

    invoke-direct {p0}, Lb/a/a/a/i/b/h;-><init>()V

    new-instance v0, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/i/b/a;->a:Lb/a/a/a/h/b;

    iput-object p2, p0, Lb/a/a/a/i/b/a;->c:Lb/a/a/a/l/e;

    iput-object p1, p0, Lb/a/a/a/i/b/a;->e:Lb/a/a/a/e/b;

    return-void
.end method

.method private declared-synchronized I()Lb/a/a/a/n/g;
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lb/a/a/a/i/b/a;->k:Lb/a/a/a/n/i;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->H()Lb/a/a/a/n/b;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/a/a/n/b;->a()I

    move-result v3

    new-array v4, v3, [Lb/a/a/a/r;

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lb/a/a/a/n/b;->a(I)Lb/a/a/a/r;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lb/a/a/a/n/b;->b()I

    move-result v1

    new-array v3, v1, [Lb/a/a/a/u;

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {v2, v0}, Lb/a/a/a/n/b;->b(I)Lb/a/a/a/u;

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lb/a/a/a/n/i;

    invoke-direct {v0, v4, v3}, Lb/a/a/a/n/i;-><init>([Lb/a/a/a/r;[Lb/a/a/a/u;)V

    iput-object v0, p0, Lb/a/a/a/i/b/a;->k:Lb/a/a/a/n/i;

    :cond_2
    iget-object v0, p0, Lb/a/a/a/i/b/a;->k:Lb/a/a/a/n/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A()Lb/a/a/a/b/p;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->m:Lb/a/a/a/b/p;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/i/b/n;

    invoke-direct {v0}, Lb/a/a/a/i/b/n;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i/b/a;->m:Lb/a/a/a/b/p;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->m:Lb/a/a/a/b/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized B()Lb/a/a/a/b/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->n:Lb/a/a/a/b/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->k()Lb/a/a/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->n:Lb/a/a/a/b/c;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->n:Lb/a/a/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C()Lb/a/a/a/b/c;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->o:Lb/a/a/a/b/c;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->l()Lb/a/a/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->o:Lb/a/a/a/b/c;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->o:Lb/a/a/a/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized D()Lb/a/a/a/b/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->p:Lb/a/a/a/b/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->m()Lb/a/a/a/b/h;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->p:Lb/a/a/a/b/h;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->p:Lb/a/a/a/b/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized E()Lb/a/a/a/b/i;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->q:Lb/a/a/a/b/i;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->n()Lb/a/a/a/b/i;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->q:Lb/a/a/a/b/i;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->q:Lb/a/a/a/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized F()Lb/a/a/a/e/b/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->r:Lb/a/a/a/e/b/d;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->o()Lb/a/a/a/e/b/d;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->r:Lb/a/a/a/e/b/d;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->r:Lb/a/a/a/e/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized G()Lb/a/a/a/b/r;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->s:Lb/a/a/a/b/r;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->p()Lb/a/a/a/b/r;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->s:Lb/a/a/a/b/r;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->s:Lb/a/a/a/b/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized H()Lb/a/a/a/n/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->j:Lb/a/a/a/n/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->b()Lb/a/a/a/n/b;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->j:Lb/a/a/a/n/b;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->j:Lb/a/a/a/n/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Lb/a/a/a/n;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/b/c/c;
    .locals 16

    const-string v2, "HTTP request"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->c()Lb/a/a/a/n/e;

    move-result-object v2

    if-nez p3, :cond_0

    move-object v15, v2

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lb/a/a/a/i/b/a;->a(Lb/a/a/a/q;)Lb/a/a/a/l/e;

    move-result-object v14

    invoke-static {v14}, Lb/a/a/a/b/d/a;->a(Lb/a/a/a/l/e;)Lb/a/a/a/b/a/a;

    move-result-object v2

    const-string v3, "http.request-config"

    invoke-interface {v15, v3, v2}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->s()Lb/a/a/a/n/h;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->r()Lb/a/a/a/e/b;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->x()Lb/a/a/a/b;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->y()Lb/a/a/a/e/g;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->F()Lb/a/a/a/e/b/d;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lb/a/a/a/i/b/a;->I()Lb/a/a/a/n/g;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->z()Lb/a/a/a/b/k;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->A()Lb/a/a/a/b/p;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->B()Lb/a/a/a/b/c;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->C()Lb/a/a/a/b/c;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->G()Lb/a/a/a/b/r;

    move-result-object v13

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v14}, Lb/a/a/a/i/b/a;->a(Lb/a/a/a/n/h;Lb/a/a/a/e/b;Lb/a/a/a/b;Lb/a/a/a/e/g;Lb/a/a/a/e/b/d;Lb/a/a/a/n/g;Lb/a/a/a/b/k;Lb/a/a/a/b/p;Lb/a/a/a/b/c;Lb/a/a/a/b/c;Lb/a/a/a/b/r;Lb/a/a/a/l/e;)Lb/a/a/a/b/q;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->F()Lb/a/a/a/e/b/d;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->u()Lb/a/a/a/b/g;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/b/a;->w()Lb/a/a/a/b/d;

    move-result-object v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    if-eqz p1, :cond_1

    move-object/from16 v2, p1

    :goto_1
    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v4, v2, v0, v15}, Lb/a/a/a/e/b/d;->a(Lb/a/a/a/n;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/e/b/b;
    :try_end_1
    .catch Lb/a/a/a/m; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1, v15}, Lb/a/a/a/b/q;->a(Lb/a/a/a/n;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/s;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/a/i/b/i;->a(Lb/a/a/a/s;)Lb/a/a/a/b/c/c;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lb/a/a/a/m; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :try_start_3
    invoke-interface {v5, v2}, Lb/a/a/a/b/g;->a(Lb/a/a/a/s;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v6, v4}, Lb/a/a/a/b/d;->a(Lb/a/a/a/e/b/b;)V
    :try_end_3
    .catch Lb/a/a/a/m; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    return-object v2

    :cond_0
    :try_start_4
    new-instance v3, Lb/a/a/a/n/c;

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v2}, Lb/a/a/a/n/c;-><init>(Lb/a/a/a/n/e;Lb/a/a/a/n/e;)V

    move-object v15, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :cond_1
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lb/a/a/a/i/b/a;->a(Lb/a/a/a/q;)Lb/a/a/a/l/e;

    move-result-object v2

    const-string v7, "http.default-host"

    invoke-interface {v2, v7}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/n;

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-interface {v5, v2}, Lb/a/a/a/b/g;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v6, v4}, Lb/a/a/a/b/d;->a(Lb/a/a/a/e/b/b;)V

    :cond_2
    throw v2
    :try_end_5
    .catch Lb/a/a/a/m; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v2

    new-instance v3, Lb/a/a/a/b/f;

    invoke-direct {v3, v2}, Lb/a/a/a/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v2

    :try_start_6
    invoke-interface {v5, v2}, Lb/a/a/a/b/g;->a(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v6, v4}, Lb/a/a/a/b/d;->a(Lb/a/a/a/e/b/b;)V

    :cond_3
    instance-of v3, v2, Lb/a/a/a/m;

    if-eqz v3, :cond_4

    check-cast v2, Lb/a/a/a/m;

    throw v2

    :cond_4
    instance-of v3, v2, Ljava/io/IOException;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/io/IOException;

    throw v2

    :cond_5
    new-instance v3, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v3, v2}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_6
    invoke-interface {v6, v4}, Lb/a/a/a/b/d;->b(Lb/a/a/a/e/b/b;)V

    goto :goto_2

    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v3, v0, v1, v15}, Lb/a/a/a/b/q;->a(Lb/a/a/a/n;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/s;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/a/i/b/i;->a(Lb/a/a/a/s;)Lb/a/a/a/b/c/c;
    :try_end_6
    .catch Lb/a/a/a/m; {:try_start_6 .. :try_end_6} :catch_1

    move-result-object v2

    goto :goto_2
.end method

.method protected a(Lb/a/a/a/n/h;Lb/a/a/a/e/b;Lb/a/a/a/b;Lb/a/a/a/e/g;Lb/a/a/a/e/b/d;Lb/a/a/a/n/g;Lb/a/a/a/b/k;Lb/a/a/a/b/p;Lb/a/a/a/b/c;Lb/a/a/a/b/c;Lb/a/a/a/b/r;Lb/a/a/a/l/e;)Lb/a/a/a/b/q;
    .locals 14

    new-instance v0, Lb/a/a/a/i/b/p;

    iget-object v1, p0, Lb/a/a/a/i/b/a;->a:Lb/a/a/a/h/b;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lb/a/a/a/i/b/p;-><init>(Lb/a/a/a/h/b;Lb/a/a/a/n/h;Lb/a/a/a/e/b;Lb/a/a/a/b;Lb/a/a/a/e/g;Lb/a/a/a/e/b/d;Lb/a/a/a/n/g;Lb/a/a/a/b/k;Lb/a/a/a/b/p;Lb/a/a/a/b/c;Lb/a/a/a/b/c;Lb/a/a/a/b/r;Lb/a/a/a/l/e;)V

    return-object v0
.end method

.method protected abstract a()Lb/a/a/a/l/e;
.end method

.method protected a(Lb/a/a/a/q;)Lb/a/a/a/l/e;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lb/a/a/a/i/b/g;

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->q()Lb/a/a/a/l/e;

    move-result-object v1

    invoke-interface {p1}, Lb/a/a/a/q;->getParams()Lb/a/a/a/l/e;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2, v3}, Lb/a/a/a/i/b/g;-><init>(Lb/a/a/a/l/e;Lb/a/a/a/l/e;Lb/a/a/a/l/e;Lb/a/a/a/l/e;)V

    return-object v0
.end method

.method public declared-synchronized a(Lb/a/a/a/b/k;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lb/a/a/a/i/b/a;->l:Lb/a/a/a/b/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lb/a/a/a/b/o;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lb/a/a/a/i/b/o;

    invoke-direct {v0, p1}, Lb/a/a/a/i/b/o;-><init>(Lb/a/a/a/b/o;)V

    iput-object v0, p0, Lb/a/a/a/i/b/a;->m:Lb/a/a/a/b/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lb/a/a/a/r;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->H()Lb/a/a/a/n/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/r;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->k:Lb/a/a/a/n/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lb/a/a/a/r;I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->H()Lb/a/a/a/n/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/n/b;->b(Lb/a/a/a/r;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->k:Lb/a/a/a/n/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lb/a/a/a/u;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->H()Lb/a/a/a/n/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/u;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->k:Lb/a/a/a/n/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lb/a/a/a/r;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->H()Lb/a/a/a/n/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/a/a/a/n/b;->a(Ljava/lang/Class;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->k:Lb/a/a/a/n/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b()Lb/a/a/a/n/b;
.end method

.method protected c()Lb/a/a/a/n/e;
    .locals 3

    new-instance v0, Lb/a/a/a/n/a;

    invoke-direct {v0}, Lb/a/a/a/n/a;-><init>()V

    const-string v1, "http.scheme-registry"

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->r()Lb/a/a/a/e/b;

    move-result-object v2

    invoke-interface {v2}, Lb/a/a/a/e/b;->a()Lb/a/a/a/e/c/i;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->t()Lb/a/a/a/a/f;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->v()Lb/a/a/a/f/k;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.cookie-store"

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->D()Lb/a/a/a/b/h;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->E()Lb/a/a/a/b/i;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->r()Lb/a/a/a/e/b;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/e/b;->b()V

    return-void
.end method

.method protected d()Lb/a/a/a/e/b;
    .locals 5

    invoke-static {}, Lb/a/a/a/i/c/p;->a()Lb/a/a/a/e/c/i;

    move-result-object v3

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->q()Lb/a/a/a/l/e;

    move-result-object v4

    const/4 v2, 0x0

    const-string v1, "http.connection-manager.factory-class-name"

    invoke-interface {v4, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lb/a/a/a/e/c;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1, v4, v3}, Lb/a/a/a/e/c;->a(Lb/a/a/a/l/e;Lb/a/a/a/e/c/i;)Lb/a/a/a/e/b;

    move-result-object v1

    :goto_1
    return-object v1

    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid class name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/IllegalAccessError;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/InstantiationError;

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Lb/a/a/a/i/c/d;

    invoke-direct {v1, v3}, Lb/a/a/a/i/c/d;-><init>(Lb/a/a/a/e/c/i;)V

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method protected e()Lb/a/a/a/a/f;
    .locals 3

    new-instance v0, Lb/a/a/a/a/f;

    invoke-direct {v0}, Lb/a/a/a/a/f;-><init>()V

    const-string v1, "Basic"

    new-instance v2, Lb/a/a/a/i/a/c;

    invoke-direct {v2}, Lb/a/a/a/i/a/c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/f;->a(Ljava/lang/String;Lb/a/a/a/a/d;)V

    const-string v1, "Digest"

    new-instance v2, Lb/a/a/a/i/a/e;

    invoke-direct {v2}, Lb/a/a/a/i/a/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/f;->a(Ljava/lang/String;Lb/a/a/a/a/d;)V

    const-string v1, "NTLM"

    new-instance v2, Lb/a/a/a/i/a/l;

    invoke-direct {v2}, Lb/a/a/a/i/a/l;-><init>()V

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/a/f;->a(Ljava/lang/String;Lb/a/a/a/a/d;)V

    return-object v0
.end method

.method protected f()Lb/a/a/a/f/k;
    .locals 3

    new-instance v0, Lb/a/a/a/f/k;

    invoke-direct {v0}, Lb/a/a/a/f/k;-><init>()V

    const-string v1, "best-match"

    new-instance v2, Lb/a/a/a/i/d/l;

    invoke-direct {v2}, Lb/a/a/a/i/d/l;-><init>()V

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/f/k;->a(Ljava/lang/String;Lb/a/a/a/f/i;)V

    const-string v1, "compatibility"

    new-instance v2, Lb/a/a/a/i/d/n;

    invoke-direct {v2}, Lb/a/a/a/i/d/n;-><init>()V

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/f/k;->a(Ljava/lang/String;Lb/a/a/a/f/i;)V

    const-string v1, "netscape"

    new-instance v2, Lb/a/a/a/i/d/v;

    invoke-direct {v2}, Lb/a/a/a/i/d/v;-><init>()V

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/f/k;->a(Ljava/lang/String;Lb/a/a/a/f/i;)V

    const-string v1, "rfc2109"

    new-instance v2, Lb/a/a/a/i/d/y;

    invoke-direct {v2}, Lb/a/a/a/i/d/y;-><init>()V

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/f/k;->a(Ljava/lang/String;Lb/a/a/a/f/i;)V

    const-string v1, "rfc2965"

    new-instance v2, Lb/a/a/a/i/d/af;

    invoke-direct {v2}, Lb/a/a/a/i/d/af;-><init>()V

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/f/k;->a(Ljava/lang/String;Lb/a/a/a/f/i;)V

    const-string v1, "ignoreCookies"

    new-instance v2, Lb/a/a/a/i/d/r;

    invoke-direct {v2}, Lb/a/a/a/i/d/r;-><init>()V

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/f/k;->a(Ljava/lang/String;Lb/a/a/a/f/i;)V

    return-object v0
.end method

.method protected g()Lb/a/a/a/n/h;
    .locals 1

    new-instance v0, Lb/a/a/a/n/h;

    invoke-direct {v0}, Lb/a/a/a/n/h;-><init>()V

    return-object v0
.end method

.method protected h()Lb/a/a/a/b;
    .locals 1

    new-instance v0, Lb/a/a/a/i/b;

    invoke-direct {v0}, Lb/a/a/a/i/b;-><init>()V

    return-object v0
.end method

.method protected i()Lb/a/a/a/e/g;
    .locals 1

    new-instance v0, Lb/a/a/a/i/b/j;

    invoke-direct {v0}, Lb/a/a/a/i/b/j;-><init>()V

    return-object v0
.end method

.method protected j()Lb/a/a/a/b/k;
    .locals 1

    new-instance v0, Lb/a/a/a/i/b/l;

    invoke-direct {v0}, Lb/a/a/a/i/b/l;-><init>()V

    return-object v0
.end method

.method protected k()Lb/a/a/a/b/c;
    .locals 1

    new-instance v0, Lb/a/a/a/i/b/y;

    invoke-direct {v0}, Lb/a/a/a/i/b/y;-><init>()V

    return-object v0
.end method

.method protected l()Lb/a/a/a/b/c;
    .locals 1

    new-instance v0, Lb/a/a/a/i/b/u;

    invoke-direct {v0}, Lb/a/a/a/i/b/u;-><init>()V

    return-object v0
.end method

.method protected m()Lb/a/a/a/b/h;
    .locals 1

    new-instance v0, Lb/a/a/a/i/b/e;

    invoke-direct {v0}, Lb/a/a/a/i/b/e;-><init>()V

    return-object v0
.end method

.method protected n()Lb/a/a/a/b/i;
    .locals 1

    new-instance v0, Lb/a/a/a/i/b/f;

    invoke-direct {v0}, Lb/a/a/a/i/b/f;-><init>()V

    return-object v0
.end method

.method protected o()Lb/a/a/a/e/b/d;
    .locals 2

    new-instance v0, Lb/a/a/a/i/c/i;

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->r()Lb/a/a/a/e/b;

    move-result-object v1

    invoke-interface {v1}, Lb/a/a/a/e/b;->a()Lb/a/a/a/e/c/i;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/i/c/i;-><init>(Lb/a/a/a/e/c/i;)V

    return-object v0
.end method

.method protected p()Lb/a/a/a/b/r;
    .locals 1

    new-instance v0, Lb/a/a/a/i/b/q;

    invoke-direct {v0}, Lb/a/a/a/i/b/q;-><init>()V

    return-object v0
.end method

.method public final declared-synchronized q()Lb/a/a/a/l/e;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->c:Lb/a/a/a/l/e;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->a()Lb/a/a/a/l/e;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->c:Lb/a/a/a/l/e;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->c:Lb/a/a/a/l/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()Lb/a/a/a/e/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->e:Lb/a/a/a/e/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->d()Lb/a/a/a/e/b;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->e:Lb/a/a/a/e/b;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->e:Lb/a/a/a/e/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized s()Lb/a/a/a/n/h;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->d:Lb/a/a/a/n/h;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->g()Lb/a/a/a/n/h;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->d:Lb/a/a/a/n/h;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->d:Lb/a/a/a/n/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t()Lb/a/a/a/a/f;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->i:Lb/a/a/a/a/f;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->e()Lb/a/a/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->i:Lb/a/a/a/a/f;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->i:Lb/a/a/a/a/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized u()Lb/a/a/a/b/g;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->t:Lb/a/a/a/b/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized v()Lb/a/a/a/f/k;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->h:Lb/a/a/a/f/k;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->f()Lb/a/a/a/f/k;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->h:Lb/a/a/a/f/k;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->h:Lb/a/a/a/f/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized w()Lb/a/a/a/b/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->u:Lb/a/a/a/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized x()Lb/a/a/a/b;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->f:Lb/a/a/a/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->h()Lb/a/a/a/b;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->f:Lb/a/a/a/b;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->f:Lb/a/a/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y()Lb/a/a/a/e/g;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->g:Lb/a/a/a/e/g;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->i()Lb/a/a/a/e/g;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->g:Lb/a/a/a/e/g;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->g:Lb/a/a/a/e/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z()Lb/a/a/a/b/k;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->l:Lb/a/a/a/b/k;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/b/a;->j()Lb/a/a/a/b/k;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/b/a;->l:Lb/a/a/a/b/k;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/b/a;->l:Lb/a/a/a/b/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
