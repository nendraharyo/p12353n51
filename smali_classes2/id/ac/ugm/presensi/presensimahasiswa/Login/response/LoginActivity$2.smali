.class Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    iget-object v2, v2, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->a:Lcom/google/android/gms/location/LocationRequest;

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->a(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    iget-object v3, v3, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->a:Lcom/google/android/gms/location/LocationRequest;

    iget-object v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v1, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->b:D

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v1, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->c:D

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    const-wide v2, -0x3fe0ee846a5d6becL    # -7.767073

    iput-wide v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->b:D

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    const-wide v2, 0x405b98253543aeabL    # 110.377271

    iput-wide v2, v0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->c:D

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    iget-wide v2, v1, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->b:D

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity$2;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;

    iget-wide v4, v1, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->c:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->a(DD)V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    const-string v0, "LoginActivity"

    const-string v1, "onConnectionSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
