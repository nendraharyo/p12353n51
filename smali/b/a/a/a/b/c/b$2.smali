.class Lb/a/a/a/b/c/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/a/b/c/b;->setReleaseTrigger(Lb/a/a/a/e/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/a/e/i;

.field final synthetic b:Lb/a/a/a/b/c/b;


# direct methods
.method constructor <init>(Lb/a/a/a/b/c/b;Lb/a/a/a/e/i;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/c/b$2;->b:Lb/a/a/a/b/c/b;

    iput-object p2, p0, Lb/a/a/a/b/c/b$2;->a:Lb/a/a/a/e/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/b/c/b$2;->a:Lb/a/a/a/e/i;

    invoke-interface {v0}, Lb/a/a/a/e/i;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
