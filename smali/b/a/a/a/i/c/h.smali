.class public Lb/a/a/a/i/c/h;
.super Lb/a/a/a/i/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/i/f/a",
        "<",
        "Lb/a/a/a/s;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lb/a/a/a/h/b;

.field private final c:Lb/a/a/a/t;

.field private final d:Lb/a/a/a/o/d;


# direct methods
.method public constructor <init>(Lb/a/a/a/j/f;Lb/a/a/a/k/t;Lb/a/a/a/t;Lb/a/a/a/l/e;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lb/a/a/a/i/f/a;-><init>(Lb/a/a/a/j/f;Lb/a/a/a/k/t;Lb/a/a/a/l/e;)V

    new-instance v0, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/i/c/h;->a:Lb/a/a/a/h/b;

    const-string v0, "Response factory"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lb/a/a/a/i/c/h;->c:Lb/a/a/a/t;

    new-instance v0, Lb/a/a/a/o/d;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lb/a/a/a/o/d;-><init>(I)V

    iput-object v0, p0, Lb/a/a/a/i/c/h;->d:Lb/a/a/a/o/d;

    return-void
.end method


# virtual methods
.method protected a(Lb/a/a/a/j/f;)Lb/a/a/a/s;
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lb/a/a/a/i/c/h;->d:Lb/a/a/a/o/d;

    invoke-virtual {v2}, Lb/a/a/a/o/d;->a()V

    iget-object v2, p0, Lb/a/a/a/i/c/h;->d:Lb/a/a/a/o/d;

    invoke-interface {p1, v2}, Lb/a/a/a/j/f;->a(Lb/a/a/a/o/d;)I

    move-result v2

    if-ne v2, v6, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/z;

    const-string v1, "The target server failed to respond"

    invoke-direct {v0, v1}, Lb/a/a/a/z;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v3, Lb/a/a/a/k/u;

    iget-object v4, p0, Lb/a/a/a/i/c/h;->d:Lb/a/a/a/o/d;

    invoke-virtual {v4}, Lb/a/a/a/o/d;->c()I

    move-result v4

    invoke-direct {v3, v1, v4}, Lb/a/a/a/k/u;-><init>(II)V

    iget-object v4, p0, Lb/a/a/a/i/c/h;->b:Lb/a/a/a/k/t;

    iget-object v5, p0, Lb/a/a/a/i/c/h;->d:Lb/a/a/a/o/d;

    invoke-interface {v4, v5, v3}, Lb/a/a/a/k/t;->b(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, p0, Lb/a/a/a/i/c/h;->b:Lb/a/a/a/k/t;

    iget-object v1, p0, Lb/a/a/a/i/c/h;->d:Lb/a/a/a/o/d;

    invoke-interface {v0, v1, v3}, Lb/a/a/a/k/t;->c(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Lb/a/a/a/af;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/i/c/h;->c:Lb/a/a/a/t;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lb/a/a/a/t;->a(Lb/a/a/a/af;Lb/a/a/a/n/e;)Lb/a/a/a/s;

    move-result-object v0

    return-object v0

    :cond_1
    if-eq v2, v6, :cond_2

    iget-object v2, p0, Lb/a/a/a/i/c/h;->d:Lb/a/a/a/o/d;

    invoke-virtual {p0, v2, v0}, Lb/a/a/a/i/c/h;->a(Lb/a/a/a/o/d;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v0, Lb/a/a/a/ab;

    const-string v1, "The server failed to respond with a valid HTTP response"

    invoke-direct {v0, v1}, Lb/a/a/a/ab;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v2, p0, Lb/a/a/a/i/c/h;->a:Lb/a/a/a/h/b;

    invoke-virtual {v2}, Lb/a/a/a/h/b;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lb/a/a/a/i/c/h;->a:Lb/a/a/a/h/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Garbage in response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lb/a/a/a/i/c/h;->d:Lb/a/a/a/o/d;

    invoke-virtual {v4}, Lb/a/a/a/o/d;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected a(Lb/a/a/a/o/d;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected synthetic b(Lb/a/a/a/j/f;)Lb/a/a/a/p;
    .locals 1

    invoke-virtual {p0, p1}, Lb/a/a/a/i/c/h;->a(Lb/a/a/a/j/f;)Lb/a/a/a/s;

    move-result-object v0

    return-object v0
.end method
