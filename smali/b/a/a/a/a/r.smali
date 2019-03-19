.class public Lb/a/a/a/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/a/m;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lb/a/a/a/a/j;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Username:password string"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Lb/a/a/a/a/j;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lb/a/a/a/a/j;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lb/a/a/a/a/r;->a:Lb/a/a/a/a/j;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/r;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lb/a/a/a/a/j;

    invoke-direct {v0, p1}, Lb/a/a/a/a/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lb/a/a/a/a/r;->a:Lb/a/a/a/a/j;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/a/r;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Username"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lb/a/a/a/a/j;

    invoke-direct {v0, p1}, Lb/a/a/a/a/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lb/a/a/a/a/r;->a:Lb/a/a/a/a/j;

    iput-object p2, p0, Lb/a/a/a/a/r;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/r;->a:Lb/a/a/a/a/j;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lb/a/a/a/a/r;

    if-eqz v1, :cond_2

    check-cast p1, Lb/a/a/a/a/r;

    iget-object v1, p0, Lb/a/a/a/a/r;->a:Lb/a/a/a/a/j;

    iget-object v2, p1, Lb/a/a/a/a/r;->a:Lb/a/a/a/a/j;

    invoke-static {v1, v2}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/r;->a:Lb/a/a/a/a/j;

    invoke-virtual {v0}, Lb/a/a/a/a/j;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/r;->a:Lb/a/a/a/a/j;

    invoke-virtual {v0}, Lb/a/a/a/a/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
