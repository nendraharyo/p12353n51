.class Lcom/crashlytics/android/core/SessionProtobufHelper;
.super Ljava/lang/Object;


# static fields
.field private static final SIGNAL_DEFAULT:Ljava/lang/String; = "0"

.field private static final SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

.field private static final UNITY_PLATFORM_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0"

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    const-string v0, "Unity"

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    sput-object v0, Lcom/crashlytics/android/core/SessionProtobufHelper;->UNITY_PLATFORM_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBinaryImageSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private static getDeviceIdentifierSize(Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->protobufIndex:I

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v0

    const/4 v1, 0x2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getEventAppExecutionExceptionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;II)I
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/crashlytics/android/core/TrimmedThrowableData;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/crashlytics/android/core/TrimmedThrowableData;->localizedMessage:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-static {v2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v4, p0, Lcom/crashlytics/android/core/TrimmedThrowableData;->stacktrace:[Ljava/lang/StackTraceElement;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    invoke-static {v3, v8}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    const/4 v6, 0x4

    invoke-static {v6}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v6

    invoke-static {v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/crashlytics/android/core/TrimmedThrowableData;->cause:Lcom/crashlytics/android/core/TrimmedThrowableData;

    if-eqz v2, :cond_2

    if-ge p1, p2, :cond_3

    add-int/lit8 v1, p1, 0x1

    invoke-static {v2, v1, p2}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionExceptionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;II)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/crashlytics/android/core/TrimmedThrowableData;->cause:Lcom/crashlytics/android/core/TrimmedThrowableData;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private static getEventAppExecutionSignalSize()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, Lcom/crashlytics/android/core/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/crashlytics/android/core/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getEventAppExecutionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {p1, p2, v1, v2}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    array-length v3, p3

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, p3, v1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v0, v5, v6}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v0, v4

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0, p5}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionExceptionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-static {}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionSignalSize()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {p6, p7}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getBinaryImageSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private static getEventAppSize(Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static/range {p0 .. p7}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    if-eqz p8, :cond_3

    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    if-eqz p9, :cond_2

    const/4 v2, 0x3

    iget v0, p9, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-eq v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-static {v2, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v0, v1

    :goto_3
    const/4 v1, 0x4

    invoke-static {v1, p10}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private static getEventDeviceSize(Ljava/lang/Float;IZIJJ)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    const/4 v1, 0x2

    invoke-static {v1, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    invoke-static {v1, p3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-static {v1, p4, p5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-static {v1, p6, p7}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getEventLogSize(Lcom/crashlytics/android/core/ByteString;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v0

    return v0
.end method

.method private static getFrameSize(Ljava/lang/StackTraceElement;Z)I
    .locals 6

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    move v3, v0

    :goto_1
    const/4 v4, 0x5

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v4, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v3

    return v0

    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_1
.end method

.method private static getSessionAppOrgSize(Lcom/crashlytics/android/core/ByteString;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getSessionAppSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;ILcom/crashlytics/android/core/ByteString;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v1, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getSessionAppOrgSize(Lcom/crashlytics/android/core/ByteString;)I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-static {v1, p4}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    if-eqz p6, :cond_0

    const/16 v1, 0x8

    sget-object v2, Lcom/crashlytics/android/core/SessionProtobufHelper;->UNITY_PLATFORM_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x9

    invoke-static {v1, p6}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    const/16 v1, 0xa

    invoke-static {v1, p5}, Lcom/crashlytics/android/core/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getSessionDeviceSize(ILcom/crashlytics/android/core/ByteString;IJJZLjava/util/Map;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/crashlytics/android/core/ByteString;",
            "IJJZ",
            "Ljava/util/Map",
            "<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            ")I"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2, p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v2, v1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v1, v2

    const/4 v2, 0x5

    invoke-static {v2, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x6

    invoke-static {v2, p3, p4}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x7

    invoke-static {v2, p5, p6}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0xa

    invoke-static {v2, p7}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v1, v2

    if-eqz p8, :cond_1

    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getDeviceIdentifierSize(Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v3, v1

    :cond_2
    const/16 v1, 0xc

    move/from16 v0, p9

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int v2, v3, v1

    if-nez p10, :cond_3

    const/4 v1, 0x0

    :goto_2
    add-int/2addr v2, v1

    if-nez p11, :cond_4

    const/4 v1, 0x0

    :goto_3
    add-int/2addr v1, v2

    return v1

    :cond_3
    const/16 v1, 0xd

    move-object/from16 v0, p10

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    goto :goto_2

    :cond_4
    const/16 v1, 0xe

    move-object/from16 v0, p11

    invoke-static {v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    goto :goto_3
.end method

.method private static getSessionEventSize(JLjava/lang/String;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/lang/Float;IZJJLcom/crashlytics/android/core/ByteString;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/crashlytics/android/core/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            "Ljava/lang/Float;",
            "IZJJ",
            "Lcom/crashlytics/android/core/ByteString;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, p0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int v11, v0, v1

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    invoke-static/range {v0 .. v10}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppSize(Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int v8, v11, v0

    move-object/from16 v0, p14

    move/from16 v1, p15

    move/from16 v2, p16

    move/from16 v3, p11

    move-wide/from16 v4, p17

    move-wide/from16 v6, p19

    invoke-static/range {v0 .. v7}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventDeviceSize(Ljava/lang/Float;IZIJJ)I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v1

    invoke-static {v0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    if-eqz p21, :cond_0

    invoke-static/range {p21 .. p21}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventLogSize(Lcom/crashlytics/android/core/ByteString;)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v2

    invoke-static {v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private static getSessionOSSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Z)I
    .locals 3

    const/4 v2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    invoke-static {v1, p0}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v2, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    invoke-static {v1, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v1, v0

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    invoke-static {v3, p3}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/crashlytics/android/core/CodedOutputStream;->computeTagSize(I)I

    move-result v4

    invoke-static {v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeRawVarint32Size(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    goto :goto_0
.end method

.method public static writeBeginSession(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    const/4 v0, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3, p4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    return-void
.end method

.method private static writeFrame(Lcom/crashlytics/android/core/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V
    .locals 6

    const/4 v0, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-static {p2, p3}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getFrameSize(Ljava/lang/StackTraceElement;Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v4, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    :cond_1
    const/4 v2, 0x5

    if-eqz p3, :cond_3

    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    return-void

    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static writeSessionApp(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    invoke-static {p1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    invoke-static {p2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-static {p3}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-static {p4}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v3

    invoke-static {p5}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v4

    if-eqz p7, :cond_1

    invoke-static {p7}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v6

    :goto_0
    const/4 v5, 0x7

    const/4 v7, 0x2

    invoke-virtual {p0, v5, v7}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    move v5, p6

    invoke-static/range {v0 .. v6}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getSessionAppSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;ILcom/crashlytics/android/core/ByteString;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    const/4 v0, 0x5

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-static {v1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getSessionAppOrgSize(Lcom/crashlytics/android/core/ByteString;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    if-eqz v6, :cond_0

    const/16 v0, 0x8

    sget-object v1, Lcom/crashlytics/android/core/SessionProtobufHelper;->UNITY_PLATFORM_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, v6}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p6}, Lcom/crashlytics/android/core/CodedOutputStream;->writeEnum(II)V

    return-void

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static writeSessionDevice(Lcom/crashlytics/android/core/CodedOutputStream;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/CodedOutputStream;",
            "I",
            "Ljava/lang/String;",
            "IJJZ",
            "Ljava/util/Map",
            "<",
            "Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static/range {p2 .. p2}, Lcom/crashlytics/android/core/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v6

    invoke-static/range {p12 .. p12}, Lcom/crashlytics/android/core/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v16

    invoke-static/range {p11 .. p11}, Lcom/crashlytics/android/core/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v15

    const/16 v4, 0x9

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    move/from16 v5, p1

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    invoke-static/range {v5 .. v16}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getSessionDeviceSize(ILcom/crashlytics/android/core/ByteString;IJJZLjava/util/Map;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeEnum(II)V

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    const/4 v4, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-virtual {v0, v4, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    const/4 v4, 0x7

    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-virtual {v0, v4, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    const/16 v4, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBool(IZ)V

    invoke-interface/range {p9 .. p9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const/16 v5, 0xb

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getDeviceIdentifierSize(Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v6, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;

    iget v5, v5, Lio/fabric/sdk/android/services/common/IdManager$DeviceIdentifierType;->protobufIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeEnum(II)V

    const/4 v5, 0x2

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    goto :goto_0

    :cond_0
    const/16 v4, 0xc

    move-object/from16 v0, p0

    move/from16 v1, p10

    invoke-virtual {v0, v4, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    if-eqz v15, :cond_1

    const/16 v4, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v15}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    :cond_1
    if-eqz v16, :cond_2

    const/16 v4, 0xe

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    :cond_2
    return-void
.end method

.method public static writeSessionEvent(Lcom/crashlytics/android/core/CodedOutputStream;JLjava/lang/String;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/crashlytics/android/core/LogFileManager;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/CodedOutputStream;",
            "J",
            "Ljava/lang/String;",
            "Lcom/crashlytics/android/core/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/crashlytics/android/core/LogFileManager;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            "IZJJ)V"
        }
    .end annotation

    invoke-static/range {p13 .. p13}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v17

    if-nez p14, :cond_1

    const/16 v18, 0x0

    :goto_0
    invoke-virtual/range {p10 .. p10}, Lcom/crashlytics/android/core/LogFileManager;->getByteStringForLog()Lcom/crashlytics/android/core/ByteString;

    move-result-object v26

    if-nez v26, :cond_0

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v4

    const-string v5, "CrashlyticsCore"

    const-string v6, "No log data to include with this event."

    invoke-interface {v4, v5, v6}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p10 .. p10}, Lcom/crashlytics/android/core/LogFileManager;->clearLog()V

    const/16 v4, 0xa

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    const/16 v13, 0x8

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p11

    move/from16 v16, p12

    move-object/from16 v19, p15

    move/from16 v20, p16

    move/from16 v21, p17

    move-wide/from16 v22, p18

    move-wide/from16 v24, p20

    invoke-static/range {v5 .. v26}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getSessionEventSize(JLjava/lang/String;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILjava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/lang/Float;IZJJLcom/crashlytics/android/core/ByteString;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v4, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    const/4 v4, 0x2

    invoke-static/range {p3 .. p3}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    const/16 v16, 0x8

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v19, p9

    move-object/from16 v20, p11

    move/from16 v21, p12

    invoke-static/range {v10 .. v21}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventApp(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    move-object/from16 v5, p0

    move-object/from16 v6, p15

    move/from16 v7, p16

    move/from16 v8, p17

    move/from16 v9, p12

    move-wide/from16 v10, p18

    move-wide/from16 v12, p20

    invoke-static/range {v5 .. v13}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventDevice(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/Float;IZIJJ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventLog(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/ByteString;)V

    return-void

    :cond_1
    const-string v4, "-"

    const-string v5, ""

    move-object/from16 v0, p14

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v18

    goto/16 :goto_0
.end method

.method private static writeSessionEventApp(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/CodedOutputStream;",
            "Lcom/crashlytics/android/core/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            "I)V"
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-static/range {p1 .. p11}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppSize(Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    invoke-static/range {p0 .. p8}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventAppExecution(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)V

    if-eqz p9, :cond_0

    invoke-interface {p9}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p9}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventAppCustomAttributes(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Map;)V

    :cond_0
    if-eqz p10, :cond_1

    iget v0, p10, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBool(IZ)V

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p11}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static writeSessionEventAppCustomAttributes(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/CodedOutputStream;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v4, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppCustomAttributeSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static writeSessionEventAppExecution(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/core/CodedOutputStream;",
            "Lcom/crashlytics/android/core/TrimmedThrowableData;",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "[",
            "Ljava/lang/Thread;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/StackTraceElement;",
            ">;I",
            "Lcom/crashlytics/android/core/ByteString;",
            "Lcom/crashlytics/android/core/ByteString;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-static/range {p1 .. p8}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;ILcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {p0, p2, p3, v0, v1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeThread(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    array-length v2, p4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p4, v1

    invoke-interface {p5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v3, v0, v4, v5}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeThread(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, p6, v1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventAppExecutionException(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;III)V

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-static {}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionSignalSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v0, 0x1

    sget-object v1, Lcom/crashlytics/android/core/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    const/4 v0, 0x2

    sget-object v1, Lcom/crashlytics/android/core/SessionProtobufHelper;->SIGNAL_DEFAULT_BYTE_STRING:Lcom/crashlytics/android/core/ByteString;

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    const/4 v0, 0x3

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    const/4 v0, 0x4

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-static {p7, p8}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getBinaryImageSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    const/4 v0, 0x2

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p7}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    if-eqz p8, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p8}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    :cond_1
    return-void
.end method

.method private static writeSessionEventAppExecutionException(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;III)V
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p4, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-static {p1, v6, p3}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventAppExecutionExceptionSize(Lcom/crashlytics/android/core/TrimmedThrowableData;II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    iget-object v1, p1, Lcom/crashlytics/android/core/TrimmedThrowableData;->className:Ljava/lang/String;

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-virtual {p0, v6, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    iget-object v1, p1, Lcom/crashlytics/android/core/TrimmedThrowableData;->localizedMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    invoke-static {v1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    :cond_0
    iget-object v2, p1, Lcom/crashlytics/android/core/TrimmedThrowableData;->stacktrace:[Ljava/lang/StackTraceElement;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    const/4 v5, 0x4

    invoke-static {p0, v5, v4, v6}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeFrame(Lcom/crashlytics/android/core/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/crashlytics/android/core/TrimmedThrowableData;->cause:Lcom/crashlytics/android/core/TrimmedThrowableData;

    if-eqz v1, :cond_2

    if-ge p2, p3, :cond_3

    add-int/lit8 v0, p2, 0x1

    const/4 v2, 0x6

    invoke-static {p0, v1, v0, p3, v2}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeSessionEventAppExecutionException(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/TrimmedThrowableData;III)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/crashlytics/android/core/TrimmedThrowableData;->cause:Lcom/crashlytics/android/core/TrimmedThrowableData;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    goto :goto_1
.end method

.method private static writeSessionEventDevice(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/Float;IZIJJ)V
    .locals 5

    const/4 v3, 0x5

    const/4 v2, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-static/range {p1 .. p8}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventDeviceSize(Ljava/lang/Float;IZIJJ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeFloat(IF)V

    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeSInt32(II)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBool(IZ)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    invoke-virtual {p0, v3, p5, p6}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p7, p8}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt64(IJ)V

    return-void
.end method

.method private static writeSessionEventLog(Lcom/crashlytics/android/core/CodedOutputStream;Lcom/crashlytics/android/core/ByteString;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-static {p1}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getEventLogSize(Lcom/crashlytics/android/core/ByteString;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    :cond_0
    return-void
.end method

.method public static writeSessionOS(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    invoke-static {p1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    invoke-static {p2}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-static {v0, v1, p3}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getSessionOSSize(Lcom/crashlytics/android/core/ByteString;Lcom/crashlytics/android/core/ByteString;Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/crashlytics/android/core/CodedOutputStream;->writeEnum(II)V

    invoke-virtual {p0, v3, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    invoke-virtual {p0, v4, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBool(IZ)V

    return-void
.end method

.method public static writeSessionUser(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v1

    invoke-static {p2}, Lcom/crashlytics/android/core/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v2

    invoke-static {p3}, Lcom/crashlytics/android/core/SessionProtobufHelper;->stringToByteString(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v3

    const/4 v0, 0x0

    invoke-static {v6, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    if-eqz p2, :cond_1

    invoke-static {v5, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {v7, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->computeBytesSize(ILcom/crashlytics/android/core/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p0, v4, v5}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {p0, v6, v1}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    if-eqz p2, :cond_3

    invoke-virtual {p0, v5, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p0, v7, v3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    :cond_4
    return-void
.end method

.method private static writeThread(Lcom/crashlytics/android/core/CodedOutputStream;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/crashlytics/android/core/CodedOutputStream;->writeTag(II)V

    invoke-static {p1, p2, p3, p4}, Lcom/crashlytics/android/core/SessionProtobufHelper;->getThreadSize(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeRawVarint32(I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/core/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/core/ByteString;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/crashlytics/android/core/CodedOutputStream;->writeBytes(ILcom/crashlytics/android/core/ByteString;)V

    invoke-virtual {p0, v2, p3}, Lcom/crashlytics/android/core/CodedOutputStream;->writeUInt32(II)V

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    const/4 v3, 0x3

    invoke-static {p0, v3, v2, p4}, Lcom/crashlytics/android/core/SessionProtobufHelper;->writeFrame(Lcom/crashlytics/android/core/CodedOutputStream;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
