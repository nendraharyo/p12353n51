.class public Lb/a/a/a/i/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/e/g;


# static fields
.field public static final a:Lb/a/a/a/i/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/a/i/b/j;

    invoke-direct {v0}, Lb/a/a/a/i/b/j;-><init>()V

    sput-object v0, Lb/a/a/a/i/b/j;->a:Lb/a/a/a/i/b/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/s;Lb/a/a/a/n/e;)J
    .locals 4

    const-string v0, "HTTP response"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lb/a/a/a/k/d;

    const-string v1, "Keep-Alive"

    invoke-interface {p1, v1}, Lb/a/a/a/s;->headerIterator(Ljava/lang/String;)Lb/a/a/a/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/k/d;-><init>(Lb/a/a/a/h;)V

    :cond_0
    :goto_0
    invoke-interface {v0}, Lb/a/a/a/g;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lb/a/a/a/g;->a()Lb/a/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Lb/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lb/a/a/a/f;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "timeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_1
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
