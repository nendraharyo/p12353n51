.class public Lb/a/a/a/i/d/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/f/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)V
    .locals 2

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Lb/a/a/a/f/n;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lb/a/a/a/f/a;

    if-eqz v0, :cond_0

    check-cast p1, Lb/a/a/a/f/a;

    const-string v0, "version"

    invoke-interface {p1, v0}, Lb/a/a/a/f/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/f/g;

    const-string v1, "Violates RFC 2965. Version attribute is required."

    invoke-direct {v0, v1}, Lb/a/a/a/f/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a(Lb/a/a/a/f/m;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_0

    new-instance v0, Lb/a/a/a/f/l;

    const-string v1, "Missing value for version attribute"

    invoke-direct {v0, v1}, Lb/a/a/a/f/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-gez v0, :cond_1

    new-instance v0, Lb/a/a/a/f/l;

    const-string v1, "Invalid cookie version."

    invoke-direct {v0, v1}, Lb/a/a/a/f/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Lb/a/a/a/f/m;->a(I)V

    return-void
.end method

.method public b(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
