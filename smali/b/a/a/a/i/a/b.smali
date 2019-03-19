.class public Lb/a/a/a/i/a/b;
.super Lb/a/a/a/i/a/m;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lb/a/a/a/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lb/a/a/a/i/a/b;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0, p1}, Lb/a/a/a/i/a/m;-><init>(Ljava/nio/charset/Charset;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/i/a/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/a/m;Lb/a/a/a/q;)Lb/a/a/a/e;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lb/a/a/a/n/a;

    invoke-direct {v0}, Lb/a/a/a/n/a;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lb/a/a/a/i/a/b;->a(Lb/a/a/a/a/m;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/a/a/a/a/m;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/e;
    .locals 4

    const-string v0, "Credentials"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lb/a/a/a/a/m;->a()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lb/a/a/a/a/m;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lb/a/a/a/i/a/b;->a(Lb/a/a/a/q;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/a/a/o/e;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lb/a/a/a/h/a;->b([BI)[B

    move-result-object v0

    new-instance v1, Lb/a/a/a/o/d;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lb/a/a/a/o/d;-><init>(I)V

    invoke-virtual {p0}, Lb/a/a/a/i/a/b;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Proxy-Authorization"

    invoke-virtual {v1, v2}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    :goto_1
    const-string v2, ": Basic "

    invoke-virtual {v1, v2}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lb/a/a/a/o/d;->a([BII)V

    new-instance v0, Lb/a/a/a/k/p;

    invoke-direct {v0, v1}, Lb/a/a/a/k/p;-><init>(Lb/a/a/a/o/d;)V

    return-object v0

    :cond_0
    invoke-interface {p1}, Lb/a/a/a/a/m;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "Authorization"

    invoke-virtual {v1, v2}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "basic"

    return-object v0
.end method

.method public a(Lb/a/a/a/e;)V
    .locals 1

    invoke-super {p0, p1}, Lb/a/a/a/i/a/m;->a(Lb/a/a/a/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a/i/a/b;->a:Z

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/i/a/b;->a:Z

    return v0
.end method
