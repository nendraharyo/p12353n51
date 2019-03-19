.class public Lb/a/a/a/i/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/b/q;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lb/a/a/a/h/b;

.field protected final b:Lb/a/a/a/e/b;

.field protected final c:Lb/a/a/a/e/b/d;

.field protected final d:Lb/a/a/a/b;

.field protected final e:Lb/a/a/a/e/g;

.field protected final f:Lb/a/a/a/n/h;

.field protected final g:Lb/a/a/a/n/g;

.field protected final h:Lb/a/a/a/b/k;

.field protected final i:Lb/a/a/a/b/o;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final j:Lb/a/a/a/b/p;

.field protected final k:Lb/a/a/a/b/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final l:Lb/a/a/a/b/c;

.field protected final m:Lb/a/a/a/b/b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final n:Lb/a/a/a/b/c;

.field protected final o:Lb/a/a/a/b/r;

.field protected final p:Lb/a/a/a/l/e;

.field protected q:Lb/a/a/a/e/o;

.field protected final r:Lb/a/a/a/a/h;

.field protected final s:Lb/a/a/a/a/h;

.field private final t:Lb/a/a/a/i/b/s;

.field private u:I

.field private v:I

.field private final w:I

.field private x:Lb/a/a/a/n;


# direct methods
.method public constructor <init>(Lb/a/a/a/h/b;Lb/a/a/a/n/h;Lb/a/a/a/e/b;Lb/a/a/a/b;Lb/a/a/a/e/g;Lb/a/a/a/e/b/d;Lb/a/a/a/n/g;Lb/a/a/a/b/k;Lb/a/a/a/b/p;Lb/a/a/a/b/c;Lb/a/a/a/b/c;Lb/a/a/a/b/r;Lb/a/a/a/l/e;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Log"

    invoke-static {p1, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Request executor"

    invoke-static {p2, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Client connection manager"

    invoke-static {p3, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Connection reuse strategy"

    invoke-static {p4, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Connection keep alive strategy"

    invoke-static {p5, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Route planner"

    invoke-static {p6, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "HTTP protocol processor"

    invoke-static {p7, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "HTTP request retry handler"

    invoke-static {p8, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Redirect strategy"

    invoke-static {p9, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Target authentication strategy"

    invoke-static {p10, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "Proxy authentication strategy"

    invoke-static {p11, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "User token handler"

    move-object/from16 v0, p12

    invoke-static {v0, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "HTTP parameters"

    move-object/from16 v0, p13

    invoke-static {v0, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    new-instance v1, Lb/a/a/a/i/b/s;

    invoke-direct {v1, p1}, Lb/a/a/a/i/b/s;-><init>(Lb/a/a/a/h/b;)V

    iput-object v1, p0, Lb/a/a/a/i/b/p;->t:Lb/a/a/a/i/b/s;

    iput-object p2, p0, Lb/a/a/a/i/b/p;->f:Lb/a/a/a/n/h;

    iput-object p3, p0, Lb/a/a/a/i/b/p;->b:Lb/a/a/a/e/b;

    iput-object p4, p0, Lb/a/a/a/i/b/p;->d:Lb/a/a/a/b;

    iput-object p5, p0, Lb/a/a/a/i/b/p;->e:Lb/a/a/a/e/g;

    iput-object p6, p0, Lb/a/a/a/i/b/p;->c:Lb/a/a/a/e/b/d;

    iput-object p7, p0, Lb/a/a/a/i/b/p;->g:Lb/a/a/a/n/g;

    iput-object p8, p0, Lb/a/a/a/i/b/p;->h:Lb/a/a/a/b/k;

    iput-object p9, p0, Lb/a/a/a/i/b/p;->j:Lb/a/a/a/b/p;

    iput-object p10, p0, Lb/a/a/a/i/b/p;->l:Lb/a/a/a/b/c;

    iput-object p11, p0, Lb/a/a/a/i/b/p;->n:Lb/a/a/a/b/c;

    move-object/from16 v0, p12

    iput-object v0, p0, Lb/a/a/a/i/b/p;->o:Lb/a/a/a/b/r;

    move-object/from16 v0, p13

    iput-object v0, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    instance-of v1, p9, Lb/a/a/a/i/b/o;

    if-eqz v1, :cond_0

    check-cast p9, Lb/a/a/a/i/b/o;

    invoke-virtual {p9}, Lb/a/a/a/i/b/o;->a()Lb/a/a/a/b/o;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/i/b/p;->i:Lb/a/a/a/b/o;

    :goto_0
    instance-of v1, p10, Lb/a/a/a/i/b/b;

    if-eqz v1, :cond_1

    check-cast p10, Lb/a/a/a/i/b/b;

    invoke-virtual {p10}, Lb/a/a/a/i/b/b;->a()Lb/a/a/a/b/b;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/i/b/p;->k:Lb/a/a/a/b/b;

    :goto_1
    instance-of v1, p11, Lb/a/a/a/i/b/b;

    if-eqz v1, :cond_2

    check-cast p11, Lb/a/a/a/i/b/b;

    invoke-virtual {p11}, Lb/a/a/a/i/b/b;->a()Lb/a/a/a/b/b;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/i/b/p;->m:Lb/a/a/a/b/b;

    :goto_2
    const/4 v1, 0x0

    iput-object v1, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    const/4 v1, 0x0

    iput v1, p0, Lb/a/a/a/i/b/p;->u:I

    const/4 v1, 0x0

    iput v1, p0, Lb/a/a/a/i/b/p;->v:I

    new-instance v1, Lb/a/a/a/a/h;

    invoke-direct {v1}, Lb/a/a/a/a/h;-><init>()V

    iput-object v1, p0, Lb/a/a/a/i/b/p;->r:Lb/a/a/a/a/h;

    new-instance v1, Lb/a/a/a/a/h;

    invoke-direct {v1}, Lb/a/a/a/a/h;-><init>()V

    iput-object v1, p0, Lb/a/a/a/i/b/p;->s:Lb/a/a/a/a/h;

    iget-object v1, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    const-string v2, "http.protocol.max-redirects"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Lb/a/a/a/l/e;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lb/a/a/a/i/b/p;->w:I

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lb/a/a/a/i/b/p;->i:Lb/a/a/a/b/o;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lb/a/a/a/i/b/p;->k:Lb/a/a/a/b/b;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lb/a/a/a/i/b/p;->m:Lb/a/a/a/b/b;

    goto :goto_2
.end method

.method private a(Lb/a/a/a/q;)Lb/a/a/a/i/b/w;
    .locals 1

    instance-of v0, p1, Lb/a/a/a/l;

    if-eqz v0, :cond_0

    new-instance v0, Lb/a/a/a/i/b/r;

    check-cast p1, Lb/a/a/a/l;

    invoke-direct {v0, p1}, Lb/a/a/a/i/b/r;-><init>(Lb/a/a/a/l;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lb/a/a/a/i/b/w;

    invoke-direct {v0, p1}, Lb/a/a/a/i/b/w;-><init>(Lb/a/a/a/q;)V

    goto :goto_0
.end method

.method private a(Lb/a/a/a/i/b/x;Lb/a/a/a/n/e;)V
    .locals 7

    invoke-virtual {p1}, Lb/a/a/a/i/b/x;->b()Lb/a/a/a/e/b/b;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/a/i/b/x;->a()Lb/a/a/a/i/b/w;

    move-result-object v3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string v1, "http.request"

    invoke-interface {p2, v1, v3}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    :try_start_0
    iget-object v1, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v1}, Lb/a/a/a/e/o;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    iget-object v4, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-interface {v1, v2, p2, v4}, Lb/a/a/a/e/o;->a(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    :goto_1
    invoke-virtual {p0, v2, p2}, Lb/a/a/a/i/b/p;->a(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;)V

    return-void

    :cond_1
    iget-object v1, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    iget-object v4, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-static {v4}, Lb/a/a/a/l/c;->a(Lb/a/a/a/l/e;)I

    move-result v4

    invoke-interface {v1, v4}, Lb/a/a/a/e/o;->b(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v4, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v4}, Lb/a/a/a/e/o;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v4, p0, Lb/a/a/a/i/b/p;->h:Lb/a/a/a/b/k;

    invoke-interface {v4, v1, v0, p2}, Lb/a/a/a/b/k;->retryRequest(Ljava/io/IOException;ILb/a/a/a/n/e;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v4}, Lb/a/a/a/h/b;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O exception ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") caught when connecting to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/a/a/a/h/b;->d(Ljava/lang/Object;)V

    iget-object v4, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v4}, Lb/a/a/a/h/b;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v1, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrying connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lb/a/a/a/h/b;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    throw v1

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private b(Lb/a/a/a/i/b/x;Lb/a/a/a/n/e;)Lb/a/a/a/s;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lb/a/a/a/i/b/x;->a()Lb/a/a/a/i/b/w;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/a/i/b/x;->b()Lb/a/a/a/e/b/b;

    move-result-object v3

    move-object v0, v1

    :cond_0
    :goto_0
    iget v4, p0, Lb/a/a/a/i/b/p;->u:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lb/a/a/a/i/b/p;->u:I

    invoke-virtual {v2}, Lb/a/a/a/i/b/w;->e()V

    invoke-virtual {v2}, Lb/a/a/a/i/b/w;->a()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v1, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v2, "Cannot retry non-repeatable request"

    invoke-virtual {v1, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    new-instance v1, Lb/a/a/a/b/m;

    const-string v2, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {v1, v2, v0}, Lb/a/a/a/b/m;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Lb/a/a/a/b/m;

    const-string v1, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v0, v1}, Lb/a/a/a/b/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->c()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Lb/a/a/a/e/b/b;->e()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v4, "Reopening the direct connection."

    invoke-virtual {v0, v4}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    iget-object v4, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-interface {v0, v3, p2, v4}, Lb/a/a/a/e/o;->a(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    :cond_3
    iget-object v0, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lb/a/a/a/i/b/p;->u:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to execute request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lb/a/a/a/i/b/p;->f:Lb/a/a/a/n/h;

    iget-object v4, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-virtual {v0, v2, v4, p2}, Lb/a/a/a/n/h;->a(Lb/a/a/a/q;Lb/a/a/a/i;Lb/a/a/a/n/e;)Lb/a/a/a/s;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_5
    iget-object v0, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v4, "Proxied connection. Need to start over."

    invoke-virtual {v0, v4}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v4, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v5, "Closing the connection."

    invoke-virtual {v4, v5}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :try_start_1
    iget-object v4, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v4}, Lb/a/a/a/e/o;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v4, p0, Lb/a/a/a/i/b/p;->h:Lb/a/a/a/b/k;

    invoke-virtual {v2}, Lb/a/a/a/i/b/w;->d()I

    move-result v5

    invoke-interface {v4, v0, v5, p2}, Lb/a/a/a/b/k;->retryRequest(Ljava/io/IOException;ILb/a/a/a/n/e;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v4}, Lb/a/a/a/h/b;->d()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I/O exception ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") caught when processing request to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/a/a/a/h/b;->d(Ljava/lang/Object;)V

    :cond_6
    iget-object v4, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v4}, Lb/a/a/a/h/b;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_7
    iget-object v4, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v4}, Lb/a/a/a/h/b;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrying request to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/a/a/a/h/b;->d(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_8
    instance-of v1, v0, Lb/a/a/a/z;

    if-eqz v1, :cond_9

    new-instance v1, Lb/a/a/a/z;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lb/a/a/a/e/b/b;->a()Lb/a/a/a/n;

    move-result-object v3

    invoke-virtual {v3}, Lb/a/a/a/n;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to respond"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lb/a/a/a/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/a/a/a/z;->setStackTrace([Ljava/lang/StackTraceElement;)V

    throw v1

    :cond_9
    throw v0

    :catch_1
    move-exception v4

    goto/16 :goto_2
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    :try_start_0
    invoke-interface {v0}, Lb/a/a/a/e/o;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v0}, Lb/a/a/a/e/o;->b_()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v2}, Lb/a/a/a/h/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v2, "Error releasing connection"

    invoke-virtual {v1, v2, v0}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected a(Lb/a/a/a/i/b/x;Lb/a/a/a/s;Lb/a/a/a/n/e;)Lb/a/a/a/i/b/x;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lb/a/a/a/i/b/x;->b()Lb/a/a/a/e/b/b;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lb/a/a/a/i/b/x;->a()Lb/a/a/a/i/b/w;

    move-result-object v13

    invoke-virtual {v13}, Lb/a/a/a/i/b/w;->getParams()Lb/a/a/a/l/e;

    move-result-object v14

    invoke-static {v14}, Lb/a/a/a/b/d/b;->b(Lb/a/a/a/l/e;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "http.target_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/n;

    if-nez v2, :cond_0

    invoke-virtual {v12}, Lb/a/a/a/e/b/b;->a()Lb/a/a/a/n;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Lb/a/a/a/n;->b()I

    move-result v3

    if-gez v3, :cond_9

    iget-object v3, p0, Lb/a/a/a/i/b/p;->b:Lb/a/a/a/e/b;

    invoke-interface {v3}, Lb/a/a/a/e/b;->a()Lb/a/a/a/e/c/i;

    move-result-object v3

    invoke-virtual {v3, v2}, Lb/a/a/a/e/c/i;->a(Lb/a/a/a/n;)Lb/a/a/a/e/c/e;

    move-result-object v4

    new-instance v3, Lb/a/a/a/n;

    invoke-virtual {v2}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lb/a/a/a/e/c/e;->a()I

    move-result v4

    invoke-virtual {v2}, Lb/a/a/a/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v5, v4, v2}, Lb/a/a/a/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lb/a/a/a/i/b/p;->t:Lb/a/a/a/i/b/s;

    iget-object v5, p0, Lb/a/a/a/i/b/p;->l:Lb/a/a/a/b/c;

    iget-object v6, p0, Lb/a/a/a/i/b/p;->r:Lb/a/a/a/a/h;

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v7}, Lb/a/a/a/i/b/s;->a(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/b/c;Lb/a/a/a/a/h;Lb/a/a/a/n/e;)Z

    move-result v2

    invoke-virtual {v12}, Lb/a/a/a/e/b/b;->d()Lb/a/a/a/n;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v12}, Lb/a/a/a/e/b/b;->a()Lb/a/a/a/n;

    move-result-object v5

    :cond_1
    iget-object v4, p0, Lb/a/a/a/i/b/p;->t:Lb/a/a/a/i/b/s;

    iget-object v7, p0, Lb/a/a/a/i/b/p;->n:Lb/a/a/a/b/c;

    iget-object v8, p0, Lb/a/a/a/i/b/p;->s:Lb/a/a/a/a/h;

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lb/a/a/a/i/b/s;->a(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/b/c;Lb/a/a/a/a/h;Lb/a/a/a/n/e;)Z

    move-result v4

    if-eqz v2, :cond_3

    iget-object v6, p0, Lb/a/a/a/i/b/p;->t:Lb/a/a/a/i/b/s;

    iget-object v9, p0, Lb/a/a/a/i/b/p;->l:Lb/a/a/a/b/c;

    iget-object v10, p0, Lb/a/a/a/i/b/p;->r:Lb/a/a/a/a/h;

    move-object v7, v3

    move-object/from16 v8, p2

    move-object/from16 v11, p3

    invoke-virtual/range {v6 .. v11}, Lb/a/a/a/i/b/s;->c(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/b/c;Lb/a/a/a/a/h;Lb/a/a/a/n/e;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    return-object p1

    :cond_3
    if-eqz v4, :cond_4

    iget-object v4, p0, Lb/a/a/a/i/b/p;->t:Lb/a/a/a/i/b/s;

    iget-object v7, p0, Lb/a/a/a/i/b/p;->n:Lb/a/a/a/b/c;

    iget-object v8, p0, Lb/a/a/a/i/b/p;->s:Lb/a/a/a/a/h;

    move-object/from16 v6, p2

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Lb/a/a/a/i/b/s;->c(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/b/c;Lb/a/a/a/a/h;Lb/a/a/a/n/e;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    invoke-static {v14}, Lb/a/a/a/b/d/b;->a(Lb/a/a/a/l/e;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lb/a/a/a/i/b/p;->j:Lb/a/a/a/b/p;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v2, v13, v0, v1}, Lb/a/a/a/b/p;->a(Lb/a/a/a/q;Lb/a/a/a/s;Lb/a/a/a/n/e;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lb/a/a/a/i/b/p;->v:I

    iget v3, p0, Lb/a/a/a/i/b/p;->w:I

    if-lt v2, v3, :cond_5

    new-instance v2, Lb/a/a/a/b/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum redirects ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lb/a/a/a/i/b/p;->w:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") exceeded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lb/a/a/a/b/n;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    iget v2, p0, Lb/a/a/a/i/b/p;->v:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/a/a/a/i/b/p;->v:I

    const/4 v2, 0x0

    iput-object v2, p0, Lb/a/a/a/i/b/p;->x:Lb/a/a/a/n;

    iget-object v2, p0, Lb/a/a/a/i/b/p;->j:Lb/a/a/a/b/p;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v2, v13, v0, v1}, Lb/a/a/a/b/p;->b(Lb/a/a/a/q;Lb/a/a/a/s;Lb/a/a/a/n/e;)Lb/a/a/a/b/c/l;

    move-result-object v2

    invoke-virtual {v13}, Lb/a/a/a/i/b/w;->c()Lb/a/a/a/q;

    move-result-object v3

    invoke-interface {v3}, Lb/a/a/a/q;->getAllHeaders()[Lb/a/a/a/e;

    move-result-object v3

    invoke-interface {v2, v3}, Lb/a/a/a/b/c/l;->setHeaders([Lb/a/a/a/e;)V

    invoke-interface {v2}, Lb/a/a/a/b/c/l;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-static {v3}, Lb/a/a/a/b/f/d;->b(Ljava/net/URI;)Lb/a/a/a/n;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v2, Lb/a/a/a/ab;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Redirect URI does not specify a valid host name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lb/a/a/a/ab;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-virtual {v12}, Lb/a/a/a/e/b/b;->a()Lb/a/a/a/n;

    move-result-object v5

    invoke-virtual {v5, v4}, Lb/a/a/a/n;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v6, "Resetting target auth state"

    invoke-virtual {v5, v6}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    iget-object v5, p0, Lb/a/a/a/i/b/p;->r:Lb/a/a/a/a/h;

    invoke-virtual {v5}, Lb/a/a/a/a/h;->a()V

    iget-object v5, p0, Lb/a/a/a/i/b/p;->s:Lb/a/a/a/a/h;

    invoke-virtual {v5}, Lb/a/a/a/a/h;->c()Lb/a/a/a/a/c;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5}, Lb/a/a/a/a/c;->c()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v6, "Resetting proxy auth state"

    invoke-virtual {v5, v6}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    iget-object v5, p0, Lb/a/a/a/i/b/p;->s:Lb/a/a/a/a/h;

    invoke-virtual {v5}, Lb/a/a/a/a/h;->a()V

    :cond_7
    invoke-direct {p0, v2}, Lb/a/a/a/i/b/p;->a(Lb/a/a/a/q;)Lb/a/a/a/i/b/w;

    move-result-object v2

    invoke-virtual {v2, v14}, Lb/a/a/a/i/b/w;->setParams(Lb/a/a/a/l/e;)V

    move-object/from16 v0, p3

    invoke-virtual {p0, v4, v2, v0}, Lb/a/a/a/i/b/p;->b(Lb/a/a/a/n;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/e/b/b;

    move-result-object v4

    new-instance p1, Lb/a/a/a/i/b/x;

    move-object/from16 v0, p1

    invoke-direct {v0, v2, v4}, Lb/a/a/a/i/b/x;-><init>(Lb/a/a/a/i/b/w;Lb/a/a/a/e/b/b;)V

    iget-object v2, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v2}, Lb/a/a/a/h/b;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Redirecting to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' via "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    const/16 p1, 0x0

    goto/16 :goto_1

    :cond_9
    move-object v3, v2

    goto/16 :goto_0
.end method

.method public a(Lb/a/a/a/n;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/s;
    .locals 13

    const/4 v4, 0x0

    const/4 v7, -0x1

    const-string v2, "http.auth.target-scope"

    iget-object v3, p0, Lb/a/a/a/i/b/p;->r:Lb/a/a/a/a/h;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http.auth.proxy-scope"

    iget-object v3, p0, Lb/a/a/a/i/b/p;->s:Lb/a/a/a/a/h;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lb/a/a/a/i/b/p;->a(Lb/a/a/a/q;)Lb/a/a/a/i/b/w;

    move-result-object v3

    iget-object v2, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-virtual {v3, v2}, Lb/a/a/a/i/b/w;->setParams(Lb/a/a/a/l/e;)V

    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v3, v0}, Lb/a/a/a/i/b/p;->b(Lb/a/a/a/n;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/e/b/b;

    move-result-object v6

    invoke-virtual {v3}, Lb/a/a/a/i/b/w;->getParams()Lb/a/a/a/l/e;

    move-result-object v2

    const-string v5, "http.virtual-host"

    invoke-interface {v2, v5}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/n;

    iput-object v2, p0, Lb/a/a/a/i/b/p;->x:Lb/a/a/a/n;

    iget-object v2, p0, Lb/a/a/a/i/b/p;->x:Lb/a/a/a/n;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lb/a/a/a/i/b/p;->x:Lb/a/a/a/n;

    invoke-virtual {v2}, Lb/a/a/a/n;->b()I

    move-result v2

    if-ne v2, v7, :cond_0

    if-eqz p1, :cond_7

    move-object v2, p1

    :goto_0
    invoke-virtual {v2}, Lb/a/a/a/n;->b()I

    move-result v2

    if-eq v2, v7, :cond_0

    new-instance v5, Lb/a/a/a/n;

    iget-object v7, p0, Lb/a/a/a/i/b/p;->x:Lb/a/a/a/n;

    invoke-virtual {v7}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lb/a/a/a/i/b/p;->x:Lb/a/a/a/n;

    invoke-virtual {v8}, Lb/a/a/a/n;->c()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v2, v8}, Lb/a/a/a/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v5, p0, Lb/a/a/a/i/b/p;->x:Lb/a/a/a/n;

    :cond_0
    new-instance v5, Lb/a/a/a/i/b/x;

    invoke-direct {v5, v3, v6}, Lb/a/a/a/i/b/x;-><init>(Lb/a/a/a/i/b/w;Lb/a/a/a/e/b/b;)V

    const/4 v2, 0x0

    move v7, v4

    :goto_1
    if-nez v4, :cond_9

    :try_start_0
    invoke-virtual {v5}, Lb/a/a/a/i/b/x;->a()Lb/a/a/a/i/b/w;

    move-result-object v6

    invoke-virtual {v5}, Lb/a/a/a/i/b/x;->b()Lb/a/a/a/e/b/b;

    move-result-object v8

    const-string v2, "http.user-token"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v2, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    if-nez v2, :cond_2

    iget-object v2, p0, Lb/a/a/a/i/b/p;->b:Lb/a/a/a/e/b;

    invoke-interface {v2, v8, v3}, Lb/a/a/a/e/b;->a(Lb/a/a/a/e/b/b;Ljava/lang/Object;)Lb/a/a/a/e/e;

    move-result-object v9

    instance-of v2, p2, Lb/a/a/a/b/c/a;

    if-eqz v2, :cond_1

    move-object v0, p2

    check-cast v0, Lb/a/a/a/b/c/a;

    move-object v2, v0

    invoke-interface {v2, v9}, Lb/a/a/a/b/c/a;->setConnectionRequest(Lb/a/a/a/e/e;)V

    :cond_1
    iget-object v2, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-static {v2}, Lb/a/a/a/b/d/b;->c(Lb/a/a/a/l/e;)J
    :try_end_0
    .catch Lb/a/a/a/i/c/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lb/a/a/a/m; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-wide v10

    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v9, v10, v11, v2}, Lb/a/a/a/e/e;->a(JLjava/util/concurrent/TimeUnit;)Lb/a/a/a/e/o;

    move-result-object v2

    iput-object v2, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lb/a/a/a/i/c/e; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lb/a/a/a/m; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    iget-object v2, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-static {v2}, Lb/a/a/a/l/c;->f(Lb/a/a/a/l/e;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v2}, Lb/a/a/a/e/o;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v9, "Stale connection check"

    invoke-virtual {v2, v9}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v2}, Lb/a/a/a/e/o;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v9, "Stale connection detected"

    invoke-virtual {v2, v9}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v2}, Lb/a/a/a/e/o;->close()V

    :cond_2
    instance-of v2, p2, Lb/a/a/a/b/c/a;

    if-eqz v2, :cond_3

    move-object v0, p2

    check-cast v0, Lb/a/a/a/b/c/a;

    move-object v2, v0

    iget-object v9, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v2, v9}, Lb/a/a/a/b/c/a;->setReleaseTrigger(Lb/a/a/a/e/i;)V
    :try_end_2
    .catch Lb/a/a/a/i/c/e; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lb/a/a/a/m; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_3
    :try_start_3
    move-object/from16 v0, p3

    invoke-direct {p0, v5, v0}, Lb/a/a/a/i/b/p;->a(Lb/a/a/a/i/b/x;Lb/a/a/a/n/e;)V
    :try_end_3
    .catch Lb/a/a/a/i/b/z; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lb/a/a/a/i/c/e; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lb/a/a/a/m; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    invoke-virtual {v6}, Lb/a/a/a/i/b/w;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v9, p0, Lb/a/a/a/i/b/p;->r:Lb/a/a/a/a/h;

    new-instance v10, Lb/a/a/a/i/a/b;

    invoke-direct {v10}, Lb/a/a/a/i/a/b;-><init>()V

    new-instance v11, Lb/a/a/a/a/r;

    invoke-direct {v11, v2}, Lb/a/a/a/a/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Lb/a/a/a/a/h;->a(Lb/a/a/a/a/c;Lb/a/a/a/a/m;)V

    :cond_4
    iget-object v2, p0, Lb/a/a/a/i/b/p;->x:Lb/a/a/a/n;

    if-eqz v2, :cond_c

    iget-object p1, p0, Lb/a/a/a/i/b/p;->x:Lb/a/a/a/n;

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    invoke-virtual {v8}, Lb/a/a/a/e/b/b;->a()Lb/a/a/a/n;

    move-result-object p1

    :cond_6
    invoke-virtual {v6}, Lb/a/a/a/i/b/w;->b()V

    invoke-virtual {p0, v6, v8}, Lb/a/a/a/i/b/p;->a(Lb/a/a/a/i/b/w;Lb/a/a/a/e/b/b;)V

    const-string v2, "http.target_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v2, p1}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http.route"

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v8}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http.connection"

    iget-object v8, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v8}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lb/a/a/a/i/b/p;->f:Lb/a/a/a/n/h;

    iget-object v8, p0, Lb/a/a/a/i/b/p;->g:Lb/a/a/a/n/g;

    move-object/from16 v0, p3

    invoke-virtual {v2, v6, v8, v0}, Lb/a/a/a/n/h;->a(Lb/a/a/a/q;Lb/a/a/a/n/g;Lb/a/a/a/n/e;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v5, v0}, Lb/a/a/a/i/b/p;->b(Lb/a/a/a/i/b/x;Lb/a/a/a/n/e;)Lb/a/a/a/s;
    :try_end_4
    .catch Lb/a/a/a/i/c/e; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lb/a/a/a/m; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v6

    if-nez v6, :cond_d

    move-object v2, v6

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v6}, Lb/a/a/a/e/b/b;->a()Lb/a/a/a/n;

    move-result-object v2

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    throw v2
    :try_end_5
    .catch Lb/a/a/a/i/c/e; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lb/a/a/a/m; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    :catch_1
    move-exception v2

    new-instance v3, Ljava/io/InterruptedIOException;

    const-string v4, "Connection has been shut down"

    invoke-direct {v3, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3

    :catch_2
    move-exception v2

    :try_start_6
    iget-object v3, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v3}, Lb/a/a/a/h/b;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v2}, Lb/a/a/a/i/b/z;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v2}, Lb/a/a/a/i/b/z;->a()Lb/a/a/a/s;

    move-result-object v2

    :cond_9
    if-eqz v2, :cond_a

    invoke-interface {v2}, Lb/a/a/a/s;->b()Lb/a/a/a/k;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Lb/a/a/a/s;->b()Lb/a/a/a/k;

    move-result-object v3

    invoke-interface {v3}, Lb/a/a/a/k;->isStreaming()Z

    move-result v3

    if-nez v3, :cond_17

    :cond_a
    if-eqz v7, :cond_b

    iget-object v3, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v3}, Lb/a/a/a/e/o;->i()V

    :cond_b
    invoke-virtual {p0}, Lb/a/a/a/i/b/p;->a()V

    :goto_3
    return-object v2

    :cond_c
    invoke-virtual {v6}, Lb/a/a/a/i/b/w;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v2}, Lb/a/a/a/b/f/d;->b(Ljava/net/URI;)Lb/a/a/a/n;

    move-result-object p1

    goto/16 :goto_2

    :cond_d
    iget-object v2, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-interface {v6, v2}, Lb/a/a/a/s;->setParams(Lb/a/a/a/l/e;)V

    iget-object v2, p0, Lb/a/a/a/i/b/p;->f:Lb/a/a/a/n/h;

    iget-object v7, p0, Lb/a/a/a/i/b/p;->g:Lb/a/a/a/n/g;

    move-object/from16 v0, p3

    invoke-virtual {v2, v6, v7, v0}, Lb/a/a/a/n/h;->a(Lb/a/a/a/s;Lb/a/a/a/n/g;Lb/a/a/a/n/e;)V

    iget-object v2, p0, Lb/a/a/a/i/b/p;->d:Lb/a/a/a/b;

    move-object/from16 v0, p3

    invoke-interface {v2, v6, v0}, Lb/a/a/a/b;->a(Lb/a/a/a/s;Lb/a/a/a/n/e;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v2, p0, Lb/a/a/a/i/b/p;->e:Lb/a/a/a/e/g;

    move-object/from16 v0, p3

    invoke-interface {v2, v6, v0}, Lb/a/a/a/e/g;->a(Lb/a/a/a/s;Lb/a/a/a/n/e;)J

    move-result-wide v8

    iget-object v2, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    invoke-virtual {v2}, Lb/a/a/a/h/b;->a()Z

    move-result v2

    if-eqz v2, :cond_e

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-lez v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "for "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    iget-object v10, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connection can be kept alive "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_e
    iget-object v2, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v8, v9, v10}, Lb/a/a/a/e/o;->a(JLjava/util/concurrent/TimeUnit;)V

    :cond_f
    move-object/from16 v0, p3

    invoke-virtual {p0, v5, v6, v0}, Lb/a/a/a/i/b/p;->a(Lb/a/a/a/i/b/x;Lb/a/a/a/s;Lb/a/a/a/n/e;)Lb/a/a/a/i/b/x;

    move-result-object v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    move v4, v2

    :goto_5
    iget-object v2, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    if-eqz v2, :cond_10

    if-nez v3, :cond_18

    iget-object v2, p0, Lb/a/a/a/i/b/p;->o:Lb/a/a/a/b/r;

    move-object/from16 v0, p3

    invoke-interface {v2, v0}, Lb/a/a/a/b/r;->a(Lb/a/a/a/n/e;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "http.user-token"

    move-object/from16 v0, p3

    invoke-interface {v0, v3, v2}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_6
    if-eqz v2, :cond_10

    iget-object v3, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v3, v2}, Lb/a/a/a/e/o;->a(Ljava/lang/Object;)V

    :cond_10
    move-object v2, v6

    goto/16 :goto_1

    :cond_11
    const-string v2, "indefinitely"

    goto :goto_4

    :cond_12
    if-eqz v7, :cond_15

    invoke-interface {v6}, Lb/a/a/a/s;->b()Lb/a/a/a/k;

    move-result-object v8

    invoke-static {v8}, Lb/a/a/a/o/f;->a(Lb/a/a/a/k;)V

    iget-object v8, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v8}, Lb/a/a/a/e/o;->i()V

    :cond_13
    :goto_7
    invoke-virtual {v2}, Lb/a/a/a/i/b/x;->b()Lb/a/a/a/e/b/b;

    move-result-object v8

    invoke-virtual {v5}, Lb/a/a/a/i/b/x;->b()Lb/a/a/a/e/b/b;

    move-result-object v5

    invoke-virtual {v8, v5}, Lb/a/a/a/e/b/b;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {p0}, Lb/a/a/a/i/b/p;->a()V

    :cond_14
    move-object v5, v2

    goto :goto_5

    :cond_15
    iget-object v8, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v8}, Lb/a/a/a/e/o;->close()V

    iget-object v8, p0, Lb/a/a/a/i/b/p;->s:Lb/a/a/a/a/h;

    invoke-virtual {v8}, Lb/a/a/a/a/h;->b()Lb/a/a/a/a/b;

    move-result-object v8

    sget-object v9, Lb/a/a/a/a/b;->b:Lb/a/a/a/a/b;

    invoke-virtual {v8, v9}, Lb/a/a/a/a/b;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-lez v8, :cond_16

    iget-object v8, p0, Lb/a/a/a/i/b/p;->s:Lb/a/a/a/a/h;

    invoke-virtual {v8}, Lb/a/a/a/a/h;->c()Lb/a/a/a/a/c;

    move-result-object v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lb/a/a/a/i/b/p;->s:Lb/a/a/a/a/h;

    invoke-virtual {v8}, Lb/a/a/a/a/h;->c()Lb/a/a/a/a/c;

    move-result-object v8

    invoke-interface {v8}, Lb/a/a/a/a/c;->c()Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v9, "Resetting proxy auth state"

    invoke-virtual {v8, v9}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    iget-object v8, p0, Lb/a/a/a/i/b/p;->s:Lb/a/a/a/a/h;

    invoke-virtual {v8}, Lb/a/a/a/a/h;->a()V

    :cond_16
    iget-object v8, p0, Lb/a/a/a/i/b/p;->r:Lb/a/a/a/a/h;

    invoke-virtual {v8}, Lb/a/a/a/a/h;->b()Lb/a/a/a/a/b;

    move-result-object v8

    sget-object v9, Lb/a/a/a/a/b;->b:Lb/a/a/a/a/b;

    invoke-virtual {v8, v9}, Lb/a/a/a/a/b;->compareTo(Ljava/lang/Enum;)I

    move-result v8

    if-lez v8, :cond_13

    iget-object v8, p0, Lb/a/a/a/i/b/p;->r:Lb/a/a/a/a/h;

    invoke-virtual {v8}, Lb/a/a/a/a/h;->c()Lb/a/a/a/a/c;

    move-result-object v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lb/a/a/a/i/b/p;->r:Lb/a/a/a/a/h;

    invoke-virtual {v8}, Lb/a/a/a/a/h;->c()Lb/a/a/a/a/c;

    move-result-object v8

    invoke-interface {v8}, Lb/a/a/a/a/c;->c()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v9, "Resetting target auth state"

    invoke-virtual {v8, v9}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    iget-object v8, p0, Lb/a/a/a/i/b/p;->r:Lb/a/a/a/a/h;

    invoke-virtual {v8}, Lb/a/a/a/a/h;->a()V
    :try_end_6
    .catch Lb/a/a/a/i/c/e; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lb/a/a/a/m; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    :catch_3
    move-exception v2

    invoke-direct {p0}, Lb/a/a/a/i/b/p;->b()V

    throw v2

    :cond_17
    :try_start_7
    invoke-interface {v2}, Lb/a/a/a/s;->b()Lb/a/a/a/k;

    move-result-object v3

    new-instance v4, Lb/a/a/a/e/a;

    iget-object v5, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-direct {v4, v3, v5, v7}, Lb/a/a/a/e/a;-><init>(Lb/a/a/a/k;Lb/a/a/a/e/o;Z)V

    invoke-interface {v2, v4}, Lb/a/a/a/s;->a(Lb/a/a/a/k;)V
    :try_end_7
    .catch Lb/a/a/a/i/c/e; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lb/a/a/a/m; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_3

    :catch_4
    move-exception v2

    invoke-direct {p0}, Lb/a/a/a/i/b/p;->b()V

    throw v2

    :catch_5
    move-exception v2

    invoke-direct {p0}, Lb/a/a/a/i/b/p;->b()V

    throw v2

    :cond_18
    move-object v2, v3

    goto/16 :goto_6
