.class public Lb/a/a/a/i/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/b/r;


# static fields
.field public static final a:Lb/a/a/a/i/b/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/a/i/b/q;

    invoke-direct {v0}, Lb/a/a/a/i/b/q;-><init>()V

    sput-object v0, Lb/a/a/a/i/b/q;->a:Lb/a/a/a/i/b/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lb/a/a/a/a/h;)Ljava/security/Principal;
    .locals 2

    invoke-virtual {p0}, Lb/a/a/a/a/h;->c()Lb/a/a/a/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/a/a/a/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lb/a/a/a/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/a/h;->d()Lb/a/a/a/a/m;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/a/a/a/m;->a()Ljava/security/Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lb/a/a/a/n/e;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Lb/a/a/a/b/e/a;->a(Lb/a/a/a/n/e;)Lb/a/a/a/b/e/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lb/a/a/a/b/e/a;->i()Lb/a/a/a/a/h;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lb/a/a/a/i/b/q;->a(Lb/a/a/a/a/h;)Ljava/security/Principal;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lb/a/a/a/b/e/a;->j()Lb/a/a/a/a/h;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/a/i/b/q;->a(Lb/a/a/a/a/h;)Ljava/security/Principal;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Lb/a/a/a/b/e/a;->l()Lb/a/a/a/j;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/j;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v0, Lb/a/a/a/e/p;

    if-eqz v2, :cond_1

    check-cast v0, Lb/a/a/a/e/p;

    invoke-interface {v0}, Lb/a/a/a/e/p;->k()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
