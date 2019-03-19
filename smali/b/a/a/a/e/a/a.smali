.class public final Lb/a/a/a/e/a/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final a:Lb/a/a/a/e/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/a/e/a/a$1;

    invoke-direct {v0}, Lb/a/a/a/e/a/a$1;-><init>()V

    sput-object v0, Lb/a/a/a/e/a/a;->a:Lb/a/a/a/e/a/b;

    return-void
.end method

.method public static a(Lb/a/a/a/l/e;)Lb/a/a/a/e/a/b;
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.max-per-route"

    invoke-interface {p0, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/a/b;

    if-nez v0, :cond_0

    sget-object v0, Lb/a/a/a/e/a/a;->a:Lb/a/a/a/e/a/b;

    :cond_0
    return-object v0
.end method

.method public static a(Lb/a/a/a/l/e;I)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.max-total"

    invoke-interface {p0, v0, p1}, Lb/a/a/a/l/e;->b(Ljava/lang/String;I)Lb/a/a/a/l/e;

    return-void
.end method

.method public static a(Lb/a/a/a/l/e;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.timeout"

    invoke-interface {p0, v0, p1, p2}, Lb/a/a/a/l/e;->b(Ljava/lang/String;J)Lb/a/a/a/l/e;

    return-void
.end method

.method public static a(Lb/a/a/a/l/e;Lb/a/a/a/e/a/b;)V
    .locals 1

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.max-per-route"

    invoke-interface {p0, v0, p1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/a/l/e;

    return-void
.end method

.method public static b(Lb/a/a/a/l/e;)I
    .locals 2

    const-string v0, "HTTP parameters"

    invoke-static {p0, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "http.conn-manager.max-total"

    const/16 v1, 0x14

    invoke-interface {p0, v0, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
