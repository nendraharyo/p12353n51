.class public Lb/a/a/a/i/a/k;
.super Lb/a/a/a/i/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/a/i/a/k$a;
    }
.end annotation


# instance fields
.field private final a:Lb/a/a/a/i/a/h;

.field private b:Lb/a/a/a/i/a/k$a;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb/a/a/a/i/a/j;

    invoke-direct {v0}, Lb/a/a/a/i/a/j;-><init>()V

    invoke-direct {p0, v0}, Lb/a/a/a/i/a/k;-><init>(Lb/a/a/a/i/a/h;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/i/a/h;)V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/a/a;-><init>()V

    const-string v0, "NTLM engine"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/i/a/k;->a:Lb/a/a/a/i/a/h;

    sget-object v0, Lb/a/a/a/i/a/k$a;->a:Lb/a/a/a/i/a/k$a;

    iput-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/a/k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/a/m;Lb/a/a/a/q;)Lb/a/a/a/e;
    .locals 6

    :try_start_0
    check-cast p1, Lb/a/a/a/a/p;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    sget-object v1, Lb/a/a/a/i/a/k$a;->f:Lb/a/a/a/i/a/k$a;

    if-ne v0, v1, :cond_0

    new-instance v0, Lb/a/a/a/a/i;

    const-string v1, "NTLM authentication failed"

    invoke-direct {v0, v1}, Lb/a/a/a/a/i;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Lb/a/a/a/a/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Credentials cannot be used for NTLM authentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/a/n;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    sget-object v1, Lb/a/a/a/i/a/k$a;->b:Lb/a/a/a/i/a/k$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lb/a/a/a/i/a/k;->a:Lb/a/a/a/i/a/h;

    invoke-virtual {p1}, Lb/a/a/a/a/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/a/a/p;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/i/a/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lb/a/a/a/i/a/k$a;->c:Lb/a/a/a/i/a/k$a;

    iput-object v1, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    :goto_0
    new-instance v1, Lb/a/a/a/o/d;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lb/a/a/a/o/d;-><init>(I)V

    invoke-virtual {p0}, Lb/a/a/a/i/a/k;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Proxy-Authorization"

    invoke-virtual {v1, v2}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    :goto_1
    const-string v2, ": NTLM "

    invoke-virtual {v1, v2}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    new-instance v0, Lb/a/a/a/k/p;

    invoke-direct {v0, v1}, Lb/a/a/a/k/p;-><init>(Lb/a/a/a/o/d;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    sget-object v1, Lb/a/a/a/i/a/k$a;->d:Lb/a/a/a/i/a/k$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lb/a/a/a/i/a/k;->a:Lb/a/a/a/i/a/h;

    invoke-virtual {p1}, Lb/a/a/a/a/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/a/a/p;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/a/a/p;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lb/a/a/a/a/p;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lb/a/a/a/i/a/k;->c:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lb/a/a/a/i/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lb/a/a/a/i/a/k$a;->e:Lb/a/a/a/i/a/k$a;

    iput-object v1, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    goto :goto_0

    :cond_2
    new-instance v0, Lb/a/a/a/a/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/a/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v2, "Authorization"

    invoke-virtual {v1, v2}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "ntlm"

    return-object v0
.end method

.method protected a(Lb/a/a/a/o/d;II)V
    .locals 2

    invoke-virtual {p1, p2, p3}, Lb/a/a/a/o/d;->b(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/a/k;->c:Ljava/lang/String;

    iget-object v0, p0, Lb/a/a/a/i/a/k;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    sget-object v1, Lb/a/a/a/i/a/k$a;->a:Lb/a/a/a/i/a/k$a;

    if-ne v0, v1, :cond_1

    sget-object v0, Lb/a/a/a/i/a/k$a;->b:Lb/a/a/a/i/a/k$a;

    iput-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lb/a/a/a/i/a/k$a;->f:Lb/a/a/a/i/a/k$a;

    iput-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    sget-object v1, Lb/a/a/a/i/a/k$a;->c:Lb/a/a/a/i/a/k$a;

    invoke-virtual {v0, v1}, Lb/a/a/a/i/a/k$a;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_3

    sget-object v0, Lb/a/a/a/i/a/k$a;->f:Lb/a/a/a/i/a/k$a;

    iput-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    new-instance v0, Lb/a/a/a/a/o;

    const-string v1, "Out of sequence NTLM response message"

    invoke-direct {v0, v1}, Lb/a/a/a/a/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    sget-object v1, Lb/a/a/a/i/a/k$a;->c:Lb/a/a/a/i/a/k$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lb/a/a/a/i/a/k$a;->d:Lb/a/a/a/i/a/k$a;

    iput-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    sget-object v1, Lb/a/a/a/i/a/k$a;->e:Lb/a/a/a/i/a/k$a;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/a/k;->b:Lb/a/a/a/i/a/k$a;

    sget-object v1, Lb/a/a/a/i/a/k$a;->f:Lb/a/a/a/i/a/k$a;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
