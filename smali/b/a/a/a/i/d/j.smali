.class public Lb/a/a/a/i/d/j;
.super Lb/a/a/a/i/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/a/a/i/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/f/m;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lb/a/a/a/f/m;->a(Z)V

    return-void
.end method

.method public b(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)Z
    .locals 1

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/a/a/a/f/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lb/a/a/a/f/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
