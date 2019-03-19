.class public Lb/a/a/a/d/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lb/a/a/a/d/b$a;->a:I

    iput v0, p0, Lb/a/a/a/d/b$a;->b:I

    return-void
.end method


# virtual methods
.method public a(I)Lb/a/a/a/d/b$a;
    .locals 0

    iput p1, p0, Lb/a/a/a/d/b$a;->a:I

    return-object p0
.end method

.method public a()Lb/a/a/a/d/b;
    .locals 3

    new-instance v0, Lb/a/a/a/d/b;

    iget v1, p0, Lb/a/a/a/d/b$a;->a:I

    iget v2, p0, Lb/a/a/a/d/b$a;->b:I

    invoke-direct {v0, v1, v2}, Lb/a/a/a/d/b;-><init>(II)V

    return-object v0
.end method

.method public b(I)Lb/a/a/a/d/b$a;
    .locals 0

    iput p1, p0, Lb/a/a/a/d/b$a;->b:I

    return-object p0
.end method
