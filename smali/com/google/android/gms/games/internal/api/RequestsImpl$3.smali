.class Lcom/google/android/gms/games/internal/api/RequestsImpl$3;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/RequestsImpl;->loadRequests(Lcom/google/android/gms/common/api/GoogleApiClient;III)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaGl:I

.field final synthetic zzaHf:Lcom/google/android/gms/games/internal/api/RequestsImpl;

.field final synthetic zzaHg:I

.field final synthetic zzaHh:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/RequestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;III)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzaHf:Lcom/google/android/gms/games/internal/api/RequestsImpl;

    iput p3, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzaHg:I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzaHh:I

    iput p5, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzaGl:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/RequestsImpl$LoadRequestsImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/RequestsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzaHg:I

    iget v1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzaHh:I

    iget v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$3;->zzaGl:I

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/common/api/internal/zza$zzb;III)V

    return-void
.end method
