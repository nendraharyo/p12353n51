.class public Lb/a/a/a/i/d/v;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/f/i;
.implements Lb/a/a/a/f/j;


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/i/d/v;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/i/d/v;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/l/e;)Lb/a/a/a/f/h;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const-string v0, "http.protocol.cookie-datepatterns"

    invoke-interface {p1, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    new-instance v1, Lb/a/a/a/i/d/u;

    invoke-direct {v1, v0}, Lb/a/a/a/i/d/u;-><init>([Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lb/a/a/a/i/d/u;

    invoke-direct {v0}, Lb/a/a/a/i/d/u;-><init>()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lb/a/a/a/n/e;)Lb/a/a/a/f/h;
    .locals 2

    new-instance v0, Lb/a/a/a/i/d/u;

    iget-object v1, p0, Lb/a/a/a/i/d/v;->a:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lb/a/a/a/i/d/u;-><init>([Ljava/lang/String;)V

    return-object v0
.end method
