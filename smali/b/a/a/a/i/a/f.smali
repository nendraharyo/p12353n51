.class public Lb/a/a/a/i/a/f;
.super Ljava/lang/Object;


# instance fields
.field public a:Lb/a/a/a/h/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/i/a/f;-><init>(Lb/a/a/a/h/b;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/h/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    return-void

    :cond_0
    new-instance p1, Lb/a/a/a/h/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lb/a/a/a/h/b;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/b/c;Lb/a/a/a/a/h;Lb/a/a/a/n/e;)Z
    .locals 2

    invoke-interface {p3, p1, p2, p5}, Lb/a/a/a/b/c;->a(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/n/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    const-string v1, "Authentication required"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lb/a/a/a/a/h;->b()Lb/a/a/a/a/b;

    move-result-object v0

    sget-object v1, Lb/a/a/a/a/b;->e:Lb/a/a/a/a/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p4}, Lb/a/a/a/a/h;->c()Lb/a/a/a/a/c;

    move-result-object v0

    invoke-interface {p3, p1, v0, p5}, Lb/a/a/a/b/c;->b(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/n/e;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    sget-object v0, Lb/a/a/a/i/a/f$1;->a:[I

    invoke-virtual {p4}, Lb/a/a/a/a/h;->b()Lb/a/a/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/a/a/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lb/a/a/a/a/b;->a:Lb/a/a/a/a/b;

    invoke-virtual {p4, v0}, Lb/a/a/a/a/h;->a(Lb/a/a/a/a/b;)V

    :goto_1
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    const-string v1, "Authentication succeeded"

    invoke-virtual {v0, v1}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    sget-object v0, Lb/a/a/a/a/b;->e:Lb/a/a/a/a/b;

    invoke-virtual {p4, v0}, Lb/a/a/a/a/h;->a(Lb/a/a/a/a/b;)V

    invoke-virtual {p4}, Lb/a/a/a/a/h;->c()Lb/a/a/a/a/c;

    move-result-object v0

    invoke-interface {p3, p1, v0, p5}, Lb/a/a/a/b/c;->a(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/n/e;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/b/c;Lb/a/a/a/a/h;Lb/a/a/a/n/e;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    invoke-virtual {v0}, Lb/a/a/a/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lb/a/a/a/n;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested authentication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p3, p1, p2, p5}, Lb/a/a/a/b/c;->b(Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/n/e;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    const-string v2, "Response contains no authentication challenges"

    invoke-virtual {v0, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p4}, Lb/a/a/a/a/h;->c()Lb/a/a/a/a/c;

    move-result-object v4

    sget-object v0, Lb/a/a/a/i/a/f$1;->a:[I

    invoke-virtual {p4}, Lb/a/a/a/a/h;->b()Lb/a/a/a/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lb/a/a/a/a/b;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-interface {p3, v3, p1, p2, p5}, Lb/a/a/a/b/c;->a(Ljava/util/Map;Lb/a/a/a/n;Lb/a/a/a/s;Lb/a/a/a/n/e;)Ljava/util/Queue;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    invoke-virtual {v3}, Lb/a/a/a/h/b;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected authentication options: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    :cond_3
    sget-object v3, Lb/a/a/a/a/b;->b:Lb/a/a/a/a/b;

    invoke-virtual {p4, v3}, Lb/a/a/a/a/h;->a(Lb/a/a/a/a/b;)V

    invoke-virtual {p4, v0}, Lb/a/a/a/a/h;->a(Ljava/util/Queue;)V

    move v0, v2

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p4}, Lb/a/a/a/a/h;->a()V
    :try_end_0
    .catch Lb/a/a/a/a/o; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    invoke-virtual {v2}, Lb/a/a/a/h/b;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed challenge: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lb/a/a/a/a/o;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lb/a/a/a/h/b;->c(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p4}, Lb/a/a/a/a/h;->a()V

    move v0, v1

    goto :goto_0

    :pswitch_2
    if-nez v4, :cond_5

    :try_start_1
    iget-object v0, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    const-string v2, "Auth scheme is null"

    invoke-virtual {v0, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-interface {p3, p1, v0, p5}, Lb/a/a/a/b/c;->b(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/n/e;)V

    invoke-virtual {p4}, Lb/a/a/a/a/h;->a()V

    sget-object v0, Lb/a/a/a/a/b;->d:Lb/a/a/a/a/b;

    invoke-virtual {p4, v0}, Lb/a/a/a/a/h;->a(Lb/a/a/a/a/b;)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    :pswitch_3
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lb/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e;

    if-eqz v0, :cond_7

    iget-object v3, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    const-string v5, "Authorization challenge processed"

    invoke-virtual {v3, v5}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    invoke-interface {v4, v0}, Lb/a/a/a/a/c;->a(Lb/a/a/a/e;)V

    invoke-interface {v4}, Lb/a/a/a/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lb/a/a/a/i/a/f;->a:Lb/a/a/a/h/b;

    const-string v2, "Authentication failed"

    invoke-virtual {v0, v2}, Lb/a/a/a/h/b;->a(Ljava/lang/Object;)V

    invoke-virtual {p4}, Lb/a/a/a/a/h;->c()Lb/a/a/a/a/c;

    move-result-object v0

    invoke-interface {p3, p1, v0, p5}, Lb/a/a/a/b/c;->b(Lb/a/a/a/n;Lb/a/a/a/a/c;Lb/a/a/a/n/e;)V

    invoke-virtual {p4}, Lb/a/a/a/a/h;->a()V

    sget-object v0, Lb/a/a/a/a/b;->d:Lb/a/a/a/a/b;

    invoke-virtual {p4, v0}, Lb/a/a/a/a/h;->a(Lb/a/a/a/a/b;)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lb/a/a/a/a/b;->c:Lb/a/a/a/a/b;

    invoke-virtual {p4, v0}, Lb/a/a/a/a/h;->a(Lb/a/a/a/a/b;)V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p4}, Lb/a/a/a/a/h;->a()V
    :try_end_1
    .catch Lb/a/a/a/a/o; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_8
    move v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
