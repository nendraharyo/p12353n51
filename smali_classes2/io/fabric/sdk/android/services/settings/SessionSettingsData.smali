.class public Lio/fabric/sdk/android/services/settings/SessionSettingsData;
.super Ljava/lang/Object;


# instance fields
.field public final identifierMask:I

.field public final logBufferSize:I

.field public final maxChainedExceptionDepth:I

.field public final maxCompleteSessionsCount:I

.field public final maxCustomExceptionEvents:I

.field public final maxCustomKeyValuePairs:I

.field public final sendSessionWithoutCrash:Z


# direct methods
.method public constructor <init>(IIIIIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->logBufferSize:I

    iput p2, p0, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->maxChainedExceptionDepth:I

    iput p3, p0, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->maxCustomExceptionEvents:I

    iput p4, p0, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->maxCustomKeyValuePairs:I

    iput p5, p0, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->identifierMask:I

    iput-boolean p6, p0, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->sendSessionWithoutCrash:Z

    iput p7, p0, Lio/fabric/sdk/android/services/settings/SessionSettingsData;->maxCompleteSessionsCount:I

    return-void
.end method
