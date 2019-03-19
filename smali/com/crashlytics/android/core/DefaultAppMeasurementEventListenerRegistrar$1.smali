.class Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->onEventListenerProxy(Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar$1;->this$0:Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    array-length v0, p3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected AppMeasurement.OnEventListener signature"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p3, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p3, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, p3, v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v3, "crash"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar$1;->this$0:Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;

    invoke-static {v0}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->access$000(Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;)Lcom/crashlytics/android/core/CrashlyticsCore;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/crashlytics/android/core/DefaultAppMeasurementEventListenerRegistrar;->access$100(Lcom/crashlytics/android/core/CrashlyticsCore;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
