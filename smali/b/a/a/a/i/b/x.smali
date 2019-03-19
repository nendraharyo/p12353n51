.class public Lb/a/a/a/i/b/x;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final a:Lb/a/a/a/i/b/w;

.field protected final b:Lb/a/a/a/e/b/b;


# direct methods
.method public constructor <init>(Lb/a/a/a/i/b/w;Lb/a/a/a/e/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/a/i/b/x;->a:Lb/a/a/a/i/b/w;

    iput-object p2, p0, Lb/a/a/a/i/b/x;->b:Lb/a/a/a/e/b/b;

    return-void
.end method


# virtual methods
.method public final a()Lb/a/a/a/i/b/w;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/x;->a:Lb/a/a/a/i/b/w;

    return-object v0
.end method

.method public final b()Lb/a/a/a/e/b/b;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/b/x;->b:Lb/a/a/a/e/b/b;

    return-object v0
.end method