.end method

.method protected a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->b_()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v2, "IOException releasing connection"

    invoke-virtual {v1, v2, v0}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected a(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;)V
    .locals 6

    new-instance v0, Lb/a/a/a/e/b/a;

    invoke-direct {v0}, Lb/a/a/a/e/b/a;-><init>()V

    :cond_0
    iget-object v1, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v1}, Lb/a/a/a/e/o;->h()Lb/a/a/a/e/b/b;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lb/a/a/a/e/b/c;->a(Lb/a/a/a/e/b/e;Lb/a/a/a/e/b/e;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown step indicator "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from RouteDirector."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    iget-object v3, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-interface {v1, p1, p2, v3}, Lb/a/a/a/e/o;->a(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    :goto_0
    :pswitch_1
    if-gtz v2, :cond_0

    return-void

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lb/a/a/a/i/b/p;->b(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;)Z

    move-result v1

    iget-object v3, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v4, "Tunnel to target created."

    invoke-virtual {v3, v4}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    iget-object v3, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    iget-object v4, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-interface {v3, v1, v4}, Lb/a/a/a/e/o;->a(ZLb/a/a/a/l/e;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1}, Lb/a/a/a/e/b/b;->c()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v1, p2}, Lb/a/a/a/i/b/p;->a(Lb/a/a/a/e/b/b;ILb/a/a/a/n/e;)Z

    move-result v3

    iget-object v4, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v5, "Tunnel to proxy created."

    invoke-virtual {v4, v5}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    iget-object v4, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-virtual {p1, v1}, Lb/a/a/a/e/b/b;->a(I)Lb/a/a/a/n;

    move-result-object v1

    iget-object v5, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-interface {v4, v1, v3, v5}, Lb/a/a/a/e/o;->a(Lb/a/a/a/n;ZLb/a/a/a/l/e;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    iget-object v3, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-interface {v1, p2, v3}, Lb/a/a/a/e/o;->a(Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lb/a/a/a/m;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to establish route: planned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; current = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/m;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected a(Lb/a/a/a/i/b/w;Lb/a/a/a/e/b/b;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lb/a/a/a/i/b/w;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p2}, Lb/a/a/a/e/b/b;->d()Lb/a/a/a/n;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lb/a/a/a/e/b/b;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lb/a/a/a/e/b/b;->a()Lb/a/a/a/n;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lb/a/a/a/b/f/d;->a(Ljava/net/URI;Lb/a/a/a/n;Z)Ljava/net/URI;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lb/a/a/a/i/b/w;->a(Ljava/net/URI;)V

    return-void

    :cond_0
    invoke-static {v0}, Lb/a/a/a/b/f/d;->a(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lb/a/a/a/b/f/d;->a(Ljava/net/URI;Lb/a/a/a/n;Z)Ljava/net/URI;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lb/a/a/a/b/f/d;->a(Ljava/net/URI;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lb/a/a/a/ab;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/a/i/b/w;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v3

    invoke-interface {v3}, Lb/a/a/a/ae;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lb/a/a/a/ab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected a(Lb/a/a/a/e/b/b;ILb/a/a/a/n/e;)Z
    .locals 2

    new-instance v0, Lb/a/a/a/m;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lb/a/a/a/m;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected b(Lb/a/a/a/n;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/e/b/b;
    .locals 3

    iget-object v1, p0, Lb/a/a/a/i/b/p;->c:Lb/a/a/a/e/b/d;

    if-eqz p1, :cond_0

    :goto_0
    invoke-interface {v1, p1, p2, p3}, Lb/a/a/a/e/b/d;->a(Lb/a/a/a/n;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/e/b/b;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {p2}, Lb/a/a/a/q;->getParams()Lb/a/a/a/l/e;

    move-result-object v0

    const-string v2, "http.default-host"

    invoke-interface {v0, v2}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/n;

    move-object p1, v0

    goto :goto_0
.end method

.method protected b(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;)Z
    .locals 7

    invoke-virtual {p1}, Lb/a/a/a/e/b/b;->d()Lb/a/a/a/n;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/a/e/b/b;->a()Lb/a/a/a/n;

    move-result-object v6

    :cond_0
    :goto_0
    iget-object v0, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    iget-object v2, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-interface {v0, p1, p2, v2}, Lb/a/a/a/e/o;->a(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;Lb/a/a/a/l/e;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lb/a/a/a/i/b/p;->c(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;)Lb/a/a/a/q;

    move-result-object v0

    iget-object v2, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-interface {v0, v2}, Lb/a/a/a/q;->setParams(Lb/a/a/a/l/e;)V

    const-string v2, "http.target_host"

    invoke-interface {p2, v2, v6}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http.route"

    invoke-interface {p2, v2, p1}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http.proxy_host"

    invoke-interface {p2, v2, v1}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http.connection"

    iget-object v3, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {p2, v2, v3}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http.request"

    invoke-interface {p2, v2, v0}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lb/a/a/a/i/b/p;->f:Lb/a/a/a/n/h;

    iget-object v3, p0, Lb/a/a/a/i/b/p;->g:Lb/a/a/a/n/g;

    invoke-virtual {v2, v0, v3, p2}, Lb/a/a/a/n/h;->a(Lb/a/a/a/q;Lb/a/a/a/n/g;Lb/a/a/a/n/e;)V

    iget-object v2, p0, Lb/a/a/a/i/b/p;->f:Lb/a/a/a/n/h;

    iget-object v3, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-virtual {v2, v0, v3, p2}, Lb/a/a/a/n/h;->a(Lb/a/a/a/q;Lb/a/a/a/i;Lb/a/a/a/n/e;)Lb/a/a/a/s;

    move-result-object v2

    iget-object v0, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-interface {v2, v0}, Lb/a/a/a/s;->setParams(Lb/a/a/a/l/e;)V

    iget-object v0, p0, Lb/a/a/a/i/b/p;->f:Lb/a/a/a/n/h;

    iget-object v3, p0, Lb/a/a/a/i/b/p;->g:Lb/a/a/a/n/g;

    invoke-virtual {v0, v2, v3, p2}, Lb/a/a/a/n/h;->a(Lb/a/a/a/s;Lb/a/a/a/n/g;Lb/a/a/a/n/e;)V

    invoke-interface {v2}, Lb/a/a/a/s;->a()Lb/a/a/a/af;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/af;->b()I

    move-result v0

    const/16 v3, 0xc8

    if-ge v0, v3, :cond_2

    new-instance v0, Lb/a/a/a/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected response to CONNECT request: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lb/a/a/a/s;->a()Lb/a/a/a/af;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/m;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-static {v0}, Lb/a/a/a/b/d/b;->b(Lb/a/a/a/l/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/b/p;->t:Lb/a/a/a/i/b/s;

    iget-object v3, p0, Lb/a/a/a/i/b/p;->n:Lb/a/a/a/b/c;

    iget-object v4, p0, Lb/a/a/a/i/b/p;->s:Lb/a/a/a/a/h;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lb/a/a/a/i/b/s;->a(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/b/c;Lb/a/a/a/a/h;Lb/a/a/a/n/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/a/a/a/i/b/p;->t:Lb/a/a/a/i/b/s;

    iget-object v3, p0, Lb/a/a/a/i/b/p;->n:Lb/a/a/a/b/c;

    iget-object v4, p0, Lb/a/a/a/i/b/p;->s:Lb/a/a/a/a/h;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lb/a/a/a/i/b/s;->c(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/b/c;Lb/a/a/a/a/h;Lb/a/a/a/n/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb/a/a/a/i/b/p;->d:Lb/a/a/a/b;

    invoke-interface {v0, v2, p2}, Lb/a/a/a/b;->a(Lb/a/a/a/s;Lb/a/a/a/n/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lb/a/a/a/i/b/p;->a:Lb/a/a/a/h/b;

    const-string v3, "Connection kept alive"

    invoke-virtual {v0, v3}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    invoke-interface {v2}, Lb/a/a/a/s;->b()Lb/a/a/a/k;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/a/o/f;->a(Lb/a/a/a/k;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->close()V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v2}, Lb/a/a/a/s;->a()Lb/a/a/a/af;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/af;->b()I

    move-result v0

    const/16 v1, 0x12b

    if-le v0, v1, :cond_6

    invoke-interface {v2}, Lb/a/a/a/s;->b()Lb/a/a/a/k;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lb/a/a/a/g/c;

    invoke-direct {v1, v0}, Lb/a/a/a/g/c;-><init>(Lb/a/a/a/k;)V

    invoke-interface {v2, v1}, Lb/a/a/a/s;->a(Lb/a/a/a/k;)V

    :cond_5
    iget-object v0, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->close()V

    new-instance v0, Lb/a/a/a/i/b/z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECT refused by proxy: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Lb/a/a/a/s;->a()Lb/a/a/a/af;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lb/a/a/a/i/b/z;-><init>(Ljava/lang/String;Lb/a/a/a/s;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lb/a/a/a/i/b/p;->q:Lb/a/a/a/e/o;

    invoke-interface {v0}, Lb/a/a/a/e/o;->i()V

    const/4 v0, 0x0

    return v0
.end method

.method protected c(Lb/a/a/a/e/b/b;Lb/a/a/a/n/e;)Lb/a/a/a/q;
    .locals 4

    invoke-virtual {p1}, Lb/a/a/a/e/b/b;->a()Lb/a/a/a/n;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lb/a/a/a/n;->b()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/b/p;->b:Lb/a/a/a/e/b;

    invoke-interface {v0}, Lb/a/a/a/e/b;->a()Lb/a/a/a/e/c/i;

    move-result-object v0

    invoke-virtual {v1}, Lb/a/a/a/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/e/c/i;->a(Ljava/lang/String;)Lb/a/a/a/e/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/e/c/e;->a()I

    move-result v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/i/b/p;->p:Lb/a/a/a/l/e;

    invoke-static {v1}, Lb/a/a/a/l/f;->b(Lb/a/a/a/l/e;)Lb/a/a/a/ac;

    move-result-object v1

    new-instance v2, Lb/a/a/a/k/g;

    const-string v3, "CONNECT"

    invoke-direct {v2, v3, v0, v1}, Lb/a/a/a/k/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/ac;)V

    return-object v2
.end method
