.class public Lb/a/a/a/k/m;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/ae;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final a:Lb/a/a/a/ac;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lb/a/a/a/ac;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Method"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/k/m;->b:Ljava/lang/String;

    const-string v0, "URI"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/k/m;->c:Ljava/lang/String;

    const-string v0, "Version"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/ac;

    iput-object v0, p0, Lb/a/a/a/k/m;->a:Lb/a/a/a/ac;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lb/a/a/a/ac;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/m;->a:Lb/a/a/a/ac;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lb/a/a/a/k/i;->b:Lb/a/a/a/k/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lb/a/a/a/k/i;->a(Lb/a/a/a/o/d;Lb/a/a/a/ae;)Lb/a/a/a/o/d;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/o/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
