.class Lb/a/a/a/b/c/m$b;
.super Lb/a/a/a/b/c/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/b/c/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lb/a/a/a/b/c/k;-><init>()V

    iput-object p1, p0, Lb/a/a/a/b/c/m$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/b/c/m$b;->a:Ljava/lang/String;

    return-object v0
.end method
