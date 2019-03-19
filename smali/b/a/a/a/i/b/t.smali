.class public Lb/a/a/a/i/b/t;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "cz.msebera.android.httpclient.client"

    const-class v1, Lb/a/a/a/i/b/t;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lb/a/a/a/o/i;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Lb/a/a/a/o/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/a/a/o/i;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apache-HttpClient/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (java 1.5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/a/a/a/i/b/t;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "UNAVAILABLE"

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lb/a/a/a/i/b/t;->b:I

    iput v0, p0, Lb/a/a/a/i/b/t;->c:I

    return-void
.end method
