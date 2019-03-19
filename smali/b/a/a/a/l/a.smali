.class public abstract Lb/a/a/a/l/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/l/e;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lb/a/a/a/l/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2

    invoke-virtual {p0, p1}, Lb/a/a/a/l/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lb/a/a/a/l/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public b(Ljava/lang/String;I)Lb/a/a/a/l/e;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/l/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/a/l/e;

    return-object p0
.end method

.method public b(Ljava/lang/String;J)Lb/a/a/a/l/e;
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/l/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/a/l/e;

    return-object p0
.end method

.method public b(Ljava/lang/String;Z)Lb/a/a/a/l/e;
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lb/a/a/a/l/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/a/l/e;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/l/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/l/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
