.class public Lb/a/a/a/i/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/b/a;


# instance fields
.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lb/a/a/a/n;",
            "Lb/a/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lb/a/a/a/e/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/i/b/d;-><init>(Lb/a/a/a/e/r;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/e/r;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i/b/d;->a:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lb/a/a/a/i/b/d;->b:Lb/a/a/a/e/r;

    return-void

    :cond_0
    sget-object p1, Lb/a/a/a/i/c/j;->a:Lb/a/a/a/i/c/j;

    goto :goto_0
.end method


# virtual methods
.method public a(Lb/a/a/a/n;)Lb/a/a/a/a/c;
    .locals 2

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/i/b/d;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lb/a/a/a/i/b/d;->c(Lb/a/a/a/n;)Lb/a/a/a/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/c;

    return-object v0
.end method

.method public a(Lb/a/a/a/n;Lb/a/a/a/a/c;)V
    .locals 2

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/i/b/d;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lb/a/a/a/i/b/d;->c(Lb/a/a/a/n;)Lb/a/a/a/n;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lb/a/a/a/n;)V
    .locals 2

    const-string v0, "HTTP host"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/i/b/d;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lb/a/a/a/i/b/d;->c(Lb/a/a/a/n;)Lb/a/a/a/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Lb/a/a/a/n;)Lb/a/a/a/n;
    .locals 4

    invoke-virtual {p1}, Lb/a/a/a/n;->b()I

    move-result v0

    if-gtz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/b/d;->b:Lb/a/a/a/e/r;

    invoke-interface {v0, p1}, Lb/a/a/a/e/r;->a(Lb/a/a/a/n;)I
    :try_end_0
    .catch Lb/a/a/a/e/s; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    new-instance v0, Lb/a/a/a/n;

    invoke-virtual {p1}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/a/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lb/a/a/a/n;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
