.class public Lb/a/a/a/i/b/k;
.super Lb/a/a/a/i/b/a;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lb/a/a/a/i/b/a;-><init>(Lb/a/a/a/e/b;Lb/a/a/a/l/e;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/e/b;Lb/a/a/a/l/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/a/a/a/i/b/a;-><init>(Lb/a/a/a/e/b;Lb/a/a/a/l/e;)V

    return-void
.end method

.method public static a(Lb/a/a/a/l/e;)V
    .locals 1

    sget-object v0, Lb/a/a/a/v;->c:Lb/a/a/a/v;

    invoke-static {p0, v0}, Lb/a/a/a/l/f;->a(Lb/a/a/a/l/e;Lb/a/a/a/ac;)V

    sget-object v0, Lb/a/a/a/n/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lb/a/a/a/l/f;->a(Lb/a/a/a/l/e;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lb/a/a/a/l/c;->a(Lb/a/a/a/l/e;Z)V

    const/16 v0, 0x2000

    invoke-static {p0, v0}, Lb/a/a/a/l/c;->b(Lb/a/a/a/l/e;I)V

    sget-object v0, Lb/a/a/a/i/b/t;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lb/a/a/a/l/f;->b(Lb/a/a/a/l/e;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a()Lb/a/a/a/l/e;
    .locals 1

    new-instance v0, Lb/a/a/a/l/g;

    invoke-direct {v0}, Lb/a/a/a/l/g;-><init>()V

    invoke-static {v0}, Lb/a/a/a/i/b/k;->a(Lb/a/a/a/l/e;)V

    return-object v0
.end method

.method protected b()Lb/a/a/a/n/b;
    .locals 2

    new-instance v0, Lb/a/a/a/n/b;

    invoke-direct {v0}, Lb/a/a/a/n/b;-><init>()V

    new-instance v1, Lb/a/a/a/b/e/f;

    invoke-direct {v1}, Lb/a/a/a/b/e/f;-><init>()V

    invoke-virtual {v0, v1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/r;)V

    new-instance v1, Lb/a/a/a/n/j;

    invoke-direct {v1}, Lb/a/a/a/n/j;-><init>()V

    invoke-virtual {v0, v1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/r;)V

    new-instance v1, Lb/a/a/a/n/l;

    invoke-direct {v1}, Lb/a/a/a/n/l;-><init>()V

    invoke-virtual {v0, v1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/r;)V

    new-instance v1, Lb/a/a/a/b/e/e;

    invoke-direct {v1}, Lb/a/a/a/b/e/e;-><init>()V

    invoke-virtual {v0, v1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/r;)V

    new-instance v1, Lb/a/a/a/n/m;

    invoke-direct {v1}, Lb/a/a/a/n/m;-><init>()V

    invoke-virtual {v0, v1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/r;)V

    new-instance v1, Lb/a/a/a/n/k;

    invoke-direct {v1}, Lb/a/a/a/n/k;-><init>()V

    invoke-virtual {v0, v1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/r;)V

    new-instance v1, Lb/a/a/a/b/e/b;

    invoke-direct {v1}, Lb/a/a/a/b/e/b;-><init>()V

    invoke-virtual {v0, v1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/r;)V

    new-instance v1, Lb/a/a/a/b/e/i;

    invoke-direct {v1}, Lb/a/a/a/b/e/i;-><init>()V

    invoke-virtual {v0, v1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/u;)V

    new-instance v1, Lb/a/a/a/b/e/c;

    invoke-direct {v1}, Lb/a/a/a/b/e/c;-><init>()V

    invoke-virtual {v0, v1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/r;)V

    new-instance v1, Lb/a/a/a/b/e/h;

    invoke-direct {v1}, Lb/a/a/a/b/e/h;-><init>()V

    invoke-virtual {v0, v1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/r;)V

    new-instance v1, Lb/a/a/a/b/e/g;

    invoke-direct {v1}, Lb/a/a/a/b/e/g;-><init>()V

    invoke-virtual {v0, v1}, Lb/a/a/a/n/b;->b(Lb/a/a/a/r;)V

    return-object v0
.end method
