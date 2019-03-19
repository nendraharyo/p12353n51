.class public Lb/a/a/a/i/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/j/g;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lb/a/a/a/j/g;

.field private final b:Lb/a/a/a/i/c/r;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/a/a/a/j/g;Lb/a/a/a/i/c/r;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/i/c/n;->a:Lb/a/a/a/j/g;

    iput-object p2, p0, Lb/a/a/a/i/c/n;->b:Lb/a/a/a/i/c/r;

    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lb/a/a/a/i/c/n;->c:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lb/a/a/a/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/n;->a:Lb/a/a/a/j/g;

    invoke-interface {v0}, Lb/a/a/a/j/g;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/n;->a:Lb/a/a/a/j/g;

    invoke-interface {v0, p1}, Lb/a/a/a/j/g;->a(I)V

    iget-object v0, p0, Lb/a/a/a/i/c/n;->b:Lb/a/a/a/i/c/r;

    invoke-virtual {v0}, Lb/a/a/a/i/c/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/n;->b:Lb/a/a/a/i/c/r;

    invoke-virtual {v0, p1}, Lb/a/a/a/i/c/r;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lb/a/a/a/o/d;)V
    .locals 4

    iget-object v0, p0, Lb/a/a/a/i/c/n;->a:Lb/a/a/a/j/g;

    invoke-interface {v0, p1}, Lb/a/a/a/j/g;->a(Lb/a/a/a/o/d;)V

    iget-object v0, p0, Lb/a/a/a/i/c/n;->b:Lb/a/a/a/i/c/r;

    invoke-virtual {v0}, Lb/a/a/a/i/c/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lb/a/a/a/o/d;->b()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lb/a/a/a/o/d;->c()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/i/c/n;->b:Lb/a/a/a/i/c/r;

    iget-object v2, p0, Lb/a/a/a/i/c/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/a/a/a/i/c/r;->a([B)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lb/a/a/a/i/c/n;->a:Lb/a/a/a/j/g;

    invoke-interface {v0, p1}, Lb/a/a/a/j/g;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lb/a/a/a/i/c/n;->b:Lb/a/a/a/i/c/r;

    invoke-virtual {v0}, Lb/a/a/a/i/c/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/i/c/n;->b:Lb/a/a/a/i/c/r;

    iget-object v2, p0, Lb/a/a/a/i/c/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/a/a/a/i/c/r;->a([B)V

    :cond_0
    return-void
.end method

.method public a([BII)V
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/n;->a:Lb/a/a/a/j/g;

    invoke-interface {v0, p1, p2, p3}, Lb/a/a/a/j/g;->a([BII)V

    iget-object v0, p0, Lb/a/a/a/i/c/n;->b:Lb/a/a/a/i/c/r;

    invoke-virtual {v0}, Lb/a/a/a/i/c/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/c/n;->b:Lb/a/a/a/i/c/r;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/a/i/c/r;->a([BII)V

    :cond_0
    return-void
.end method

.method public b()Lb/a/a/a/j/e;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/c/n;->a:Lb/a/a/a/j/g;

    invoke-interface {v0}, Lb/a/a/a/j/g;->b()Lb/a/a/a/j/e;

    move-result-object v0

    return-object v0
.end method
