.class Lcom/crashlytics/android/core/MiddleOutStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# instance fields
.field private final trimmedSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/crashlytics/android/core/MiddleOutStrategy;->trimmedSize:I

    return-void
.end method


# virtual methods
.method public getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 4

    const/4 v3, 0x0

    array-length v0, p1

    iget v1, p0, Lcom/crashlytics/android/core/MiddleOutStrategy;->trimmedSize:I

    if-gt v0, v1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget v0, p0, Lcom/crashlytics/android/core/MiddleOutStrategy;->trimmedSize:I

    div-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/crashlytics/android/core/MiddleOutStrategy;->trimmedSize:I

    sub-int v2, v0, v1

    iget v0, p0, Lcom/crashlytics/android/core/MiddleOutStrategy;->trimmedSize:I

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {p1, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    goto :goto_0
.end method
