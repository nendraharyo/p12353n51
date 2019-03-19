.class Lcom/crashlytics/android/core/AppData;
.super Ljava/lang/Object;


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final buildId:Ljava/lang/String;

.field public final installerPackageName:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public final versionCode:Ljava/lang/String;

.field public final versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/core/AppData;->apiKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/crashlytics/android/core/AppData;->buildId:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/core/AppData;->installerPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/core/AppData;->packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/crashlytics/android/core/AppData;->versionCode:Ljava/lang/String;

    iput-object p6, p0, Lcom/crashlytics/android/core/AppData;->versionName:Ljava/lang/String;

    return-void
.end method

.method public static create(Landroid/content/Context;Lio/fabric/sdk/android/services/common/IdManager;Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/core/AppData;
    .locals 7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lio/fabric/sdk/android/services/common/IdManager;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v6, "0.0"

    :goto_0
    new-instance v0, Lcom/crashlytics/android/core/AppData;

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/crashlytics/android/core/AppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0
.end method
