.class public Lio/fabric/sdk/android/services/settings/AppRequestData;
.super Ljava/lang/Object;


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final appId:Ljava/lang/String;

.field public final buildVersion:Ljava/lang/String;

.field public final builtSdkVersion:Ljava/lang/String;

.field public final displayVersion:Ljava/lang/String;

.field public final icon:Lio/fabric/sdk/android/services/settings/IconRequest;

.field public final instanceIdentifier:Ljava/lang/String;

.field public final minSdkVersion:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final sdkKits:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/KitInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final source:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/settings/IconRequest;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/fabric/sdk/android/services/settings/IconRequest;",
            "Ljava/util/Collection",
            "<",
            "Lio/fabric/sdk/android/KitInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->apiKey:Ljava/lang/String;

    iput-object p2, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->appId:Ljava/lang/String;

    iput-object p3, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->displayVersion:Ljava/lang/String;

    iput-object p4, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->buildVersion:Ljava/lang/String;

    iput-object p5, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->instanceIdentifier:Ljava/lang/String;

    iput-object p6, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->name:Ljava/lang/String;

    iput p7, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->source:I

    iput-object p8, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->minSdkVersion:Ljava/lang/String;

    iput-object p9, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->builtSdkVersion:Ljava/lang/String;

    iput-object p10, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->icon:Lio/fabric/sdk/android/services/settings/IconRequest;

    iput-object p11, p0, Lio/fabric/sdk/android/services/settings/AppRequestData;->sdkKits:Ljava/util/Collection;

    return-void
.end method
