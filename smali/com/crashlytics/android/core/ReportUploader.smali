.class Lcom/crashlytics/android/core/ReportUploader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crashlytics/android/core/ReportUploader$Worker;,
        Lcom/crashlytics/android/core/ReportUploader$AlwaysSendCheck;,
        Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;,
        Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;,
        Lcom/crashlytics/android/core/ReportUploader$SendCheck;
    }
.end annotation


# static fields
.field static final HEADER_INVALID_CLS_FILE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RETRY_INTERVALS:[S


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final createReportCall:Lcom/crashlytics/android/core/CreateReportSpiCall;

.field private final fileAccessLock:Ljava/lang/Object;

.field private final handlingExceptionCheck:Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;

.field private final reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

.field private uploadThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "X-CRASHLYTICS-INVALID-SESSION"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/ReportUploader;->HEADER_INVALID_CLS_FILE:Ljava/util/Map;

    const/4 v0, 0x6

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/crashlytics/android/core/ReportUploader;->RETRY_INTERVALS:[S

    return-void

    nop

    :array_0
    .array-data 2
        0xas
        0x14s
        0x1es
        0x3cs
        0x78s
        0x12cs
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/crashlytics/android/core/CreateReportSpiCall;Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->fileAccessLock:Ljava/lang/Object;

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "createReportCall must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/crashlytics/android/core/ReportUploader;->createReportCall:Lcom/crashlytics/android/core/CreateReportSpiCall;

    iput-object p1, p0, Lcom/crashlytics/android/core/ReportUploader;->apiKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/core/ReportUploader;->reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

    iput-object p4, p0, Lcom/crashlytics/android/core/ReportUploader;->handlingExceptionCheck:Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;

    return-void
.end method

.method static synthetic access$002(Lcom/crashlytics/android/core/ReportUploader;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/crashlytics/android/core/ReportUploader;)Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->handlingExceptionCheck:Lcom/crashlytics/android/core/ReportUploader$HandlingExceptionCheck;

    return-object v0
.end method

.method static synthetic access$200()[S
    .locals 1

    sget-object v0, Lcom/crashlytics/android/core/ReportUploader;->RETRY_INTERVALS:[S

    return-object v0
.end method


# virtual methods
.method findReports()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/crashlytics/android/core/Report;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v3, "Checking for crash reports..."

    invoke-interface {v0, v1, v3}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/core/ReportUploader;->fileAccessLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;->getCompleteSessionFiles()[Ljava/io/File;

    move-result-object v3

    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;->getInvalidSessionFiles()[Ljava/io/File;

    move-result-object v4

    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->reportFilesProvider:Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;

    invoke-interface {v0}, Lcom/crashlytics/android/core/ReportUploader$ReportFilesProvider;->getNativeReportFiles()[Ljava/io/File;

    move-result-object v5

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    if-eqz v3, :cond_0

    array-length v1, v3

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v7, v3, v0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v8

    const-string v9, "CrashlyticsCore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found crash report "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/crashlytics/android/core/SessionReport;

    invoke-direct {v8, v7}, Lcom/crashlytics/android/core/SessionReport;-><init>(Ljava/io/File;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_2

    array-length v7, v4

    move v1, v2

    :goto_1
    if-ge v1, v7, :cond_2

    aget-object v8, v4, v1

    invoke-static {v8}, Lcom/crashlytics/android/core/CrashlyticsController;->getSessionIdFromSessionFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v3, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v1

    const-string v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found invalid session: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v7, Lcom/crashlytics/android/core/InvalidSessionReport;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/io/File;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/io/File;

    invoke-direct {v7, v0, v1}, Lcom/crashlytics/android/core/InvalidSessionReport;-><init>(Ljava/lang/String;[Ljava/io/File;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    array-length v1, v5

    move v0, v2

    :goto_3
    if-ge v0, v1, :cond_4

    aget-object v2, v5, v0

    new-instance v3, Lcom/crashlytics/android/core/NativeSessionReport;

    invoke-direct {v3, v2}, Lcom/crashlytics/android/core/NativeSessionReport;-><init>(Ljava/io/File;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "No reports found."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v6
.end method

.method forceUpload(Lcom/crashlytics/android/core/Report;)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/crashlytics/android/core/ReportUploader;->fileAccessLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v1, Lcom/crashlytics/android/core/CreateReportRequest;

    iget-object v3, p0, Lcom/crashlytics/android/core/ReportUploader;->apiKey:Ljava/lang/String;

    invoke-direct {v1, v3, p1}, Lcom/crashlytics/android/core/CreateReportRequest;-><init>(Ljava/lang/String;Lcom/crashlytics/android/core/Report;)V

    iget-object v3, p0, Lcom/crashlytics/android/core/ReportUploader;->createReportCall:Lcom/crashlytics/android/core/CreateReportSpiCall;

    invoke-interface {v3, v1}, Lcom/crashlytics/android/core/CreateReportSpiCall;->invoke(Lcom/crashlytics/android/core/CreateReportRequest;)Z

    move-result v3

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Crashlytics report upload "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_1

    const-string v1, "complete: "

    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/crashlytics/android/core/Report;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Lio/fabric/sdk/android/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lcom/crashlytics/android/core/Report;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :cond_1
    :try_start_2
    const-string v1, "FAILED: "
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v3

    const-string v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurred sending report "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method isUploading()Z
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized uploadReports(FLcom/crashlytics/android/core/ReportUploader$SendCheck;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Report upload has already been started."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/crashlytics/android/core/ReportUploader$Worker;

    invoke-direct {v0, p0, p1, p2}, Lcom/crashlytics/android/core/ReportUploader$Worker;-><init>(Lcom/crashlytics/android/core/ReportUploader;FLcom/crashlytics/android/core/ReportUploader$SendCheck;)V

    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Crashlytics Report Uploader"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/crashlytics/android/core/ReportUploader;->uploadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
