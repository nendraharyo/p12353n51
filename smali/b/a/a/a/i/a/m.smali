.class public abstract Lb/a/a/a/i/a/m;
.super Lb/a/a/a/i/a/a;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/i/a/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb/a/a/a/i/a/m;->a:Ljava/util/Map;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lb/a/a/a/i/a/m;->b:Ljava/nio/charset/Charset;

    return-void

    :cond_0
    sget-object p1, Lb/a/a/a/c;->b:Ljava/nio/charset/Charset;

    goto :goto_0
.end method


# virtual methods
.method a(Lb/a/a/a/q;)Ljava/lang/String;
    .locals 2

    invoke-interface {p1}, Lb/a/a/a/q;->getParams()Lb/a/a/a/l/e;

    move-result-object v0

    const-string v1, "http.auth.credential-charset"

    invoke-interface {v0, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/a/i/a/m;->g()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/a/m;->a:Ljava/util/Map;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Lb/a/a/a/o/d;II)V
    .locals 7

    sget-object v0, Lb/a/a/a/k/f;->b:Lb/a/a/a/k/f;

    new-instance v1, Lb/a/a/a/k/u;

    invoke-virtual {p1}, Lb/a/a/a/o/d;->c()I

    move-result v2

    invoke-direct {v1, p2, v2}, Lb/a/a/a/k/u;-><init>(II)V

    invoke-interface {v0, p1, v1}, Lb/a/a/a/k/r;->a(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)[Lb/a/a/a/f;

    move-result-object v1

    array-length v0, v1

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/a/o;

    const-string v1, "Authentication challenge is empty"

    invoke-direct {v0, v1}, Lb/a/a/a/a/o;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/a/m;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Lb/a/a/a/i/a/m;->a:Ljava/util/Map;

    invoke-interface {v3}, Lb/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lb/a/a/a/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lb/a/a/a/i/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/a/m;->b:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method protected h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/a/a/a/i/a/m;->a:Ljava/util/Map;

    return-object v0
.end method
