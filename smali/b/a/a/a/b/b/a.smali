.class public Lb/a/a/a/b/b/a;
.super Lb/a/a/a/g/g;


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lb/a/a/a/y;",
            ">;",
            "Ljava/nio/charset/Charset;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    invoke-static {p1, v0}, Lb/a/a/a/b/f/e;->a(Ljava/lang/Iterable;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-www-form-urlencoded"

    invoke-static {v1, p2}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/nio/charset/Charset;)Lb/a/a/a/g/e;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lb/a/a/a/g/g;-><init>(Ljava/lang/String;Lb/a/a/a/g/e;)V

    return-void

    :cond_0
    sget-object v0, Lb/a/a/a/n/d;->a:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lb/a/a/a/y;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    invoke-static {p1, v0}, Lb/a/a/a/b/f/e;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-www-form-urlencoded"

    invoke-static {v1, p2}, Lb/a/a/a/g/e;->a(Ljava/lang/String;Ljava/lang/String;)Lb/a/a/a/g/e;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lb/a/a/a/g/g;-><init>(Ljava/lang/String;Lb/a/a/a/g/e;)V

    return-void

    :cond_0
    sget-object v0, Lb/a/a/a/n/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
