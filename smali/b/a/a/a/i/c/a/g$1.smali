.class Lb/a/a/a/i/c/a/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/a/i/c/a/g;->a(Lb/a/a/a/e/b/b;Ljava/lang/Object;)Lb/a/a/a/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/a/i/c/a/e;

.field final synthetic b:Lb/a/a/a/e/b/b;

.field final synthetic c:Lb/a/a/a/i/c/a/g;


# direct methods
.method constructor <init>(Lb/a/a/a/i/c/a/g;Lb/a/a/a/i/c/a/e;Lb/a/a/a/e/b/b;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/i/c/a/g$1;->c:Lb/a/a/a/i/c/a/g;

    iput-object p2, p0, Lb/a/a/a/i/c/a/g$1;->a:Lb/a/a/a/i/c/a/e;

    iput-object p3, p0, Lb/a/a/a/i/c/a/g$1;->b:Lb/a/a/a/e/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lb/a/a/a/e/o;
    .locals 3

    iget-object v0, p0, Lb/a/a/a/i/c/a/g$1;->b:Lb/a/a/a/e/b/b;

    const-string v1, "Route"

    invoke-static {v0, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/i/c/a/g$1;->c:Lb/a/a/a/i/c/a/g;

    iget-object v0, v0, Lb/a/a/a/i/c/a/g;->a:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/a/g$1;->c:Lb/a/a/a/i/c/a/g;

    iget-object v0, v0, Lb/a/a/a/i/c/a/g;->a:Lb/a/a/a/h/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/i/c/a/g$1;->b:Lb/a/a/a/e/b/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/c/a/g$1;->a:Lb/a/a/a/i/c/a/e;

    invoke-interface {v0, p1, p2, p3}, Lb/a/a/a/i/c/a/e;->a(JLjava/util/concurrent/TimeUnit;)Lb/a/a/a/i/c/a/b;

    move-result-object v0

    new-instance v1, Lb/a/a/a/i/c/a/c;

    iget-object v2, p0, Lb/a/a/a/i/c/a/g$1;->c:Lb/a/a/a/i/c/a/g;

    invoke-direct {v1, v2, v0}, Lb/a/a/a/i/c/a/c;-><init>(Lb/a/a/a/i/c/a/g;Lb/a/a/a/i/c/b;)V

    return-object v1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/a/g$1;->a:Lb/a/a/a/i/c/a/e;

    invoke-interface {v0}, Lb/a/a/a/i/c/a/e;->a()V

    return-void
.end method
