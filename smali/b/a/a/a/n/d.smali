.class public final Lb/a/a/a/n/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lb/a/a/a/c;->c:Ljava/nio/charset/Charset;

    sput-object v0, Lb/a/a/a/n/d;->a:Ljava/nio/charset/Charset;

    sget-object v0, Lb/a/a/a/c;->b:Ljava/nio/charset/Charset;

    sput-object v0, Lb/a/a/a/n/d;->b:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
