.class Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;
.super Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/SnapshotsImpl;->load(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaFO:Z

.field final synthetic zzaHq:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/SnapshotsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;->zzaHq:Lcom/google/android/gms/games/internal/api/SnapshotsImpl;

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;->zzaFO:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$LoadImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/SnapshotsImpl$1;->zzaFO:Z

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzf(Lcom/google/android/gms/common/api/internal/zza$zzb;Z)V

    return-void
.end method
