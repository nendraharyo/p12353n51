.class final Lcom/google/android/gms/wearable/internal/zzj$zzf;
.super Lcom/google/android/gms/wearable/internal/zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzi",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private zzbrQ:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzi;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzj$zzf;->zzbrQ:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Lcom/google/android/gms/wearable/internal/zzj$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/zzj$zzf;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/wearable/internal/zzbp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzj$zzf;->zza(Lcom/google/android/gms/wearable/internal/zzbp;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/wearable/internal/zzbp;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzj$zzf;->zzbrQ:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/wearable/internal/zzbp;->zza(Lcom/google/android/gms/common/api/internal/zza$zzb;Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzj$zzf;->zzbrQ:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/zzj$zzf;->zzbrQ:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    return-object p1
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/wearable/internal/zzj$zzf;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method
