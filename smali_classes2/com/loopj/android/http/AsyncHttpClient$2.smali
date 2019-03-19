.class Lcom/loopj/android/http/AsyncHttpClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopj/android/http/AsyncHttpClient;-><init>(Lb/a/a/a/e/c/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopj/android/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/loopj/android/http/AsyncHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpClient$2;->this$0:Lcom/loopj/android/http/AsyncHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lb/a/a/a/s;Lb/a/a/a/n/e;)V
    .locals 6

    invoke-interface {p1}, Lb/a/a/a/s;->b()Lb/a/a/a/k;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1}, Lb/a/a/a/k;->getContentEncoding()Lb/a/a/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/a/a/e;->e()[Lb/a/a/a/f;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-interface {v4}, Lb/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;

    invoke-direct {v0, v1}, Lcom/loopj/android/http/AsyncHttpClient$InflatingEntity;-><init>(Lb/a/a/a/k;)V

    invoke-interface {p1, v0}, Lb/a/a/a/s;->a(Lb/a/a/a/k;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
