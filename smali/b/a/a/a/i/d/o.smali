.class public Lb/a/a/a/i/d/o;
.super Lb/a/a/a/i/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/a/a/i/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/f/m;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_0

    new-instance v0, Lb/a/a/a/f/l;

    const-string v1, "Missing value for version attribute"

    invoke-direct {v0, v1}, Lb/a/a/a/f/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    invoke-interface {p1, v0}, Lb/a/a/a/f/m;->a(I)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
