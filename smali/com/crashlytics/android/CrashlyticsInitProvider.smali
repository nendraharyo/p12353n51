.class public Lcom/crashlytics/android/CrashlyticsInitProvider;
.super Landroid/content/ContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashlyticsInitProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/crashlytics/android/CrashlyticsInitProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lio/fabric/sdk/android/services/common/FirebaseInfo;

    invoke-direct {v3}, Lio/fabric/sdk/android/services/common/FirebaseInfo;-><init>()V

    new-instance v4, Lcom/crashlytics/android/ManifestEnabledCheckStrategy;

    invoke-direct {v4}, Lcom/crashlytics/android/ManifestEnabledCheckStrategy;-><init>()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/crashlytics/android/CrashlyticsInitProvider;->shouldInitializeFabric(Landroid/content/Context;Lio/fabric/sdk/android/services/common/FirebaseInfo;Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Lio/fabric/sdk/android/Kit;

    const/4 v4, 0x0

    new-instance v5, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v5}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v2

    const-string v3, "CrashlyticsInitProvider"

    const-string v4, "CrashlyticsInitProvider initialization successful"

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v2, "CrashlyticsInitProvider"

    const-string v3, "CrashlyticsInitProvider initialization unsuccessful"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method shouldInitializeFabric(Landroid/content/Context;Lio/fabric/sdk/android/services/common/FirebaseInfo;Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;)Z
    .locals 1

    invoke-virtual {p2, p1}, Lio/fabric/sdk/android/services/common/FirebaseInfo;->isFirebaseCrashlyticsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3, p1}, Lcom/crashlytics/android/CrashlyticsInitProvider$EnabledCheckStrategy;->isCrashlyticsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
