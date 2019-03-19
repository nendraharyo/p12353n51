.class public Lb/a/a/a/i/b/u;
.super Lb/a/a/a/i/b/c;


# static fields
.field public static final b:Lb/a/a/a/i/b/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/a/i/b/u;

    invoke-direct {v0}, Lb/a/a/a/i/b/u;-><init>()V

    sput-object v0, Lb/a/a/a/i/b/u;->b:Lb/a/a/a/i/b/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x197

    const-string v1, "Proxy-Authenticate"

    invoke-direct {p0, v0, v1}, Lb/a/a/a/i/b/c;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Lb/a/a/a/b/a/a;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/b/a/a;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lb/a/a/a/b/a/a;->e()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/util/Map;Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/n/e;)Ljava/util/Queue;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lb/a/a/a/i/b/c;->a(Ljava/util/Map;Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/n/e;)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/n/e;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb/a/a/a/i/b/c;->a(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/n/e;)V

    return-void
.end method

.method public bridge synthetic a(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/n/e;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lb/a/a/a/i/b/c;->a(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/n/e;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/n/e;)Ljava/util/Map;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lb/a/a/a/i/b/c;->b(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/n/e;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/n/e;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lb/a/a/a/i/b/c;->b(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/n/e;)V

    return-void
.end method
