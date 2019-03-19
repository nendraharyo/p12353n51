.class public Lb/a/a/a/i/d/z;
.super Lb/a/a/a/i/d/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb/a/a/a/i/d/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)V
    .locals 2

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/a/a/a/f/b;->j()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Lb/a/a/a/f/g;

    const-string v1, "Cookie version may not be negative"

    invoke-direct {v0, v1}, Lb/a/a/a/f/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public a(Lb/a/a/a/f/m;Ljava/lang/String;)V
    .locals 4

    const-string v0, "Cookie"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p2, :cond_0

    new-instance v0, Lb/a/a/a/f/l;

    const-string v1, "Missing value for version attribute"

    invoke-direct {v0, v1}, Lb/a/a/a/f/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lb/a/a/a/f/l;

    const-string v1, "Blank value for version attribute"

    invoke-direct {v0, v1}, Lb/a/a/a/f/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Lb/a/a/a/f/m;->a(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lb/a/a/a/f/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/a/f/l;-><init>(Ljava/lang/String;)V

    throw v1
.end method
