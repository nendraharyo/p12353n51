.class Lb/a/a/a/i/b/r$a;
.super Lb/a/a/a/g/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/i/b/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/a/i/b/r;


# direct methods
.method constructor <init>(Lb/a/a/a/i/b/r;Lb/a/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/i/b/r$a;->a:Lb/a/a/a/i/b/r;

    invoke-direct {p0, p2}, Lb/a/a/a/g/f;-><init>(Lb/a/a/a/k;)V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/b/r$a;->a:Lb/a/a/a/i/b/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/a/a/i/b/r;->a(Lb/a/a/a/i/b/r;Z)Z

    invoke-super {p0}, Lb/a/a/a/g/f;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/b/r$a;->a:Lb/a/a/a/i/b/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/a/a/i/b/r;->a(Lb/a/a/a/i/b/r;Z)Z

    invoke-super {p0}, Lb/a/a/a/g/f;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/b/r$a;->a:Lb/a/a/a/i/b/r;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lb/a/a/a/i/b/r;->a(Lb/a/a/a/i/b/r;Z)Z

    invoke-super {p0, p1}, Lb/a/a/a/g/f;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
