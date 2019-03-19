.class public Lb/a/a/a/n/k;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/r;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/n/k;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb/a/a/a/n/k;->a:Z

    return-void
.end method


# virtual methods
.method public process(Lb/a/a/a/q;Lb/a/a/a/n/e;)V
    .locals 6

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Expect"

    invoke-interface {p1, v0}, Lb/a/a/a/q;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lb/a/a/a/l;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/ae;->b()Lb/a/a/a/ac;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lb/a/a/a/l;

    invoke-interface {v0}, Lb/a/a/a/l;->getEntity()Lb/a/a/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/a/a/a/k;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    sget-object v0, Lb/a/a/a/v;->b:Lb/a/a/a/v;

    invoke-virtual {v1, v0}, Lb/a/a/a/ac;->c(Lb/a/a/a/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lb/a/a/a/q;->getParams()Lb/a/a/a/l/e;

    move-result-object v0

    const-string v1, "http.protocol.expect-continue"

    iget-boolean v2, p0, Lb/a/a/a/n/k;->a:Z

    invoke-interface {v0, v1, v2}, Lb/a/a/a/l/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Expect"

    const-string v1, "100-continue"

    invoke-interface {p1, v0, v1}, Lb/a/a/a/q;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
