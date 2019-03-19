.class public Lb/a/a/a/i/d/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/f/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)V
    .locals 0

    return-void
.end method

.method public a(Lb/a/a/a/f/m;Ljava/lang/String;)V
    .locals 1

    instance-of v0, p1, Lb/a/a/a/f/n;

    if-eqz v0, :cond_0

    check-cast p1, Lb/a/a/a/f/n;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lb/a/a/a/f/n;->b(Z)V

    :cond_0
    return-void
.end method

.method public b(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
