.class public abstract Lc/a/a/b/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lc/a/a/b/b;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Lc/a/a/b/b;
    .locals 1

    invoke-static {p0}, Lc/a/a/b/c;->b(Ljava/nio/ByteBuffer;)Lc/a/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/nio/MappedByteBuffer;)Lc/a/a/b/b;
    .locals 1

    new-instance v0, Lc/a/a/b/c;

    invoke-direct {v0, p0}, Lc/a/a/b/c;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static d([B)Lc/a/a/b/b;
    .locals 1

    sget-boolean v0, Lc/a/a/b/b;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lc/a/a/b/c;->b([B)Lc/a/a/b/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lc/a/a/b/a;->b([B)Lc/a/a/b/b;

    move-result-object v0

    goto :goto_0
.end method

.method public static g(I)Lc/a/a/b/b;
    .locals 1

    sget-boolean v0, Lc/a/a/b/b;->a:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lc/a/a/b/c;->c(I)Lc/a/a/b/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lc/a/a/b/a;->c(I)Lc/a/a/b/b;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(B)V
.end method

.method public abstract a(C)V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(II)V
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Lc/a/a/b/b;)V
.end method

.method public abstract a(S)V
.end method

.method public abstract a([B)V
.end method

.method public abstract a([BII)V
.end method

.method public abstract b()B
.end method

.method public abstract b(I)B
.end method

.method public abstract c()I
.end method

.method public abstract c([B)V
.end method

.method public abstract d()Lc/a/a/b/b;
.end method

.method public abstract d(I)V
.end method

.method public abstract e(I)C
.end method

.method public abstract e()V
.end method

.method public abstract f()I
.end method

.method public abstract f(I)V
.end method

.method public abstract g()Z
.end method

.method public abstract h()I
.end method

.method public abstract i()[B
.end method

.method public abstract j()V
.end method

.method public abstract k()Lc/a/a/b/b;
.end method

.method public abstract l()I
.end method

.method public abstract m()J
.end method

.method public abstract n()C
.end method

.method public abstract o()S
.end method

.method public abstract p()V
.end method

.method public abstract q()V
.end method

.method public abstract r()Ljava/nio/ByteBuffer;
.end method

.method public abstract s()Z
.end method
