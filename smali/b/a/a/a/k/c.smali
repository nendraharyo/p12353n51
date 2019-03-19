.class public Lb/a/a/a/k/c;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/f;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[Lb/a/a/a/y;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/a/a/a/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;[Lb/a/a/a/y;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lb/a/a/a/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/k/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lb/a/a/a/k/c;->b:Ljava/lang/String;

    if-eqz p3, :cond_0

    iput-object p3, p0, Lb/a/a/a/k/c;->c:[Lb/a/a/a/y;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lb/a/a/a/y;

    iput-object v0, p0, Lb/a/a/a/k/c;->c:[Lb/a/a/a/y;

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lb/a/a/a/y;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/c;->c:[Lb/a/a/a/y;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lb/a/a/a/y;
    .locals 6

    const-string v0, "Name"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v3, p0, Lb/a/a/a/k/c;->c:[Lb/a/a/a/y;

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-interface {v0}, Lb/a/a/a/y;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()[Lb/a/a/a/y;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/c;->c:[Lb/a/a/a/y;

    invoke-virtual {v0}, [Lb/a/a/a/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/y;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/c;->c:[Lb/a/a/a/y;

    array-length v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lb/a/a/a/f;

    if-eqz v2, :cond_3

    check-cast p1, Lb/a/a/a/k/c;

    iget-object v2, p0, Lb/a/a/a/k/c;->a:Ljava/lang/String;

    iget-object v3, p1, Lb/a/a/a/k/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb/a/a/a/k/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lb/a/a/a/k/c;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lb/a/a/a/k/c;->c:[Lb/a/a/a/y;

    iget-object v3, p1, Lb/a/a/a/k/c;->c:[Lb/a/a/a/y;

    invoke-static {v2, v3}, Lb/a/a/a/o/g;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    const/16 v0, 0x11

    iget-object v1, p0, Lb/a/a/a/k/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lb/a/a/a/k/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(ILjava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lb/a/a/a/k/c;->c:[Lb/a/a/a/y;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-static {v1, v4}, Lb/a/a/a/o/g;->a(ILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lb/a/a/a/k/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/a/a/k/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/a/a/k/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lb/a/a/a/k/c;->c:[Lb/a/a/a/y;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    const-string v5, "; "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
