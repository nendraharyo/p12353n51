.class public Lb/a/a/a/k/i;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/k/s;


# static fields
.field public static final a:Lb/a/a/a/k/i;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lb/a/a/a/k/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/a/k/i;

    invoke-direct {v0}, Lb/a/a/a/k/i;-><init>()V

    sput-object v0, Lb/a/a/a/k/i;->a:Lb/a/a/a/k/i;

    new-instance v0, Lb/a/a/a/k/i;

    invoke-direct {v0}, Lb/a/a/a/k/i;-><init>()V

    sput-object v0, Lb/a/a/a/k/i;->b:Lb/a/a/a/k/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lb/a/a/a/ac;)I
    .locals 1

    invoke-virtual {p1}, Lb/a/a/a/ac;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected a(Lb/a/a/a/o/d;)Lb/a/a/a/o/d;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lb/a/a/a/o/d;->a()V

    :goto_0
    return-object p1

    :cond_0
    new-instance p1, Lb/a/a/a/o/d;

    const/16 v0, 0x40

    invoke-direct {p1, v0}, Lb/a/a/a/o/d;-><init>(I)V

    goto :goto_0
.end method

.method public a(Lb/a/a/a/o/d;Lb/a/a/a/ac;)Lb/a/a/a/o/d;
    .locals 1

    const-string v0, "Protocol version"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lb/a/a/a/k/i;->a(Lb/a/a/a/ac;)I

    move-result v0

    if-nez p1, :cond_0

    new-instance p1, Lb/a/a/a/o/d;

    invoke-direct {p1, v0}, Lb/a/a/a/o/d;-><init>(I)V

    :goto_0
    invoke-virtual {p2}, Lb/a/a/a/ac;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(C)V

    invoke-virtual {p2}, Lb/a/a/a/ac;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(C)V

    invoke-virtual {p2}, Lb/a/a/a/ac;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->b(I)V

    goto :goto_0
.end method

.method public a(Lb/a/a/a/o/d;Lb/a/a/a/ae;)Lb/a/a/a/o/d;
    .locals 1

    const-string v0, "Request line"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lb/a/a/a/k/i;->a(Lb/a/a/a/o/d;)Lb/a/a/a/o/d;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lb/a/a/a/k/i;->b(Lb/a/a/a/o/d;Lb/a/a/a/ae;)V

    return-object v0
.end method

.method public a(Lb/a/a/a/o/d;Lb/a/a/a/af;)Lb/a/a/a/o/d;
    .locals 1

    const-string v0, "Status line"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lb/a/a/a/k/i;->a(Lb/a/a/a/o/d;)Lb/a/a/a/o/d;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lb/a/a/a/k/i;->b(Lb/a/a/a/o/d;Lb/a/a/a/af;)V

    return-object v0
.end method

.method public a(Lb/a/a/a/o/d;Lb/a/a/a/e;)Lb/a/a/a/o/d;
    .locals 1

    const-string v0, "Header"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p2, Lb/a/a/a/d;

    if-eqz v0, :cond_0

    check-cast p2, Lb/a/a/a/d;

    invoke-interface {p2}, Lb/a/a/a/d;->a()Lb/a/a/a/o/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lb/a/a/a/k/i;->a(Lb/a/a/a/o/d;)Lb/a/a/a/o/d;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lb/a/a/a/k/i;->b(Lb/a/a/a/o/d;Lb/a/a/a/e;)V

    goto :goto_0
.end method

.method protected b(Lb/a/a/a/o/d;Lb/a/a/a/ae;)V
    .locals 5

    const/16 v4, 0x20

    invoke-interface {p2}, Lb/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lb/a/a/a/ae;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, Lb/a/a/a/ae;->b()Lb/a/a/a/ac;

    move-result-object v3

    invoke-virtual {p0, v3}, Lb/a/a/a/k/i;->a(Lb/a/a/a/ac;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lb/a/a/a/o/d;->b(I)V

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lb/a/a/a/o/d;->a(C)V

    invoke-virtual {p1, v1}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lb/a/a/a/o/d;->a(C)V

    invoke-interface {p2}, Lb/a/a/a/ae;->b()Lb/a/a/a/ac;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/k/i;->a(Lb/a/a/a/o/d;Lb/a/a/a/ac;)Lb/a/a/a/o/d;

    return-void
.end method

.method protected b(Lb/a/a/a/o/d;Lb/a/a/a/af;)V
    .locals 4

    const/16 v3, 0x20

    invoke-interface {p2}, Lb/a/a/a/af;->a()Lb/a/a/a/ac;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/a/k/i;->a(Lb/a/a/a/ac;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p2}, Lb/a/a/a/af;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->b(I)V

    invoke-interface {p2}, Lb/a/a/a/af;->a()Lb/a/a/a/ac;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb/a/a/a/k/i;->a(Lb/a/a/a/o/d;Lb/a/a/a/ac;)Lb/a/a/a/o/d;

    invoke-virtual {p1, v3}, Lb/a/a/a/o/d;->a(C)V

    invoke-interface {p2}, Lb/a/a/a/af;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lb/a/a/a/o/d;->a(C)V

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected b(Lb/a/a/a/o/d;Lb/a/a/a/e;)V
    .locals 4

    invoke-interface {p2}, Lb/a/a/a/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lb/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->b(I)V

    invoke-virtual {p1, v1}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {p1, v2}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
