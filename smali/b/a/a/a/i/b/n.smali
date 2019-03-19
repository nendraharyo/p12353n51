.class public Lb/a/a/a/i/b/n;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/b/p;


# static fields
.field public static final b:Lb/a/a/a/i/b/n;

.field private static final c:[Ljava/lang/String;


# instance fields
.field public a:Lb/a/a/a/h/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb/a/a/a/i/b/n;

    invoke-direct {v0}, Lb/a/a/a/i/b/n;-><init>()V

    sput-object v0, Lb/a/a/a/i/b/n;->b:Lb/a/a/a/i/b/n;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "GET"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "HEAD"

    aput-object v2, v0, v1

    sput-object v0, Lb/a/a/a/i/b/n;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/i/b/n;->a:Lb/a/a/a/h/b;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    :try_start_0
    new-instance v0, Lb/a/a/a/b/f/c;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/b/f/c;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Lb/a/a/a/b/f/c;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/a/b/f/c;->c(Ljava/lang/String;)Lb/a/a/a/b/f/c;

    :cond_0
    invoke-virtual {v0}, Lb/a/a/a/b/f/c;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/a/o/h;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Lb/a/a/a/b/f/c;->d(Ljava/lang/String;)Lb/a/a/a/b/f/c;

    :cond_1
    invoke-virtual {v0}, Lb/a/a/a/b/f/c;->a()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lb/a/a/a/ab;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid redirect URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lb/a/a/a/ab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Lb/a/a/a/q;Lb/a/a/a/s;Lb/a/a/a/n/e;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "HTTP request"

    invoke-static {p1, v2}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "HTTP response"

    invoke-static {p2, v2}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Lb/a/a/a/s;->a()Lb/a/a/a/af;

    move-result-object v2

    invoke-interface {v2}, Lb/a/a/a/af;->b()I

    move-result v2

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v3

    invoke-interface {v3}, Lb/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "location"

    invoke-interface {p2, v4}, Lb/a/a/a/s;->getFirstHeader(Ljava/lang/String;)Lb/a/a/a/e;

    move-result-object v4

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :cond_0
    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    invoke-virtual {p0, v3}, Lb/a/a/a/i/b/n;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v4, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v3}, Lb/a/a/a/i/b/n;->b(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public b(Lb/a/a/a/q;Lb/a/a/a/s;Lb/a/a/a/n/e;)Lb/a/a/a/b/c/l;
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lb/a/a/a/i/b/n;->c(Lb/a/a/a/q;Lb/a/a/a/s;Lb/a/a/a/n/e;)Ljava/net/URI;

    move-result-object v1

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lb/a/a/a/b/c/g;

    invoke-direct {v0, v1}, Lb/a/a/a/b/c/g;-><init>(Ljava/net/URI;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "GET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lb/a/a/a/b/c/f;

    invoke-direct {v0, v1}, Lb/a/a/a/b/c/f;-><init>(Ljava/net/URI;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lb/a/a/a/s;->a()Lb/a/a/a/af;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/af;->b()I

    move-result v0

    const/16 v2, 0x133

    if-ne v0, v2, :cond_2

    invoke-static {p1}, Lb/a/a/a/b/c/m;->a(Lb/a/a/a/q;)Lb/a/a/a/b/c/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb/a/a/a/b/c/m;->a(Ljava/net/URI;)Lb/a/a/a/b/c/m;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/b/c/m;->a()Lb/a/a/a/b/c/l;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lb/a/a/a/b/c/f;

    invoke-direct {v0, v1}, Lb/a/a/a/b/c/f;-><init>(Ljava/net/URI;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lb/a/a/a/i/b/n;->c:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public c(Lb/a/a/a/q;Lb/a/a/a/s;Lb/a/a/a/n/e;)Ljava/net/URI;
    .locals 6

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP response"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Lb/a/a/a/b/e/a;->a(Lb/a/a/a/n/e;)Lb/a/a/a/b/e/a;

    move-result-object v2

    const-string v0, "location"

    invoke-interface {p2, v0}, Lb/a/a/a/s;->getFirstHeader(Ljava/lang/String;)Lb/a/a/a/e;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/ab;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received redirect response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lb/a/a/a/s;->a()Lb/a/a/a/af;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but no location header"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/ab;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {v0}, Lb/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/i/b/n;->a:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Lb/a/a/a/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/a/a/a/i/b/n;->a:Lb/a/a/a/h/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Redirect requested to location \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v2}, Lb/a/a/a/b/e/a;->k()Lb/a/a/a/b/a/a;

    move-result-object v3

    invoke-virtual {p0, v0}, Lb/a/a/a/i/b/n;->a(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v3}, Lb/a/a/a/b/a/a;->b()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lb/a/a/a/ab;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Relative redirect location \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' not allowed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/ab;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lb/a/a/a/ab;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lb/a/a/a/ab;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lb/a/a/a/b/e/a;->o()Lb/a/a/a/n;

    move-result-object v1

    const-string v4, "Target host"

    invoke-static {v1, v4}, Lb/a/a/a/o/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/net/URI;

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v5

    invoke-interface {v5}, Lb/a/a/a/ae;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Lb/a/a/a/b/f/d;->a(Ljava/net/URI;Lb/a/a/a/n;Z)Ljava/net/URI;

    move-result-object v1

    invoke-static {v1, v0}, Lb/a/a/a/b/f/d;->a(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    const-string v0, "http.protocol.redirect-locations"

    invoke-virtual {v2, v0}, Lb/a/a/a/b/e/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/i/b/v;

    if-nez v0, :cond_3

    new-instance v0, Lb/a/a/a/i/b/v;

    invoke-direct {v0}, Lb/a/a/a/i/b/v;-><init>()V

    const-string v2, "http.protocol.redirect-locations"

    invoke-interface {p3, v2, v0}, Lb/a/a/a/n/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v3}, Lb/a/a/a/b/a/a;->c()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0, v1}, Lb/a/a/a/i/b/v;->a(Ljava/net/URI;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lb/a/a/a/b/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Circular redirect to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/b/e;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v0, v1}, Lb/a/a/a/i/b/v;->b(Ljava/net/URI;)V

    return-object v1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method
