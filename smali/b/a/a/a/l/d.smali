.class public final Lb/a/a/a/l/d;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Lb/a/a/a/l/e;)Lb/a/a/a/d/b;
    .locals 3

    const/4 v2, -0x1

    invoke-static {}, Lb/a/a/a/d/b;->d()Lb/a/a/a/d/b$a;

    move-result-object v0

    const-string v1, "http.connection.max-header-count"

    invoke-interface {p0, v1, v2}, Lb/a/a/a/l/e;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/a/a/d/b$a;->b(I)Lb/a/a/a/d/b$a;

    move-result-object v0

    const-string v1, "http.connection.max-line-length"

    invoke-interface {p0, v1, v2}, Lb/a/a/a/l/e;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/a/a/d/b$a;->a(I)Lb/a/a/a/d/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/d/b$a;->a()Lb/a/a/a/d/b;

    move-result-object v0

    return-object v0
.end method
