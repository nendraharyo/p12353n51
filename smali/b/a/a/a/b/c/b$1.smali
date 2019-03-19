.class Lb/a/a/a/b/c/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/a/b/c/b;->setConnectionRequest(Lb/a/a/a/e/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/a/e/e;

.field final synthetic b:Lb/a/a/a/b/c/b;


# direct methods
.method constructor <init>(Lb/a/a/a/b/c/b;Lb/a/a/a/e/e;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/c/b$1;->b:Lb/a/a/a/b/c/b;

    iput-object p2, p0, Lb/a/a/a/b/c/b$1;->a:Lb/a/a/a/e/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/c/b$1;->a:Lb/a/a/a/e/e;

    invoke-interface {v0}, Lb/a/a/a/e/e;->a()V

    const/4 v0, 0x1

    return v0
.end method
