.class public abstract Lb/a/a/a/i/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lb/a/a/a/p;",
        ">",
        "Ljava/lang/Object;",
        "Lb/a/a/a/j/d",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lb/a/a/a/j/g;

.field protected final b:Lb/a/a/a/o/d;

.field protected final c:Lb/a/a/a/k/s;


# direct methods
.method public constructor <init>(Lb/a/a/a/j/g;Lb/a/a/a/k/s;Lb/a/a/a/l/e;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/i/f/b;->a:Lb/a/a/a/j/g;

    new-instance v0, Lb/a/a/a/o/d;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lb/a/a/a/o/d;-><init>(I)V

    iput-object v0, p0, Lb/a/a/a/i/f/b;->b:Lb/a/a/a/o/d;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lb/a/a/a/i/f/b;->c:Lb/a/a/a/k/s;

    return-void

    :cond_0
    sget-object p2, Lb/a/a/a/k/i;->b:Lb/a/a/a/k/i;

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(Lb/a/a/a/p;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public b(Lb/a/a/a/p;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "HTTP message"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lb/a/a/a/i/f/b;->a(Lb/a/a/a/p;)V

    invoke-interface {p1}, Lb/a/a/a/p;->headerIterator()Lb/a/a/a/h;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lb/a/a/a/h;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lb/a/a/a/h;->a()Lb/a/a/a/e;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/i/f/b;->a:Lb/a/a/a/j/g;

    iget-object v3, p0, Lb/a/a/a/i/f/b;->c:Lb/a/a/a/k/s;

    iget-object v4, p0, Lb/a/a/a/i/f/b;->b:Lb/a/a/a/o/d;

    invoke-interface {v3, v4, v1}, Lb/a/a/a/k/s;->a(Lb/a/a/a/o/d;Lb/a/a/a/e;)Lb/a/a/a/o/d;

    move-result-object v1

    invoke-interface {v2, v1}, Lb/a/a/a/j/g;->a(Lb/a/a/a/o/d;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/f/b;->b:Lb/a/a/a/o/d;

    invoke-virtual {v0}, Lb/a/a/a/o/d;->a()V

    iget-object v0, p0, Lb/a/a/a/i/f/b;->a:Lb/a/a/a/j/g;

    iget-object v1, p0, Lb/a/a/a/i/f/b;->b:Lb/a/a/a/o/d;

    invoke-interface {v0, v1}, Lb/a/a/a/j/g;->a(Lb/a/a/a/o/d;)V

    return-void
.end method
