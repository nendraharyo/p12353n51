.class public Lb/a/a/a/i/d/m;
.super Lb/a/a/a/i/d/p;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lb/a/a/a/i/d/m;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lb/a/a/a/i/d/n$a;->a:Lb/a/a/a/i/d/n$a;

    invoke-direct {p0, v0, v1}, Lb/a/a/a/i/d/m;-><init>([Ljava/lang/String;Lb/a/a/a/i/d/n$a;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lb/a/a/a/i/d/n$a;->a:Lb/a/a/a/i/d/n$a;

    invoke-direct {p0, p1, v0}, Lb/a/a/a/i/d/m;-><init>([Ljava/lang/String;Lb/a/a/a/i/d/n$a;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lb/a/a/a/i/d/n$a;)V
    .locals 3

    invoke-direct {p0}, Lb/a/a/a/i/d/p;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/i/d/m;->b:[Ljava/lang/String;

    :goto_0
    sget-object v0, Lb/a/a/a/i/d/m$2;->a:[I

    invoke-virtual {p2}, Lb/a/a/a/i/d/n$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown security level"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lb/a/a/a/i/d/m;->a:[Ljava/lang/String;

    iput-object v0, p0, Lb/a/a/a/i/d/m;->b:[Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    const-string v0, "path"

    new-instance v1, Lb/a/a/a/i/d/i;

    invoke-direct {v1}, Lb/a/a/a/i/d/i;-><init>()V

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/i/d/m;->a(Ljava/lang/String;Lb/a/a/a/f/c;)V

    :goto_1
    const-string v0, "domain"

    new-instance v1, Lb/a/a/a/i/d/f;

    invoke-direct {v1}, Lb/a/a/a/i/d/f;-><init>()V

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/i/d/m;->a(Ljava/lang/String;Lb/a/a/a/f/c;)V

    const-string v0, "max-age"

    new-instance v1, Lb/a/a/a/i/d/h;

    invoke-direct {v1}, Lb/a/a/a/i/d/h;-><init>()V

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/i/d/m;->a(Ljava/lang/String;Lb/a/a/a/f/c;)V

    const-string v0, "secure"

    new-instance v1, Lb/a/a/a/i/d/j;

    invoke-direct {v1}, Lb/a/a/a/i/d/j;-><init>()V

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/i/d/m;->a(Ljava/lang/String;Lb/a/a/a/f/c;)V

    const-string v0, "comment"

    new-instance v1, Lb/a/a/a/i/d/e;

    invoke-direct {v1}, Lb/a/a/a/i/d/e;-><init>()V

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/i/d/m;->a(Ljava/lang/String;Lb/a/a/a/f/c;)V

    const-string v0, "expires"

    new-instance v1, Lb/a/a/a/i/d/g;

    iget-object v2, p0, Lb/a/a/a/i/d/m;->b:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lb/a/a/a/i/d/g;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/i/d/m;->a(Ljava/lang/String;Lb/a/a/a/f/c;)V

    const-string v0, "version"

    new-instance v1, Lb/a/a/a/i/d/o;

    invoke-direct {v1}, Lb/a/a/a/i/d/o;-><init>()V

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/i/d/m;->a(Ljava/lang/String;Lb/a/a/a/f/c;)V

    return-void

    :pswitch_1
    const-string v0, "path"

    new-instance v1, Lb/a/a/a/i/d/m$1;

    invoke-direct {v1, p0}, Lb/a/a/a/i/d/m$1;-><init>(Lb/a/a/a/i/d/m;)V

    invoke-virtual {p0, v0, v1}, Lb/a/a/a/i/d/m;->a(Ljava/lang/String;Lb/a/a/a/f/c;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lb/a/a/a/e;Lb/a/a/a/f/e;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/e;",
            "Lb/a/a/a/f/e;",
            ")",
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/f/b;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-string v0, "Header"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Cookie origin"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lb/a/a/a/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Set-Cookie"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/f/l;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized cookie header \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/f/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lb/a/a/a/e;->e()[Lb/a/a/a/f;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    move v2, v4

    move v0, v4

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v7, v5, v3

    const-string v8, "version"

    invoke-interface {v7, v8}, Lb/a/a/a/f;->a(Ljava/lang/String;)Lb/a/a/a/y;

    move-result-object v8

    if-eqz v8, :cond_1

    move v0, v1

    :cond_1
    const-string v8, "expires"

    invoke-interface {v7, v8}, Lb/a/a/a/f;->a(Ljava/lang/String;)Lb/a/a/a/y;

    move-result-object v7

    if-eqz v7, :cond_2

    move v2, v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    if-nez v0, :cond_c

    :cond_4
    sget-object v3, Lb/a/a/a/i/d/t;->a:Lb/a/a/a/i/d/t;

    instance-of v0, p1, Lb/a/a/a/d;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lb/a/a/a/d;

    invoke-interface {v0}, Lb/a/a/a/d;->a()Lb/a/a/a/o/d;

    move-result-object v1

    new-instance v0, Lb/a/a/a/k/u;

    check-cast p1, Lb/a/a/a/d;

    invoke-interface {p1}, Lb/a/a/a/d;->b()I

    move-result v5

    invoke-virtual {v1}, Lb/a/a/a/o/d;->c()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lb/a/a/a/k/u;-><init>(II)V

    :goto_1
    invoke-virtual {v3, v1, v0}, Lb/a/a/a/i/d/t;->a(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Lb/a/a/a/f;

    move-result-object v0

    invoke-interface {v0}, Lb/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lb/a/a/a/f;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_5

    invoke-static {v1}, Lb/a/a/a/o/h;->b(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_5
    new-instance v0, Lb/a/a/a/f/l;

    const-string v1, "Cookie name may not be empty"

    invoke-direct {v0, v1}, Lb/a/a/a/f/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-interface {p1}, Lb/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    new-instance v0, Lb/a/a/a/f/l;

    const-string v1, "Header value is null"

    invoke-direct {v0, v1}, Lb/a/a/a/f/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v1, Lb/a/a/a/o/d;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v1, v5}, Lb/a/a/a/o/d;-><init>(I)V

    invoke-virtual {v1, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    new-instance v0, Lb/a/a/a/k/u;

    invoke-virtual {v1}, Lb/a/a/a/o/d;->c()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lb/a/a/a/k/u;-><init>(II)V

    goto :goto_1

    :cond_8
    new-instance v5, Lb/a/a/a/i/d/c;

    invoke-direct {v5, v1, v3}, Lb/a/a/a/i/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lb/a/a/a/i/d/m;->a(Lb/a/a/a/f/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lb/a/a/a/i/d/c;->e(Ljava/lang/String;)V

    invoke-static {p2}, Lb/a/a/a/i/d/m;->b(Lb/a/a/a/f/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lb/a/a/a/i/d/c;->d(Ljava/lang/String;)V

    invoke-interface {v0}, Lb/a/a/a/f;->c()[Lb/a/a/a/y;

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_a

    aget-object v3, v1, v0

    invoke-interface {v3}, Lb/a/a/a/y;->a()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lb/a/a/a/y;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lb/a/a/a/i/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lb/a/a/a/i/d/m;->a(Ljava/lang/String;)Lb/a/a/a/f/c;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Lb/a/a/a/y;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Lb/a/a/a/f/c;->a(Lb/a/a/a/f/m;Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v5, v4}, Lb/a/a/a/i/d/c;->a(I)V

    :cond_b
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_c
    invoke-virtual {p0, v5, p2}, Lb/a/a/a/i/d/m;->a([Lb/a/a/a/f;Lb/a/a/a/f/e;)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/f/b;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lb/a/a/a/e;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "List of cookies"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    new-instance v3, Lb/a/a/a/o/d;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    invoke-direct {v3, v0}, Lb/a/a/a/o/d;-><init>(I)V

    const-string v0, "Cookie"

    invoke-virtual {v3, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {v3, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/f/b;

    if-lez v1, :cond_0

    const-string v4, "; "

    invoke-virtual {v3, v4}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lb/a/a/a/f/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lb/a/a/a/f/b;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lb/a/a/a/f/b;->j()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {v5}, Lb/a/a/a/i/d/m;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lb/a/a/a/k/e;->b:Lb/a/a/a/k/e;

    new-instance v6, Lb/a/a/a/k/c;

    invoke-direct {v6, v4, v5}, Lb/a/a/a/k/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v6, v2}, Lb/a/a/a/k/e;->a(Lb/a/a/a/o/d;Lb/a/a/a/f;Z)Lb/a/a/a/o/d;

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v4}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {v3, v0}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    if-eqz v5, :cond_1

    invoke-virtual {v3, v5}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Lb/a/a/a/k/p;

    invoke-direct {v1, v3}, Lb/a/a/a/k/p;-><init>(Lb/a/a/a/o/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public b()Lb/a/a/a/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "compatibility"

    return-object v0
.end method
