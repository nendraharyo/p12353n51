.class Lcom/crashlytics/android/core/PreferenceManager;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CommitPrefEdits"
    }
.end annotation


# static fields
.field static final PREF_ALWAYS_SEND_REPORTS_KEY:Ljava/lang/String; = "always_send_reports_opt_in"

.field private static final PREF_MIGRATION_COMPLETE:Ljava/lang/String; = "preferences_migration_complete"

.field private static final SHOULD_ALWAYS_SEND_REPORTS_DEFAULT:Z


# instance fields
.field private final kit:Lcom/crashlytics/android/core/CrashlyticsCore;

.field private final preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/services/persistence/PreferenceStore;Lcom/crashlytics/android/core/CrashlyticsCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    iput-object p2, p0, Lcom/crashlytics/android/core/PreferenceManager;->kit:Lcom/crashlytics/android/core/CrashlyticsCore;

    return-void
.end method

.method public static create(Lio/fabric/sdk/android/services/persistence/PreferenceStore;Lcom/crashlytics/android/core/CrashlyticsCore;)Lcom/crashlytics/android/core/PreferenceManager;
    .locals 1

    new-instance v0, Lcom/crashlytics/android/core/PreferenceManager;

    invoke-direct {v0, p0, p1}, Lcom/crashlytics/android/core/PreferenceManager;-><init>(Lio/fabric/sdk/android/services/persistence/PreferenceStore;Lcom/crashlytics/android/core/CrashlyticsCore;)V

    return-object v0
.end method


# virtual methods
.method setShouldAlwaysSendReports(Z)V
    .locals 3

    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    iget-object v1, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method

.method shouldAlwaysSendReports()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "preferences_migration_complete"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v3, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;

    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->kit:Lcom/crashlytics/android/core/CrashlyticsCore;

    invoke-direct {v3, v0}, Lio/fabric/sdk/android/services/persistence/PreferenceStoreImpl;-><init>(Lio/fabric/sdk/android/Kit;)V

    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "always_send_reports_opt_in"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "always_send_reports_opt_in"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v3}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "always_send_reports_opt_in"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    iget-object v4, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v4}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "always_send_reports_opt_in"

    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v3, v0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    iget-object v3, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v3}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "preferences_migration_complete"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->save(Landroid/content/SharedPreferences$Editor;)Z

    :cond_1
    iget-object v0, p0, Lcom/crashlytics/android/core/PreferenceManager;->preferenceStore:Lio/fabric/sdk/android/services/persistence/PreferenceStore;

    invoke-interface {v0}, Lio/fabric/sdk/android/services/persistence/PreferenceStore;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "always_send_reports_opt_in"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
