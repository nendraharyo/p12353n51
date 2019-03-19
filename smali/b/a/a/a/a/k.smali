.class public final enum Lb/a/a/a/a/k;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/a/a/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/a/a/k;

.field public static final enum b:Lb/a/a/a/a/k;

.field private static final synthetic c:[Lb/a/a/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lb/a/a/a/a/k;

    const-string v1, "TARGET"

    invoke-direct {v0, v1, v2}, Lb/a/a/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/a/k;->a:Lb/a/a/a/a/k;

    new-instance v0, Lb/a/a/a/a/k;

    const-string v1, "PROXY"

    invoke-direct {v0, v1, v3}, Lb/a/a/a/a/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/a/k;->b:Lb/a/a/a/a/k;

    const/4 v0, 0x2

    new-array v0, v0, [Lb/a/a/a/a/k;

    sget-object v1, Lb/a/a/a/a/k;->a:Lb/a/a/a/a/k;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/a/a/a/k;->b:Lb/a/a/a/a/k;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/a/a/a/k;->c:[Lb/a/a/a/a/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/a/a/k;
    .locals 1

    const-class v0, Lb/a/a/a/a/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/k;

    return-object v0
.end method

.method public static values()[Lb/a/a/a/a/k;
    .locals 1

    sget-object v0, Lb/a/a/a/a/k;->c:[Lb/a/a/a/a/k;

    invoke-virtual {v0}, [Lb/a/a/a/a/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/a/k;

    return-object v0
.end method
