.class public Lb/a/a/a/i/f/j;
.super Lb/a/a/a/i/f/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/i/f/b",
        "<",
        "Lb/a/a/a/q;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lb/a/a/a/j/g;Lb/a/a/a/k/s;Lb/a/a/a/l/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lb/a/a/a/i/f/b;-><init>(Lb/a/a/a/j/g;Lb/a/a/a/k/s;Lb/a/a/a/l/e;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lb/a/a/a/p;)V
    .locals 0

    check-cast p1, Lb/a/a/a/q;

    invoke-virtual {p0, p1}, Lb/a/a/a/i/f/j;->a(Lb/a/a/a/q;)V

    return-void
.end method

.method protected a(Lb/a/a/a/q;)V
    .locals 3

    iget-object v0, p0, Lb/a/a/a/i/f/j;->c:Lb/a/a/a/k/s;

    iget-object v1, p0, Lb/a/a/a/i/f/j;->b:Lb/a/a/a/o/d;

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/k/s;->a(Lb/a/a/a/o/d;Lb/a/a/a/ae;)Lb/a/a/a/o/d;

    iget-object v0, p0, Lb/a/a/a/i/f/j;->a:Lb/a/a/a/j/g;

    iget-object v1, p0, Lb/a/a/a/i/f/j;->b:Lb/a/a/a/o/d;

    invoke-interface {v0, v1}, Lb/a/a/a/j/g;->a(Lb/a/a/a/o/d;)V

    return-void
.end method
