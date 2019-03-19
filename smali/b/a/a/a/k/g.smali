.class public Lb/a/a/a/k/g;
.super Lb/a/a/a/k/a;

# interfaces
.implements Lb/a/a/a/q;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lb/a/a/a/ae;


# direct methods
.method public constructor <init>(Lb/a/a/a/ae;)V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/k/a;-><init>()V

    const-string v0, "Request line"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/ae;

    iput-object v0, p0, Lb/a/a/a/k/g;->c:Lb/a/a/a/ae;

    invoke-interface {p1}, Lb/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/k/g;->a:Ljava/lang/String;

    invoke-interface {p1}, Lb/a/a/a/ae;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/k/g;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/ac;)V
    .locals 1

    new-instance v0, Lb/a/a/a/k/m;

    invoke-direct {v0, p1, p2, p3}, Lb/a/a/a/k/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/ac;)V

    invoke-direct {p0, v0}, Lb/a/a/a/k/g;-><init>(Lb/a/a/a/ae;)V

    return-void
.end method


# virtual methods
.method public getProtocolVersion()Lb/a/a/a/ac;
    .locals 1

    invoke-virtual {p0}, Lb/a/a/a/k/g;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/ae;->b()Lb/a/a/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLine()Lb/a/a/a/ae;
    .locals 4

    iget-object v0, p0, Lb/a/a/a/k/g;->c:Lb/a/a/a/ae;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/k/m;

    iget-object v1, p0, Lb/a/a/a/k/g;->a:Ljava/lang/String;

    iget-object v2, p0, Lb/a/a/a/k/g;->b:Ljava/lang/String;

    sget-object v3, Lb/a/a/a/v;->c:Lb/a/a/a/v;

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/a/k/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/ac;)V

    iput-object v0, p0, Lb/a/a/a/k/g;->c:Lb/a/a/a/ae;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/k/g;->c:Lb/a/a/a/ae;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/a/k/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/k/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb/a/a/a/k/g;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
