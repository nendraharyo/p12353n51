.class public Lb/a/a/a/b/c/j;
.super Lb/a/a/a/b/c/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/a/a/b/c/e;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 0

    invoke-direct {p0}, Lb/a/a/a/b/c/e;-><init>()V

    invoke-virtual {p0, p1}, Lb/a/a/a/b/c/j;->setURI(Ljava/net/URI;)V

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "PUT"

    return-object v0
.end method
