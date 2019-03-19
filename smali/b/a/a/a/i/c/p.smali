.class public final Lb/a/a/a/i/c/p;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a()Lb/a/a/a/e/c/i;
    .locals 5

    new-instance v0, Lb/a/a/a/e/c/i;

    invoke-direct {v0}, Lb/a/a/a/e/c/i;-><init>()V

    new-instance v1, Lb/a/a/a/e/c/e;

    const-string v2, "http"

    const/16 v3, 0x50

    invoke-static {}, Lb/a/a/a/e/c/d;->a()Lb/a/a/a/e/c/d;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lb/a/a/a/e/c/e;-><init>(Ljava/lang/String;ILb/a/a/a/e/c/j;)V

    invoke-virtual {v0, v1}, Lb/a/a/a/e/c/i;->a(Lb/a/a/a/e/c/e;)Lb/a/a/a/e/c/e;

    new-instance v1, Lb/a/a/a/e/c/e;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-static {}, Lb/a/a/a/e/d/i;->getSocketFactory()Lb/a/a/a/e/d/i;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lb/a/a/a/e/c/e;-><init>(Ljava/lang/String;ILb/a/a/a/e/c/j;)V

    invoke-virtual {v0, v1}, Lb/a/a/a/e/c/i;->a(Lb/a/a/a/e/c/e;)Lb/a/a/a/e/c/e;

    return-object v0
.end method
