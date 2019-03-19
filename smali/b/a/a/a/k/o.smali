.class public Lb/a/a/a/k/o;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/ag;


# instance fields
.field protected final a:Lb/a/a/a/h;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:I


# direct methods
.method public constructor <init>(Lb/a/a/a/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Header iterator"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/h;

    iput-object v0, p0, Lb/a/a/a/k/o;->a:Lb/a/a/a/h;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lb/a/a/a/k/o;->a(I)I

    move-result v0

    iput v0, p0, Lb/a/a/a/k/o;->d:I

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 3

    const/4 v1, -0x1

    if-gez p1, :cond_1

    iget-object v0, p0, Lb/a/a/a/k/o;->a:Lb/a/a/a/h;

    invoke-interface {v0}, Lb/a/a/a/h;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/k/o;->a:Lb/a/a/a/h;

    invoke-interface {v0}, Lb/a/a/a/h;->a()Lb/a/a/a/e;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lb/a/a/a/k/o;->b(I)I

    move-result v2

    if-gez v2, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/k/o;->c:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lb/a/a/a/k/o;->c(I)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lb/a/a/a/k/o;->d(I)I

    move-result v0

    iget-object v1, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lb/a/a/a/k/o;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/k/o;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/k/o;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iteration already finished."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/k/o;->c:Ljava/lang/String;

    iget v1, p0, Lb/a/a/a/k/o;->d:I

    invoke-virtual {p0, v1}, Lb/a/a/a/k/o;->a(I)I

    move-result v1

    iput v1, p0, Lb/a/a/a/k/o;->d:I

    return-object v0
.end method

.method protected a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(C)Z
    .locals 1

    const/16 v0, 0x2c

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(I)I
    .locals 7

    const/4 v2, 0x0

    const-string v0, "Search position"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->b(ILjava/lang/String;)I

    move-result v0

    move v1, v2

    :goto_0
    if-nez v1, :cond_6

    iget-object v3, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_1
    if-nez v0, :cond_3

    if-ge v1, v3, :cond_3

    iget-object v4, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lb/a/a/a/k/o;->a(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, v4}, Lb/a/a/a/k/o;->b(C)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lb/a/a/a/k/o;->c(C)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lb/a/a/a/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid character before token (pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez v0, :cond_4

    iget-object v3, p0, Lb/a/a/a/k/o;->a:Lb/a/a/a/h;

    invoke-interface {v3}, Lb/a/a/a/h;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v1, p0, Lb/a/a/a/k/o;->a:Lb/a/a/a/h;

    invoke-interface {v1}, Lb/a/a/a/h;->a()Lb/a/a/a/e;

    move-result-object v1

    invoke-interface {v1}, Lb/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    move v1, v2

    :cond_4
    :goto_2
    move v6, v0

    move v0, v1

    move v1, v6

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    :goto_3
    return v0

    :cond_7
    const/4 v0, -0x1

    goto :goto_3
.end method

.method protected b(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

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

.method protected c(I)I
    .locals 5

    const-string v0, "Search position"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->b(ILjava/lang/String;)I

    move-result v1

    const/4 v0, 0x0

    iget-object v2, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-nez v0, :cond_3

    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lb/a/a/a/k/o;->a(C)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lb/a/a/a/k/o;->b(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lb/a/a/a/k/o;->c(C)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lb/a/a/a/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tokens without separator (pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lb/a/a/a/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid character after token (pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return v1
.end method

.method protected c(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lb/a/a/a/k/o;->d(C)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected d(I)I
    .locals 3

    const-string v0, "Search position"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->b(ILjava/lang/String;)I

    iget-object v0, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, p1, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lb/a/a/a/k/o;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lb/a/a/a/k/o;->c(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected d(C)Z
    .locals 1

    const-string v0, " ,;=()<>@:\\\"/[]?{}\t"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/o;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/k/o;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removing tokens is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
