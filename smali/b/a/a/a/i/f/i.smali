.class public Lb/a/a/a/i/f/i;
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
.field private final a:Lb/a/a/a/t;

.field private final c:Lb/a/a/a/o/d;


# direct methods
.method public constructor <init>(Lb/a/a/a/j/f;Lb/a/a/a/k/t;Lb/a/a/a/t;Lb/a/a/a/l/e;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lb/a/a/a/i/f/a;-><init>(Lb/a/a/a/j/f;Lb/a/a/a/k/t;Lb/a/a/a/l/e;)V

    const-string v0, "Response factory"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/t;

    iput-object v0, p0, Lb/a/a/a/i/f/i;->a:Lb/a/a/a/t;

    new-instance v0, Lb/a/a/a/o/d;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lb/a/a/a/o/d;-><init>(I)V

    iput-object v0, p0, Lb/a/a/a/i/f/i;->c:Lb/a/a/a/o/d;

    return-void
.end method


# virtual methods
.method protected a(Lb/a/a/a/j/f;)Lb/a/a/a/s;
    .locals 3

    iget-object v0, p0, Lb/a/a/a/i/f/i;->c:Lb/a/a/a/o/d;

    invoke-virtual {v0}, Lb/a/a/a/o/d;->a()V

    iget-object v0, p0, Lb/a/a/a/i/f/i;->c:Lb/a/a/a/o/d;

    invoke-interface {p1, v0}, Lb/a/a/a/j/f;->a(Lb/a/a/a/o/d;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lb/a/a/a/z;

    const-string v1, "The target server failed to respond"

    invoke-direct {v0, v1}, Lb/a/a/a/z;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lb/a/a/a/k/u;

    const/4 v1, 0x0

    iget-object v2, p0, Lb/a/a/a/i/f/i;->c:Lb/a/a/a/o/d;

    invoke-virtual {v2}, Lb/a/a/a/o/d;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lb/a/a/a/k/u;-><init>(II)V

    iget-object v1, p0, Lb/a/a/a/i/f/i;->b:Lb/a/a/a/k/t;

    iget-object v2, p0, Lb/a/a/a/i/f/i;->c:Lb/a/a/a/o/d;

    invoke-interface {v1, v2, v0}, Lb/a/a/a/k/t;->c(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Lb/a/a/a/af;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/i/f/i;->a:Lb/a/a/a/t;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lb/a/a/a/t;->a(Lb/a/a/a/af;Lb/a/a/a/n/e;)Lb/a/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Lb/a/a/a/j/f;)Lb/a/a/a/p;
    .locals 1

    invoke-virtual {p0, p1}, Lb/a/a/a/i/f/i;->a(Lb/a/a/a/j/f;)Lb/a/a/a/s;

    move-result-object v0

    return-object v0
.end method
