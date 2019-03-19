.class public Lb/a/a/a/i/f/l;
.super Ljava/io/InputStream;


# instance fields
.field private final a:Lb/a/a/a/j/f;

.field private b:Z


# direct methods
.method public constructor <init>(Lb/a/a/a/j/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/i/f/l;->b:Z

    const-string v0, "Session input buffer"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/j/f;

    iput-object v0, p0, Lb/a/a/a/i/f/l;->a:Lb/a/a/a/j/f;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/f/l;->a:Lb/a/a/a/j/f;

    instance-of v0, v0, Lb/a/a/a/j/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/f/l;->a:Lb/a/a/a/j/f;

    check-cast v0, Lb/a/a/a/j/a;

    invoke-interface {v0}, Lb/a/a/a/j/a;->e()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a/i/f/l;->b:Z

    return-void
.end method

.method public read()I
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/i/f/l;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/f/l;->a:Lb/a/a/a/j/f;

    invoke-interface {v0}, Lb/a/a/a/j/f;->a()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 1

    iget-boolean v0, p0, Lb/a/a/a/i/f/l;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/f/l;->a:Lb/a/a/a/j/f;

    invoke-interface {v0, p1, p2, p3}, Lb/a/a/a/j/f;->a([BII)I

    move-result v0

    goto :goto_0
.end method
