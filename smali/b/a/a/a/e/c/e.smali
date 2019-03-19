.class public final Lb/a/a/a/e/c/e;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lb/a/a/a/e/c/j;

.field private final c:I

.field private final d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILb/a/a/a/e/c/j;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scheme name"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-lez p2, :cond_0

    const v0, 0xffff

    if-gt p2, v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Port is invalid"

    invoke-static {v0, v3}, Lb/a/a/a/o/a;->a(ZLjava/lang/String;)V

    const-string v0, "Socket factory"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/e/c/e;->a:Ljava/lang/String;

    iput p2, p0, Lb/a/a/a/e/c/e;->c:I

    instance-of v0, p3, Lb/a/a/a/e/c/f;

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lb/a/a/a/e/c/e;->d:Z

    iput-object p3, p0, Lb/a/a/a/e/c/e;->b:Lb/a/a/a/e/c/j;

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    instance-of v0, p3, Lb/a/a/a/e/c/b;

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lb/a/a/a/e/c/e;->d:Z

    new-instance v0, Lb/a/a/a/e/c/h;

    check-cast p3, Lb/a/a/a/e/c/b;

    invoke-direct {v0, p3}, Lb/a/a/a/e/c/h;-><init>(Lb/a/a/a/e/c/b;)V

    iput-object v0, p0, Lb/a/a/a/e/c/e;->b:Lb/a/a/a/e/c/j;

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lb/a/a/a/e/c/e;->d:Z

    iput-object p3, p0, Lb/a/a/a/e/c/e;->b:Lb/a/a/a/e/c/j;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Lb/a/a/a/e/c/l;I)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Scheme name"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Socket factory"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-lez p3, :cond_0

    const v0, 0xffff

    if-gt p3, v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Port is invalid"

    invoke-static {v0, v3}, Lb/a/a/a/o/a;->a(ZLjava/lang/String;)V

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/e/c/e;->a:Ljava/lang/String;

    instance-of v0, p2, Lb/a/a/a/e/c/c;

    if-eqz v0, :cond_1

    new-instance v0, Lb/a/a/a/e/c/g;

    check-cast p2, Lb/a/a/a/e/c/c;

    invoke-direct {v0, p2}, Lb/a/a/a/e/c/g;-><init>(Lb/a/a/a/e/c/c;)V

    iput-object v0, p0, Lb/a/a/a/e/c/e;->b:Lb/a/a/a/e/c/j;

    iput-boolean v1, p0, Lb/a/a/a/e/c/e;->d:Z

    :goto_1
    iput p3, p0, Lb/a/a/a/e/c/e;->c:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Lb/a/a/a/e/c/k;

    invoke-direct {v0, p2}, Lb/a/a/a/e/c/k;-><init>(Lb/a/a/a/e/c/l;)V

    iput-object v0, p0, Lb/a/a/a/e/c/e;->b:Lb/a/a/a/e/c/j;

    iput-boolean v2, p0, Lb/a/a/a/e/c/e;->d:Z

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lb/a/a/a/e/c/e;->c:I

    return v0
.end method

.method public final a(I)I
    .locals 0

    if-gtz p1, :cond_0

    iget p1, p0, Lb/a/a/a/e/c/e;->c:I

    :cond_0
    return p1
.end method

.method public final b()Lb/a/a/a/e/c/j;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/c/e;->b:Lb/a/a/a/e/c/j;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/e/c/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/e/c/e;->d:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lb/a/a/a/e/c/e;

    if-eqz v2, :cond_3

    check-cast p1, Lb/a/a/a/e/c/e;

    iget-object v2, p0, Lb/a/a/a/e/c/e;->a:Ljava/lang/String;

    iget-object v3, p1, Lb/a/a/a/e/c/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lb/a/a/a/e/c/e;->c:I

    iget v3, p1, Lb/a/a/a/e/c/e;->c:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lb/a/a/a/e/c/e;->d:Z

    iget-boolean v3, p1, Lb/a/a/a/e/c/e;->d:Z

    if-eq v2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget v1, p0, Lb/a/a/a/e/c/e;->c:I

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(II)I

    move-result v0

    iget-object v1, p0, Lb/a/a/a/e/c/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(ILjava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lb/a/a/a/e/c/e;->d:Z

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(IZ)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/e/c/e;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/a/e/c/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/a/a/e/c/e;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/e/c/e;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/e/c/e;->e:Ljava/lang/String;

    return-object v0
.end method
