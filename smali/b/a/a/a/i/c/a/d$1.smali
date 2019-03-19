.class Lb/a/a/a/i/c/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/i/c/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/e/b/b;Ljava/lang/Object;)Lb/a/a/a/i/c/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/a/i/c/a/i;

.field final synthetic b:Lb/a/a/a/e/b/b;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lb/a/a/a/i/c/a/d;


# direct methods
.method constructor <init>(Lb/a/a/a/i/c/a/d;Lb/a/a/a/i/c/a/i;Lb/a/a/a/e/b/b;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/i/c/a/d$1;->d:Lb/a/a/a/i/c/a/d;

    iput-object p2, p0, Lb/a/a/a/i/c/a/d$1;->a:Lb/a/a/a/i/c/a/i;

    iput-object p3, p0, Lb/a/a/a/i/c/a/d$1;->b:Lb/a/a/a/e/b/b;

    iput-object p4, p0, Lb/a/a/a/i/c/a/d$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lb/a/a/a/i/c/a/b;
    .locals 9

    iget-object v1, p0, Lb/a/a/a/i/c/a/d$1;->d:Lb/a/a/a/i/c/a/d;

    iget-object v2, p0, Lb/a/a/a/i/c/a/d$1;->b:Lb/a/a/a/e/b/b;

    iget-object v3, p0, Lb/a/a/a/i/c/a/d$1;->c:Ljava/lang/Object;

    iget-object v7, p0, Lb/a/a/a/i/c/a/d$1;->a:Lb/a/a/a/i/c/a/i;

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/e/b/b;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lb/a/a/a/i/c/a/i;)Lb/a/a/a/i/c/a/b;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/c/a/d$1;->d:Lb/a/a/a/i/c/a/d;

    invoke-static {v0}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/i/c/a/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/c/a/d$1;->a:Lb/a/a/a/i/c/a/i;

    invoke-virtual {v0}, Lb/a/a/a/i/c/a/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/d$1;->d:Lb/a/a/a/i/c/a/d;

    invoke-static {v0}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/i/c/a/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/i/c/a/d$1;->d:Lb/a/a/a/i/c/a/d;

    invoke-static {v1}, Lb/a/a/a/i/c/a/d;->a(Lb/a/a/a/i/c/a/d;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
