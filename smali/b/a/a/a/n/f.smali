.class public Lb/a/a/a/n/f;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/n/e;


# instance fields
.field private final a:Lb/a/a/a/n/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/a/n/a;

    invoke-direct {v0}, Lb/a/a/a/n/a;-><init>()V

    iput-object v0, p0, Lb/a/a/a/n/f;->a:Lb/a/a/a/n/e;

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/n/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/n/f;->a:Lb/a/a/a/n/e;

    return-void
.end method

.method public static b(Lb/a/a/a/n/e;)Lb/a/a/a/n/f;
    .locals 1

    const-string v0, "HTTP context"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p0, Lb/a/a/a/n/f;

    if-eqz v0, :cond_0

    check-cast p0, Lb/a/a/a/n/f;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lb/a/a/a/n/f;

    invoke-direct {v0, p0}, Lb/a/a/a/n/f;-><init>(Lb/a/a/a/n/e;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/n/f;->a:Lb/a/a/a/n/e;

    invoke-interface {v0, p1}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const-string v0, "Attribute class"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lb/a/a/a/n/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/n/f;->a:Lb/a/a/a/n/e;

    invoke-interface {v0, p1, p2}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public l()Lb/a/a/a/j;
    .locals 2

    const-string v0, "http.connection"

    const-class v1, Lb/a/a/a/j;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/n/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/j;

    return-object v0
.end method

.method public m()Lb/a/a/a/q;
    .locals 2

    const-string v0, "http.request"

    const-class v1, Lb/a/a/a/q;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/n/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/q;

    return-object v0
.end method

.method public n()Z
    .locals 2

    const-string v0, "http.request_sent"

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/n/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Lb/a/a/a/n;
    .locals 2

    const-string v0, "http.target_host"

    const-class v1, Lb/a/a/a/n;

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/n/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/n;

    return-object v0
.end method
