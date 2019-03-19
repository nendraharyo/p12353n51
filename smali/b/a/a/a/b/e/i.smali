.class public Lb/a/a/a/b/e/i;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/u;


# instance fields
.field public a:Lb/a/a/a/h/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb/a/a/a/b/e/i;->a:Lb/a/a/a/h/b;

    return-void
.end method

.method private static a(Lb/a/a/a/f/b;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lb/a/a/a/f/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lb/a/a/a/f/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", version:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lb/a/a/a/f/b;->j()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", domain:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lb/a/a/a/f/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", path:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lb/a/a/a/f/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expiry:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lb/a/a/a/f/b;->d()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lb/a/a/a/h;Lb/a/a/a/f/h;Lb/a/a/a/f/e;Lb/a/a/a/b/h;)V
    .locals 7

    :cond_0
    :goto_0
    invoke-interface {p1}, Lb/a/a/a/h;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lb/a/a/a/h;->a()Lb/a/a/a/e;

    move-result-object v2

    :try_start_0
    invoke-interface {p2, v2, p3}, Lb/a/a/a/f/h;->a(Lb/a/a/a/e;Lb/a/a/a/f/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/f/b;
    :try_end_0
    .catch Lb/a/a/a/f/l; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p2, v0, p3}, Lb/a/a/a/f/h;->a(Lb/a/a/a/f/b;Lb/a/a/a/f/e;)V

    invoke-interface {p4, v0}, Lb/a/a/a/b/h;->addCookie(Lb/a/a/a/f/b;)V

    iget-object v1, p0, Lb/a/a/a/b/e/i;->a:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Lb/a/a/a/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/a/a/a/b/e/i;->a:Lb/a/a/a/h/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cookie accepted ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lb/a/a/a/b/e/i;->a(Lb/a/a/a/f/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lb/a/a/a/f/l; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v4, p0, Lb/a/a/a/b/e/i;->a:Lb/a/a/a/h/b;

    invoke-virtual {v4}, Lb/a/a/a/h/b;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lb/a/a/a/b/e/i;->a:Lb/a/a/a/h/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cookie rejected ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lb/a/a/a/b/e/i;->a(Lb/a/a/a/f/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lb/a/a/a/f/l;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lb/a/a/a/h/b;->c(Ljava/lang/Object;)V
    :try_end_2
    .catch Lb/a/a/a/f/l; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lb/a/a/a/b/e/i;->a:Lb/a/a/a/h/b;

    invoke-virtual {v1}, Lb/a/a/a/h/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/a/b/e/i;->a:Lb/a/a/a/h/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid cookie header: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lb/a/a/a/f/l;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/a/a/a/h/b;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public process(Lb/a/a/a/s;Lb/a/a/a/n/e;)V
    .locals 4

    const-string v0, "HTTP request"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP context"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p2}, Lb/a/a/a/b/e/a;->a(Lb/a/a/a/n/e;)Lb/a/a/a/b/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/b/e/a;->c()Lb/a/a/a/f/h;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lb/a/a/a/b/e/i;->a:Lb/a/a/a/h/b;

    const-string v1, "Cookie spec not specified in HTTP context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lb/a/a/a/b/e/a;->b()Lb/a/a/a/b/h;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lb/a/a/a/b/e/i;->a:Lb/a/a/a/h/b;

    const-string v1, "Cookie store not specified in HTTP context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lb/a/a/a/b/e/a;->d()Lb/a/a/a/f/e;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lb/a/a/a/b/e/i;->a:Lb/a/a/a/h/b;

    const-string v1, "Cookie origin not specified in HTTP context"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v3, "Set-Cookie"

    invoke-interface {p1, v3}, Lb/a/a/a/s;->headerIterator(Ljava/lang/String;)Lb/a/a/a/h;

    move-result-object v3

    invoke-direct {p0, v3, v1, v0, v2}, Lb/a/a/a/b/e/i;->a(Lb/a/a/a/h;Lb/a/a/a/f/h;Lb/a/a/a/f/e;Lb/a/a/a/b/h;)V

    invoke-interface {v1}, Lb/a/a/a/f/h;->a()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "Set-Cookie2"

    invoke-interface {p1, v3}, Lb/a/a/a/s;->headerIterator(Ljava/lang/String;)Lb/a/a/a/h;

    move-result-object v3

    invoke-direct {p0, v3, v1, v0, v2}, Lb/a/a/a/b/e/i;->a(Lb/a/a/a/h;Lb/a/a/a/f/h;Lb/a/a/a/f/e;Lb/a/a/a/b/h;)V

    goto :goto_0
.end method
