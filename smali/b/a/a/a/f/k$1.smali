.class Lb/a/a/a/f/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/f/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/a/f/k;->a(Ljava/lang/String;)Lb/a/a/a/f/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lb/a/a/a/f/k;


# direct methods
.method constructor <init>(Lb/a/a/a/f/k;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/f/k$1;->b:Lb/a/a/a/f/k;

    iput-object p2, p0, Lb/a/a/a/f/k$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/a/n/e;)Lb/a/a/a/f/h;
    .locals 3

    const-string v0, "http.request"

    invoke-interface {p1, v0}, Lb/a/a/a/n/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/q;

    iget-object v1, p0, Lb/a/a/a/f/k$1;->b:Lb/a/a/a/f/k;

    iget-object v2, p0, Lb/a/a/a/f/k$1;->a:Ljava/lang/String;

    invoke-interface {v0}, Lb/a/a/a/q;->getParams()Lb/a/a/a/l/e;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lb/a/a/a/f/k;->a(Ljava/lang/String;Lb/a/a/a/l/e;)Lb/a/a/a/f/h;

    move-result-object v0

    return-object v0
.end method
