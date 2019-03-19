.class public Lb/a/a/a/i/b/g;
.super Lb/a/a/a/l/a;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Lb/a/a/a/l/e;

.field protected final b:Lb/a/a/a/l/e;

.field protected final c:Lb/a/a/a/l/e;

.field protected final d:Lb/a/a/a/l/e;


# direct methods
.method public constructor <init>(Lb/a/a/a/l/e;Lb/a/a/a/l/e;Lb/a/a/a/l/e;Lb/a/a/a/l/e;)V
    .locals 0

    invoke-direct {p0}, Lb/a/a/a/l/a;-><init>()V

    iput-object p1, p0, Lb/a/a/a/i/b/g;->a:Lb/a/a/a/l/e;

    iput-object p2, p0, Lb/a/a/a/i/b/g;->b:Lb/a/a/a/l/e;

    iput-object p3, p0, Lb/a/a/a/i/b/g;->c:Lb/a/a/a/l/e;

    iput-object p4, p0, Lb/a/a/a/i/b/g;->d:Lb/a/a/a/l/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Lb/a/a/a/l/e;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Setting parameters in a stack is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string v0, "Parameter name"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lb/a/a/a/i/b/g;->d:Lb/a/a/a/l/e;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/b/g;->d:Lb/a/a/a/l/e;

    invoke-interface {v0, p1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lb/a/a/a/i/b/g;->c:Lb/a/a/a/l/e;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lb/a/a/a/i/b/g;->c:Lb/a/a/a/l/e;

    invoke-interface {v0, p1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lb/a/a/a/i/b/g;->b:Lb/a/a/a/l/e;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lb/a/a/a/i/b/g;->b:Lb/a/a/a/l/e;

    invoke-interface {v0, p1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lb/a/a/a/i/b/g;->a:Lb/a/a/a/l/e;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lb/a/a/a/i/b/g;->a:Lb/a/a/a/l/e;

    invoke-interface {v0, p1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    return-object v0
.end method
