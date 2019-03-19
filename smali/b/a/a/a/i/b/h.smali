.class public abstract Lb/a/a/a/i/b/h;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/b/j;
.implements Ljava/io/Closeable;


# instance fields
.field public b:Lb/a/a/a/h/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/i/b/h;->b:Lb/a/a/a/h/b;

    return-void
.end method

.method private static a(Lb/a/a/a/b/c/l;)Lb/a/a/a/n;
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p0}, Lb/a/a/a/b/c/l;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lb/a/a/a/b/f/d;->b(Ljava/net/URI;)Lb/a/a/a/n;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/b/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI does not specify a valid host name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lb/a/a/a/b/c/l;Lb/a/a/a/n/e;)Lb/a/a/a/b/c/c;
    .locals 1

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Lb/a/a/a/i/b/h;->a(Lb/a/a/a/b/c/l;)Lb/a/a/a/n;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lb/a/a/a/i/b/h;->a(Lb/a/a/a/n;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/b/c/c;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Lb/a/a/a/n;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/b/c/c;
.end method
