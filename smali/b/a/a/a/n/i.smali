.class public final Lb/a/a/a/n/i;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/n/g;


# instance fields
.field private final a:[Lb/a/a/a/r;

.field private final b:[Lb/a/a/a/u;


# direct methods
.method public constructor <init>([Lb/a/a/a/r;[Lb/a/a/a/u;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v1, v0, [Lb/a/a/a/r;

    iput-object v1, p0, Lb/a/a/a/n/i;->a:[Lb/a/a/a/r;

    iget-object v1, p0, Lb/a/a/a/n/i;->a:[Lb/a/a/a/r;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-eqz p2, :cond_1

    array-length v0, p2

    new-array v1, v0, [Lb/a/a/a/u;

    iput-object v1, p0, Lb/a/a/a/n/i;->b:[Lb/a/a/a/u;

    iget-object v1, p0, Lb/a/a/a/n/i;->b:[Lb/a/a/a/u;

    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-void

    :cond_0
    new-array v0, v2, [Lb/a/a/a/r;

    iput-object v0, p0, Lb/a/a/a/n/i;->a:[Lb/a/a/a/r;

    goto :goto_0

    :cond_1
    new-array v0, v2, [Lb/a/a/a/u;

    iput-object v0, p0, Lb/a/a/a/n/i;->b:[Lb/a/a/a/u;

    goto :goto_1
.end method


# virtual methods
.method public process(Lb/a/a/a/q;Lb/a/a/a/n/e;)V
    .locals 4

    iget-object v1, p0, Lb/a/a/a/n/i;->a:[Lb/a/a/a/r;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2}, Lb/a/a/a/r;->process(Lb/a/a/a/q;Lb/a/a/a/n/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public process(Lb/a/a/a/s;Lb/a/a/a/n/e;)V
    .locals 4

    iget-object v1, p0, Lb/a/a/a/n/i;->b:[Lb/a/a/a/u;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2}, Lb/a/a/a/u;->process(Lb/a/a/a/s;Lb/a/a/a/n/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
