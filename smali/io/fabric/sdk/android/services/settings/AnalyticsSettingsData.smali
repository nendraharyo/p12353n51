.class public Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_SAMPLING_RATE:I = 0x1


# instance fields
.field public final analyticsURL:Ljava/lang/String;

.field public final flushIntervalSeconds:I

.field public final flushOnBackground:Z

.field public final forwardToFirebaseAnalytics:Z

.field public final includePurchaseEventsInForwardedEvents:Z

.field public final maxByteSizePerFile:I

.field public final maxFileCountPerSend:I

.field public final maxPendingSendFileCount:I

.field public final samplingRate:I

.field public final trackCustomEvents:Z

.field public final trackPredefinedEvents:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIZ)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v11}, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;-><init>(Ljava/lang/String;IIIIZZZZIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZI)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v8, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v11}, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;-><init>(Ljava/lang/String;IIIIZZZZIZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIZZZZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->analyticsURL:Ljava/lang/String;

    iput p2, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->flushIntervalSeconds:I

    iput p3, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->maxByteSizePerFile:I

    iput p4, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->maxFileCountPerSend:I

    iput p5, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->maxPendingSendFileCount:I

    iput-boolean p6, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->forwardToFirebaseAnalytics:Z

    iput-boolean p7, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->includePurchaseEventsInForwardedEvents:Z

    iput-boolean p8, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->trackCustomEvents:Z

    iput-boolean p9, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->trackPredefinedEvents:Z

    iput p10, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->samplingRate:I

    iput-boolean p11, p0, Lio/fabric/sdk/android/services/settings/AnalyticsSettingsData;->flushOnBackground:Z

    return-void
.end method
