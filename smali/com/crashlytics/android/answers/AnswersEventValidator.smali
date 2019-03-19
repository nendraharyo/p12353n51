.class Lcom/crashlytics/android/answers/AnswersEventValidator;
.super Ljava/lang/Object;


# instance fields
.field failFast:Z

.field final maxNumAttributes:I

.field final maxStringLength:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/crashlytics/android/answers/AnswersEventValidator;->maxNumAttributes:I

    iput p2, p0, Lcom/crashlytics/android/answers/AnswersEventValidator;->maxStringLength:I

    iput-boolean p3, p0, Lcom/crashlytics/android/answers/AnswersEventValidator;->failFast:Z

    return-void
.end method

.method private logOrThrowException(Ljava/lang/RuntimeException;)V
    .locals 3

    iget-boolean v0, p0, Lcom/crashlytics/android/answers/AnswersEventValidator;->failFast:Z

    if-eqz v0, :cond_0

    throw p1

    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v0

    const-string v1, "Answers"

    const-string v2, "Invalid user input detected"

    invoke-interface {v0, v1, v2, p1}, Lio/fabric/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public isFullMap(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    iget v3, p0, Lcom/crashlytics/android/answers/AnswersEventValidator;->maxNumAttributes:I

    if-lt v2, v3, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Limit of %d attributes reached, skipping attribute"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/crashlytics/android/answers/AnswersEventValidator;->maxNumAttributes:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/AnswersEventValidator;->logOrThrowException(Ljava/lang/RuntimeException;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isNull(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/crashlytics/android/answers/AnswersEventValidator;->logOrThrowException(Ljava/lang/RuntimeException;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public limitStringLength(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/crashlytics/android/answers/AnswersEventValidator;->maxStringLength:I

    if-le v0, v1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "String is too long, truncating to %d characters"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/crashlytics/android/answers/AnswersEventValidator;->maxStringLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/crashlytics/android/answers/AnswersEventValidator;->logOrThrowException(Ljava/lang/RuntimeException;)V

    iget v0, p0, Lcom/crashlytics/android/answers/AnswersEventValidator;->maxStringLength:I

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
