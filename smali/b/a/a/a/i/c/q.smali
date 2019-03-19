.class public Lb/a/a/a/i/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/e/j;


# static fields
.field public static final a:Lb/a/a/a/i/c/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/a/i/c/q;

    invoke-direct {v0}, Lb/a/a/a/i/c/q;-><init>()V

    sput-object v0, Lb/a/a/a/i/c/q;->a:Lb/a/a/a/i/c/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
