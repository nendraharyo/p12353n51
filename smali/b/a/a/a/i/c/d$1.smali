.class Lb/a/a/a/i/c/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/e/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/a/i/c/d;->a(Lb/a/a/a/e/b/b;Ljava/lang/Object;)Lb/a/a/a/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/a/e/b/b;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lb/a/a/a/i/c/d;


# direct methods
.method constructor <init>(Lb/a/a/a/i/c/d;Lb/a/a/a/e/b/b;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/i/c/d$1;->c:Lb/a/a/a/i/c/d;

    iput-object p2, p0, Lb/a/a/a/i/c/d$1;->a:Lb/a/a/a/e/b/b;

    iput-object p3, p0, Lb/a/a/a/i/c/d$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lb/a/a/a/e/o;
    .locals 3

    iget-object v0, p0, Lb/a/a/a/i/c/d$1;->c:Lb/a/a/a/i/c/d;

    iget-object v1, p0, Lb/a/a/a/i/c/d$1;->a:Lb/a/a/a/e/b/b;

    iget-object v2, p0, Lb/a/a/a/i/c/d$1;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/i/c/d;->b(Lb/a/a/a/e/b/b;Ljava/lang/Object;)Lb/a/a/a/e/o;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method
