.class public Lb/a/a/a/i/d/t;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/a/a/a/i/d/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/a/i/d/t;

    invoke-direct {v0}, Lb/a/a/a/i/d/t;-><init>()V

    sput-object v0, Lb/a/a/a/i/d/t;->a:Lb/a/a/a/i/d/t;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Lb/a/a/a/y;
    .locals 8

    const/16 v7, 0x3b

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lb/a/a/a/k/u;->b()I

    move-result v3

    invoke-virtual {p2}, Lb/a/a/a/k/u;->b()I

    move-result v1

    invoke-virtual {p2}, Lb/a/a/a/k/u;->a()I

    move-result v5

    :goto_0
    if-ge v3, v5, :cond_0

    invoke-virtual {p1, v3}, Lb/a/a/a/o/d;->a(I)C

    move-result v4

    const/16 v6, 0x3d

    if-ne v4, v6, :cond_1

    :cond_0
    :goto_1
    if-ne v3, v5, :cond_3

    invoke-virtual {p1, v1, v5}, Lb/a/a/a/o/d;->b(II)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    move v1, v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {p2, v3}, Lb/a/a/a/k/u;->a(I)V

    new-instance v0, Lb/a/a/a/k/l;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v1}, Lb/a/a/a/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v0

    :cond_1
    if-ne v4, v7, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1, v3}, Lb/a/a/a/o/d;->b(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    move v1, v2

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_4
    if-ge v2, v5, :cond_9

    invoke-virtual {p1, v2}, Lb/a/a/a/o/d;->a(I)C

    move-result v6

    if-ne v6, v7, :cond_5

    :goto_5
    if-ge v3, v2, :cond_8

    invoke-virtual {p1, v3}, Lb/a/a/a/o/d;->a(I)C

    move-result v1

    invoke-static {v1}, Lb/a/a/a/n/d;->a(C)Z

    move-result v1

    if-eqz v1, :cond_8

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :goto_6
    if-le v1, v3, :cond_6

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v5}, Lb/a/a/a/o/d;->a(I)C

    move-result v5

    invoke-static {v5}, Lb/a/a/a/n/d;->a(C)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v3, v1}, Lb/a/a/a/o/d;->a(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_7

    add-int/lit8 v0, v2, 0x1

    :goto_7
    invoke-virtual {p2, v0}, Lb/a/a/a/k/u;->a(I)V

    new-instance v0, Lb/a/a/a/k/l;

    invoke-direct {v0, v4, v1}, Lb/a/a/a/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v1, v2

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_5
.end method


# virtual methods
.method public a(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Lb/a/a/a/f;
    .locals 5

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lb/a/a/a/i/d/t;->b(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Lb/a/a/a/y;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p2}, Lb/a/a/a/k/u;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lb/a/a/a/i/d/t;->b(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Lb/a/a/a/y;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lb/a/a/a/k/c;

    invoke-interface {v0}, Lb/a/a/a/y;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lb/a/a/a/y;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lb/a/a/a/y;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/y;

    invoke-direct {v2, v3, v4, v0}, Lb/a/a/a/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;[Lb/a/a/a/y;)V

    return-object v2
.end method
