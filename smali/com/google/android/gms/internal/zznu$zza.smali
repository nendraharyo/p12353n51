.class public final enum Lcom/google/android/gms/internal/zznu$zza;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zznu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zznu$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzazA:Lcom/google/android/gms/internal/zznu$zza;

.field private static final synthetic zzazB:[Lcom/google/android/gms/internal/zznu$zza;

.field public static final enum zzazx:Lcom/google/android/gms/internal/zznu$zza;

.field public static final enum zzazy:Lcom/google/android/gms/internal/zznu$zza;

.field public static final enum zzazz:Lcom/google/android/gms/internal/zznu$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zznu$zza;

    const-string v1, "CUMULATIVE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zznu$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zznu$zza;->zzazx:Lcom/google/android/gms/internal/zznu$zza;

    new-instance v0, Lcom/google/android/gms/internal/zznu$zza;

    const-string v1, "DELTA"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zznu$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zznu$zza;->zzazy:Lcom/google/android/gms/internal/zznu$zza;

    new-instance v0, Lcom/google/android/gms/internal/zznu$zza;

    const-string v1, "SAMPLE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zznu$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zznu$zza;->zzazz:Lcom/google/android/gms/internal/zznu$zza;

    new-instance v0, Lcom/google/android/gms/internal/zznu$zza;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zznu$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zznu$zza;->zzazA:Lcom/google/android/gms/internal/zznu$zza;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/zznu$zza;

    sget-object v1, Lcom/google/android/gms/internal/zznu$zza;->zzazx:Lcom/google/android/gms/internal/zznu$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zznu$zza;->zzazy:Lcom/google/android/gms/internal/zznu$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zznu$zza;->zzazz:Lcom/google/android/gms/internal/zznu$zza;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zznu$zza;->zzazA:Lcom/google/android/gms/internal/zznu$zza;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/internal/zznu$zza;->zzazB:[Lcom/google/android/gms/internal/zznu$zza;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/internal/zznu$zza;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zznu$zza;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zznu$zza;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/zznu$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zznu$zza;->zzazB:[Lcom/google/android/gms/internal/zznu$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zznu$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zznu$zza;

    return-object v0
.end method
