.class final enum Lb/a/a/a/i/a/k$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/i/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/a/i/a/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/a/i/a/k$a;

.field public static final enum b:Lb/a/a/a/i/a/k$a;

.field public static final enum c:Lb/a/a/a/i/a/k$a;

.field public static final enum d:Lb/a/a/a/i/a/k$a;

.field public static final enum e:Lb/a/a/a/i/a/k$a;

.field public static final enum f:Lb/a/a/a/i/a/k$a;

.field private static final synthetic g:[Lb/a/a/a/i/a/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lb/a/a/a/i/a/k$a;

    const-string v1, "UNINITIATED"

    invoke-direct {v0, v1, v3}, Lb/a/a/a/i/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/i/a/k$a;->a:Lb/a/a/a/i/a/k$a;

    new-instance v0, Lb/a/a/a/i/a/k$a;

    const-string v1, "CHALLENGE_RECEIVED"

    invoke-direct {v0, v1, v4}, Lb/a/a/a/i/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/i/a/k$a;->b:Lb/a/a/a/i/a/k$a;

    new-instance v0, Lb/a/a/a/i/a/k$a;

    const-string v1, "MSG_TYPE1_GENERATED"

    invoke-direct {v0, v1, v5}, Lb/a/a/a/i/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/i/a/k$a;->c:Lb/a/a/a/i/a/k$a;

    new-instance v0, Lb/a/a/a/i/a/k$a;

    const-string v1, "MSG_TYPE2_RECEVIED"

    invoke-direct {v0, v1, v6}, Lb/a/a/a/i/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/i/a/k$a;->d:Lb/a/a/a/i/a/k$a;

    new-instance v0, Lb/a/a/a/i/a/k$a;

    const-string v1, "MSG_TYPE3_GENERATED"

    invoke-direct {v0, v1, v7}, Lb/a/a/a/i/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/i/a/k$a;->e:Lb/a/a/a/i/a/k$a;

    new-instance v0, Lb/a/a/a/i/a/k$a;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lb/a/a/a/i/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/i/a/k$a;->f:Lb/a/a/a/i/a/k$a;

    const/4 v0, 0x6

    new-array v0, v0, [Lb/a/a/a/i/a/k$a;

    sget-object v1, Lb/a/a/a/i/a/k$a;->a:Lb/a/a/a/i/a/k$a;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/a/a/i/a/k$a;->b:Lb/a/a/a/i/a/k$a;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/a/a/i/a/k$a;->c:Lb/a/a/a/i/a/k$a;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/a/a/i/a/k$a;->d:Lb/a/a/a/i/a/k$a;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/a/a/i/a/k$a;->e:Lb/a/a/a/i/a/k$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lb/a/a/a/i/a/k$a;->f:Lb/a/a/a/i/a/k$a;

    aput-object v2, v0, v1

    sput-object v0, Lb/a/a/a/i/a/k$a;->g:[Lb/a/a/a/i/a/k$a;

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

.method public static valueOf(Ljava/lang/String;)Lb/a/a/a/i/a/k$a;
    .locals 1

    const-class v0, Lb/a/a/a/i/a/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/a/i/a/k$a;

    return-object v0
.end method

.method public static values()[Lb/a/a/a/i/a/k$a;
    .locals 1

    sget-object v0, Lb/a/a/a/i/a/k$a;->g:[Lb/a/a/a/i/a/k$a;

    invoke-virtual {v0}, [Lb/a/a/a/i/a/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/i/a/k$a;

    return-object v0
.end method
