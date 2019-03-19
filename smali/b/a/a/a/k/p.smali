.class public Lb/a/a/a/k/p;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lb/a/a/a/o/d;

.field private final c:I


# direct methods
.method public constructor <init>(Lb/a/a/a/o/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->c(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lb/a/a/a/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/a/o/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lb/a/a/a/o/d;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lb/a/a/a/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/a/o/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lb/a/a/a/k/p;->b:Lb/a/a/a/o/d;

    iput-object v1, p0, Lb/a/a/a/k/p;->a:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/a/a/k/p;->c:I

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/a/o/d;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/p;->b:Lb/a/a/a/o/d;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lb/a/a/a/k/p;->c:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lb/a/a/a/k/p;->b:Lb/a/a/a/o/d;

    iget v1, p0, Lb/a/a/a/k/p;->c:I

    iget-object v2, p0, Lb/a/a/a/k/p;->b:Lb/a/a/a/o/d;

    invoke-virtual {v2}, Lb/a/a/a/o/d;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/o/d;->b(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()[Lb/a/a/a/f;
    .locals 3

    new-instance v0, Lb/a/a/a/k/u;

    const/4 v1, 0x0

    iget-object v2, p0, Lb/a/a/a/k/p;->b:Lb/a/a/a/o/d;

    invoke-virtual {v2}, Lb/a/a/a/o/d;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lb/a/a/a/k/u;-><init>(II)V

    iget v1, p0, Lb/a/a/a/k/p;->c:I

    invoke-virtual {v0, v1}, Lb/a/a/a/k/u;->a(I)V

    sget-object v1, Lb/a/a/a/k/f;->b:Lb/a/a/a/k/f;

    iget-object v2, p0, Lb/a/a/a/k/p;->b:Lb/a/a/a/o/d;

    invoke-virtual {v1, v2, v0}, Lb/a/a/a/k/f;->a(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)[Lb/a/a/a/f;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/p;->b:Lb/a/a/a/o/d;

    invoke-virtual {v0}, Lb/a/a/a/o/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
