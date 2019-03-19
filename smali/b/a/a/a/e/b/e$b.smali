.class public final enum Lb/a/a/a/e/b/e$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/e/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/a/e/b/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/a/e/b/e$b;

.field public static final enum b:Lb/a/a/a/e/b/e$b;

.field private static final synthetic c:[Lb/a/a/a/e/b/e$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lb/a/a/a/e/b/e$b;

    const-string v1, "PLAIN"

    invoke-direct {v0, v1, v2}, Lb/a/a/a/e/b/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/e/b/e$b;->a:Lb/a/a/a/e/b/e$b;

    new-instance v0, Lb/a/a/a/e/b/e$b;

    const-string v1, "TUNNELLED"

    invoke-direct {v0, v1, v3}, Lb/a/a/a/e/b/e$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/e/b/e$b;->b:Lb/a/a/a/e/b/e$b;

    const/4 v0, 0x2

    new-array v0, v0, [Lb/a/a/a/e/b/e$b;

    sget-object v1, Lb/a/a/a/e/b/e$b;->a:Lb/a/a/a/e/b/e$b;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/a/a/e/b/e$b;->b:Lb/a/a/a/e/b/e$b;

    aput-object v1, v0, v3

    sput-object v0, Lb/a/a/a/e/b/e$b;->c:[Lb/a/a/a/e/b/e$b;

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

.method public static valueOf(Ljava/lang/String;)Lb/a/a/a/e/b/e$b;
    .locals 1

    const-class v0, Lb/a/a/a/e/b/e$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/a/e/b/e$b;

    return-object v0
.end method

.method public static values()[Lb/a/a/a/e/b/e$b;
    .locals 1

    sget-object v0, Lb/a/a/a/e/b/e$b;->c:[Lb/a/a/a/e/b/e$b;

    invoke-virtual {v0}, [Lb/a/a/a/e/b/e$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/e/b/e$b;

    return-object v0
.end method
