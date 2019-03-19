.class public Lb/a/a/a/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/a/m;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lb/a/a/a/a/q;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# virtual methods
.method public a()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/p;->a:Lb/a/a/a/a/q;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/p;->a:Lb/a/a/a/a/q;

    invoke-virtual {v0}, Lb/a/a/a/a/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/p;->a:Lb/a/a/a/a/q;

    invoke-virtual {v0}, Lb/a/a/a/a/q;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/p;->c:Ljava/lang/String;

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
    instance-of v1, p1, Lb/a/a/a/a/p;

    if-eqz v1, :cond_2

    check-cast p1, Lb/a/a/a/a/p;

    iget-object v1, p0, Lb/a/a/a/a/p;->a:Lb/a/a/a/a/q;

    iget-object v2, p1, Lb/a/a/a/a/p;->a:Lb/a/a/a/a/q;

    invoke-static {v1, v2}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/a/a/a/a/p;->c:Ljava/lang/String;

    iget-object v2, p1, Lb/a/a/a/a/p;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lb/a/a/a/a/p;->a:Lb/a/a/a/a/q;

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lb/a/a/a/a/p;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a/a/p;->a:Lb/a/a/a/a/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "][workstation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a/a/p;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
