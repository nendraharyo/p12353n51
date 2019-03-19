.class public Lcom/crashlytics/android/answers/AppMeasurementEventLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/answers/EventLogger;


# static fields
.field private static final ANALYTIC_CLASS:Ljava/lang/String; = "com.google.android.gms.measurement.AppMeasurement"

.field private static final GET_INSTANCE_METHOD:Ljava/lang/String; = "getInstance"

.field private static final LOG_METHOD:Ljava/lang/String; = "logEventInternal"


# instance fields
.field private final logEventInstance:Ljava/lang/Object;

.field private final logEventMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/answers/AppMeasurementEventLogger;->logEventInstance:Ljava/lang/Object;

    iput-object p2, p0, Lcom/crashlytics/android/answers/AppMeasurementEventLogger;->logEventMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static getClass(Landroid/content/Context;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.android.gms.measurement.AppMeasurement"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEventLogger(Landroid/content/Context;)Lcom/crashlytics/android/answers/EventLogger;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/crashlytics/android/answers/AppMeasurementEventLogger;->getClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, v1}, Lcom/crashlytics/android/answers/AppMeasurementEventLogger;->getInstance(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lcom/crashlytics/android/answers/AppMeasurementEventLogger;->getLogEventMethod(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/crashlytics/android/answers/AppMeasurementEventLogger;

    invoke-direct {v0, v2, v1}, Lcom/crashlytics/android/answers/AppMeasurementEventLogger;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    goto :goto_0
.end method

.method private static getInstance(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    const-string v0, "getInstance"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLogEventMethod(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4

    :try_start_0
    const-string v0, "logEventInternal"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fab"

    invoke-virtual {p0, v0, p1, p2}, Lcom/crashlytics/android/answers/AppMeasurementEventLogger;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/answers/AppMeasurementEventLogger;->logEventMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/crashlytics/android/answers/AppMeasurementEventLogger;->logEventInstance:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
