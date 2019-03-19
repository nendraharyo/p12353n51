.class public abstract Lb/a/a/a/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/k;


# instance fields
.field protected a:Lb/a/a/a/e;

.field protected b:Lb/a/a/a/e;

.field protected c:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/g/a;->a:Lb/a/a/a/e;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lb/a/a/a/k/b;

    const-string v1, "Content-Type"

    invoke-direct {v0, v1, p1}, Lb/a/a/a/k/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v0}, Lb/a/a/a/g/a;->a(Lb/a/a/a/e;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lb/a/a/a/g/a;->c:Z

    return-void
.end method

.method public b(Lb/a/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/g/a;->b:Lb/a/a/a/e;

    return-void
.end method

.method public consumeContent()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public getContentEncoding()Lb/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/a;->b:Lb/a/a/a/e;

    return-object v0
.end method

.method public getContentType()Lb/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/a;->a:Lb/a/a/a/e;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/g/a;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a/g/a;->a:Lb/a/a/a/e;

    if-eqz v1, :cond_0

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a/g/a;->a:Lb/a/a/a/e;

    invoke-interface {v1}, Lb/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lb/a/a/a/g/a;->b:Lb/a/a/a/e;

    if-eqz v1, :cond_1

    const-string v1, "Content-Encoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a/g/a;->b:Lb/a/a/a/e;

    invoke-interface {v1}, Lb/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lb/a/a/a/g/a;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, "Chunked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb/a/a/a/g/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
