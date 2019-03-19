.class public abstract Lb/a/a/a/i/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/a/l;


# instance fields
.field private a:Lb/a/a/a/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/a/m;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/e;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lb/a/a/a/i/a/a;->a(Lb/a/a/a/a/m;Lb/a/a/a/q;)Lb/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/a/a/a/e;)V
    .locals 4

    const-string v0, "Header"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/a/a/a/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WWW-Authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lb/a/a/a/a/k;->a:Lb/a/a/a/a/k;

    iput-object v0, p0, Lb/a/a/a/i/a/a;->a:Lb/a/a/a/a/k;

    :goto_0
    instance-of v0, p1, Lb/a/a/a/d;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lb/a/a/a/d;

    invoke-interface {v0}, Lb/a/a/a/d;->a()Lb/a/a/a/o/d;

    move-result-object v1

    check-cast p1, Lb/a/a/a/d;

    invoke-interface {p1}, Lb/a/a/a/d;->b()I

    move-result v0

    :goto_1
    invoke-virtual {v1}, Lb/a/a/a/o/d;->c()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {v1, v0}, Lb/a/a/a/o/d;->a(I)C

    move-result v2

    invoke-static {v2}, Lb/a/a/a/n/d;->a(C)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-string v1, "Proxy-Authenticate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lb/a/a/a/a/k;->b:Lb/a/a/a/a/k;

    iput-object v0, p0, Lb/a/a/a/i/a/a;->a:Lb/a/a/a/a/k;

    goto :goto_0

    :cond_1
    new-instance v1, Lb/a/a/a/a/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected header name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/a/o;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface {p1}, Lb/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Lb/a/a/a/a/o;

    const-string v1, "Header value is null"

    invoke-direct {v0, v1}, Lb/a/a/a/a/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Lb/a/a/a/o/d;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Lb/a/a/a/o/d;-><init>(I)V

    invoke-virtual {v1, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_2
    invoke-virtual {v1}, Lb/a/a/a/o/d;->c()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v1, v2}, Lb/a/a/a/o/d;->a(I)C

    move-result v3

    invoke-static {v3}, Lb/a/a/a/n/d;->a(C)Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v0, v2}, Lb/a/a/a/o/d;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/a/i/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v1, Lb/a/a/a/a/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid scheme identifier: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/a/o;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual {v1}, Lb/a/a/a/o/d;->c()I

    move-result v0

    invoke-virtual {p0, v1, v2, v0}, Lb/a/a/a/i/a/a;->a(Lb/a/a/a/o/d;II)V

    return-void
.end method

.method protected abstract a(Lb/a/a/a/o/d;II)V
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/a/a;->a:Lb/a/a/a/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/a/a;->a:Lb/a/a/a/a/k;

    sget-object v1, Lb/a/a/a/a/k;->b:Lb/a/a/a/a/k;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lb/a/a/a/i/a/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
