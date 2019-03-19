.class public Lb/a/a/a/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/q;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lb/a/a/a/a/q;

    if-eqz v1, :cond_2

    check-cast p1, Lb/a/a/a/a/q;

    iget-object v1, p0, Lb/a/a/a/a/q;->a:Ljava/lang/String;

    iget-object v2, p1, Lb/a/a/a/a/q;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/a/a/a/a/q;->b:Ljava/lang/String;

    iget-object v2, p1, Lb/a/a/a/a/q;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/q;->c:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lb/a/a/a/a/q;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lb/a/a/a/a/q;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/q;->c:Ljava/lang/String;

    return-object v0
.end method
