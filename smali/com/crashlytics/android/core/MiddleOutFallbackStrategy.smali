.class Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# instance fields
.field private final maximumStackSize:I

.field private final middleOutStrategy:Lcom/crashlytics/android/core/MiddleOutStrategy;

.field private final trimmingStrategies:[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# direct methods
.method public varargs constructor <init>(I[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    iput-object p2, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->trimmingStrategies:[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;

    new-instance v0, Lcom/crashlytics/android/core/MiddleOutStrategy;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/core/MiddleOutStrategy;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->middleOutStrategy:Lcom/crashlytics/android/core/MiddleOutStrategy;

    return-void
.end method


# virtual methods
.method public getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 7

    array-length v0, p1

    iget v1, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-gt v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v3, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->trimmingStrategies:[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    move-object v0, p1

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v2, v3, v1

    array-length v5, v0

    iget v6, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-gt v5, v6, :cond_3

    :cond_1
    array-length v1, v0

    iget v2, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->middleOutStrategy:Lcom/crashlytics/android/core/MiddleOutStrategy;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/MiddleOutStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    :cond_2
    move-object p1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v2, p1}, Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1
.end method
