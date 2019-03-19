.class public Lio/fabric/sdk/android/Fabric$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/Fabric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appIdentifier:Ljava/lang/String;

.field private appInstallIdentifier:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private debuggable:Z

.field private handler:Landroid/os/Handler;

.field private initializationCallback:Lio/fabric/sdk/android/InitializationCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/InitializationCallback",
            "<",
            "Lio/fabric/sdk/android/Fabric;",
            ">;"
        }
    .end annotation
.end field

.field private kits:[Lio/fabric/sdk/android/Kit;

.field private logger:Lio/fabric/sdk/android/Logger;

.field private threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public appIdentifier(Ljava/lang/String;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appIdentifier must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "appIdentifier already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public appInstallIdentifier(Ljava/lang/String;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appInstallIdentifier must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->appInstallIdentifier:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "appInstallIdentifier already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->appInstallIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lio/fabric/sdk/android/Fabric;
    .locals 10

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    if-nez v0, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;->create()Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->handler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->debuggable:Z

    if-eqz v0, :cond_5

    new-instance v0, Lio/fabric/sdk/android/DefaultLogger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/DefaultLogger;-><init>(I)V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    :cond_2
    :goto_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    if-nez v0, :cond_4

    sget-object v0, Lio/fabric/sdk/android/InitializationCallback;->EMPTY:Lio/fabric/sdk/android/InitializationCallback;

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    :cond_4
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->kits:[Lio/fabric/sdk/android/Kit;

    if-nez v0, :cond_6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_1
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v8, Lio/fabric/sdk/android/services/common/IdManager;

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->appIdentifier:Ljava/lang/String;

    iget-object v3, p0, Lio/fabric/sdk/android/Fabric$Builder;->appInstallIdentifier:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v8, v1, v0, v3, v4}, Lio/fabric/sdk/android/services/common/IdManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    new-instance v0, Lio/fabric/sdk/android/Fabric;

    iget-object v3, p0, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    iget-object v4, p0, Lio/fabric/sdk/android/Fabric$Builder;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    iget-boolean v6, p0, Lio/fabric/sdk/android/Fabric$Builder;->debuggable:Z

    iget-object v7, p0, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    iget-object v9, p0, Lio/fabric/sdk/android/Fabric$Builder;->context:Landroid/content/Context;

    invoke-static {v9}, Lio/fabric/sdk/android/Fabric;->access$100(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lio/fabric/sdk/android/Fabric;-><init>(Landroid/content/Context;Ljava/util/Map;Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;Landroid/os/Handler;Lio/fabric/sdk/android/Logger;ZLio/fabric/sdk/android/InitializationCallback;Lio/fabric/sdk/android/services/common/IdManager;Landroid/app/Activity;)V

    return-object v0

    :cond_5
    new-instance v0, Lio/fabric/sdk/android/DefaultLogger;

    invoke-direct {v0}, Lio/fabric/sdk/android/DefaultLogger;-><init>()V

    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->kits:[Lio/fabric/sdk/android/Kit;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/Fabric;->access$000(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    goto :goto_1
.end method

.method public debuggable(Z)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 0

    iput-boolean p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->debuggable:Z

    return-object p0
.end method

.method public executorService(Ljava/util/concurrent/ExecutorService;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public handler(Landroid/os/Handler;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public initializationCallback(Lio/fabric/sdk/android/InitializationCallback;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/InitializationCallback",
            "<",
            "Lio/fabric/sdk/android/Fabric;",
            ">;)",
            "Lio/fabric/sdk/android/Fabric$Builder;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "initializationCallback must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initializationCallback already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->initializationCallback:Lio/fabric/sdk/android/InitializationCallback;

    return-object p0
.end method

.method public varargs kits([Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 10

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->kits:[Lio/fabric/sdk/android/Kit;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Kits already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lio/fabric/sdk/android/services/common/FirebaseInfo;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/common/FirebaseInfo;-><init>()V

    iget-object v2, p0, Lio/fabric/sdk/android/Fabric$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lio/fabric/sdk/android/services/common/FirebaseInfo;->isDataCollectionDefaultEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, p1

    move v4, v3

    move v0, v3

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v7, p1, v4

    invoke-virtual {v7}, Lio/fabric/sdk/android/Kit;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    const/4 v2, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    if-nez v0, :cond_2

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v2, "Fabric"

    const-string v7, "Fabric will not initialize any kits when Firebase automatic data collection is disabled; to use Third-party kits with automatic data collection disabled, initialize these kits via non-Fabric means."

    invoke-interface {v0, v2, v7}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :cond_2
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :sswitch_0
    const-string v9, "com.crashlytics.sdk.android:crashlytics"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v3

    goto :goto_1

    :sswitch_1
    const-string v9, "com.crashlytics.sdk.android:answers"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v1

    goto :goto_1

    :pswitch_0
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-array v0, v3, [Lio/fabric/sdk/android/Kit;

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/fabric/sdk/android/Kit;

    :goto_3
    iput-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->kits:[Lio/fabric/sdk/android/Kit;

    return-object p0

    :cond_4
    move-object v0, p1

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x243171f4 -> :sswitch_1
        0x6d1a7d18 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public logger(Lio/fabric/sdk/android/Logger;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Logger must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Logger already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->logger:Lio/fabric/sdk/android/Logger;

    return-object p0
.end method

.method public threadPoolExecutor(Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;)Lio/fabric/sdk/android/Fabric$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PriorityThreadPoolExecutor must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PriorityThreadPoolExecutor already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lio/fabric/sdk/android/Fabric$Builder;->threadPoolExecutor:Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;

    return-object p0
.end method
