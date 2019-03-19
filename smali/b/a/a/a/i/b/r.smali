.class public Lb/a/a/a/i/b/r;
.super Lb/a/a/a/i/b/w;

# interfaces
.implements Lb/a/a/a/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/a/i/b/r$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lb/a/a/a/k;

.field private b:Z


# direct methods
.method public constructor <init>(Lb/a/a/a/l;)V
    .locals 1

    invoke-direct {p0, p1}, Lb/a/a/a/i/b/w;-><init>(Lb/a/a/a/q;)V

    invoke-interface {p1}, Lb/a/a/a/l;->getEntity()Lb/a/a/a/k;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/i/b/r;->a(Lb/a/a/a/k;)V

    return-void
.end method

.method static synthetic a(Lb/a/a/a/i/b/r;Z)Z
    .locals 0

    iput-boolean p1, p0, Lb/a/a/a/i/b/r;->b:Z

    return p1
.end method


# virtual methods
.method public a(Lb/a/a/a/k;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lb/a/a/a/i/b/r$a;

    invoke-direct {v0, p0, p1}, Lb/a/a/a/i/b/r$a;-><init>(Lb/a/a/a/i/b/r;Lb/a/a/a/k;)V

    :goto_0
    iput-object v0, p0, Lb/a/a/a/i/b/r;->a:Lb/a/a/a/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/i/b/r;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/r;->a:Lb/a/a/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/b/r;->a:Lb/a/a/a/k;

    invoke-interface {v0}, Lb/a/a/a/k;->isRepeatable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lb/a/a/a/i/b/r;->b:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expectContinue()Z
    .locals 2

    const-string v0, "Expect"

    invoke-virtual {p0, v0}, Lb/a/a/a/i/b/r;->getFirstHeader(Ljava/lang/String;)Lb/a/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "100-continue"

    invoke-interface {v0}, Lb/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntity()Lb/a/a/a/k;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/r;->a:Lb/a/a/a/k;

    return-object v0
.end method
