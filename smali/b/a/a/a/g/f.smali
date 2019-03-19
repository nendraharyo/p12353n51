.class public Lb/a/a/a/g/f;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/k;


# instance fields
.field protected wrappedEntity:Lb/a/a/a/k;


# direct methods
.method public constructor <init>(Lb/a/a/a/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Wrapped entity"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/k;

    iput-object v0, p0, Lb/a/a/a/g/f;->wrappedEntity:Lb/a/a/a/k;

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lb/a/a/a/g/f;->wrappedEntity:Lb/a/a/a/k;

    invoke-interface {v0}, Lb/a/a/a/k;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/f;->wrappedEntity:Lb/a/a/a/k;

    invoke-interface {v0}, Lb/a/a/a/k;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lb/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/f;->wrappedEntity:Lb/a/a/a/k;

    invoke-interface {v0}, Lb/a/a/a/k;->getContentEncoding()Lb/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-object v0, p0, Lb/a/a/a/g/f;->wrappedEntity:Lb/a/a/a/k;

    invoke-interface {v0}, Lb/a/a/a/k;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lb/a/a/a/e;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/f;->wrappedEntity:Lb/a/a/a/k;

    invoke-interface {v0}, Lb/a/a/a/k;->getContentType()Lb/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/f;->wrappedEntity:Lb/a/a/a/k;

    invoke-interface {v0}, Lb/a/a/a/k;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/f;->wrappedEntity:Lb/a/a/a/k;

    invoke-interface {v0}, Lb/a/a/a/k;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/f;->wrappedEntity:Lb/a/a/a/k;

    invoke-interface {v0}, Lb/a/a/a/k;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/g/f;->wrappedEntity:Lb/a/a/a/k;

    invoke-interface {v0, p1}, Lb/a/a/a/k;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
