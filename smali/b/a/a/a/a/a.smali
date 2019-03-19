.class public final Lb/a/a/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lb/a/a/a/a/c;

.field private final b:Lb/a/a/a/a/m;


# direct methods
.method public constructor <init>(Lb/a/a/a/a/c;Lb/a/a/a/a/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Auth scheme"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "User credentials"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/a/a;->a:Lb/a/a/a/a/c;

    iput-object p2, p0, Lb/a/a/a/a/a;->b:Lb/a/a/a/a/m;

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/a/a/c;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/a;->a:Lb/a/a/a/a/c;

    return-object v0
.end method

.method public b()Lb/a/a/a/a/m;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/a;->b:Lb/a/a/a/a/m;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/a/a;->a:Lb/a/a/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
