.class public abstract Lb/a/a/a/k/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/p;


# instance fields
.field protected headergroup:Lb/a/a/a/k/q;

.field protected params:Lb/a/a/a/l/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/k/a;-><init>(Lb/a/a/a/l/e;)V

    return-void
.end method

.method protected constructor <init>(Lb/a/a/a/l/e;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/a/k/q;

    invoke-direct {v0}, Lb/a/a/a/k/q;-><init>()V

    iput-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    iput-object p1, p0, Lb/a/a/a/k/a;->params:Lb/a/a/a/l/e;

    return-void
.end method


# virtual methods
.method public addHeader(Lb/a/a/a/e;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0, p1}, Lb/a/a/a/k/q;->a(Lb/a/a/a/e;)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Header name"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    new-instance v1, Lb/a/a/a/k/b;

    invoke-direct {v1, p1, p2}, Lb/a/a/a/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb/a/a/a/k/q;->a(Lb/a/a/a/e;)V

    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0, p1}, Lb/a/a/a/k/q;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllHeaders()[Lb/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0}, Lb/a/a/a/k/q;->b()[Lb/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lb/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0, p1}, Lb/a/a/a/k/q;->b(Ljava/lang/String;)Lb/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lb/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0, p1}, Lb/a/a/a/k/q;->a(Ljava/lang/String;)[Lb/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getLastHeader(Ljava/lang/String;)Lb/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0, p1}, Lb/a/a/a/k/q;->c(Ljava/lang/String;)Lb/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lb/a/a/a/l/e;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/a/a/a/k/a;->params:Lb/a/a/a/l/e;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/l/b;

    invoke-direct {v0}, Lb/a/a/a/l/b;-><init>()V

    iput-object v0, p0, Lb/a/a/a/k/a;->params:Lb/a/a/a/l/e;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/k/a;->params:Lb/a/a/a/l/e;

    return-object v0
.end method

.method public headerIterator()Lb/a/a/a/h;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0}, Lb/a/a/a/k/q;->c()Lb/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator(Ljava/lang/String;)Lb/a/a/a/h;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0, p1}, Lb/a/a/a/k/q;->e(Ljava/lang/String;)Lb/a/a/a/h;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Lb/a/a/a/e;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0, p1}, Lb/a/a/a/k/q;->b(Lb/a/a/a/e;)V

    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0}, Lb/a/a/a/k/q;->c()Lb/a/a/a/h;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Lb/a/a/a/h;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lb/a/a/a/h;->a()Lb/a/a/a/e;

    move-result-object v1

    invoke-interface {v1}, Lb/a/a/a/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lb/a/a/a/h;->remove()V

    goto :goto_0
.end method

.method public setHeader(Lb/a/a/a/e;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0, p1}, Lb/a/a/a/k/q;->c(Lb/a/a/a/e;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Header name"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    new-instance v1, Lb/a/a/a/k/b;

    invoke-direct {v1, p1, p2}, Lb/a/a/a/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lb/a/a/a/k/q;->c(Lb/a/a/a/e;)V

    return-void
.end method

.method public setHeaders([Lb/a/a/a/e;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/a;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0, p1}, Lb/a/a/a/k/q;->a([Lb/a/a/a/e;)V

    return-void
.end method

.method public setParams(Lb/a/a/a/l/e;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "HTTP parameters"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/l/e;

    iput-object v0, p0, Lb/a/a/a/k/a;->params:Lb/a/a/a/l/e;

    return-void
.end method
