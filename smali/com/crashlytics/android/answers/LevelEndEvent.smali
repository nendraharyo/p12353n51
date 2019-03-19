.class public Lcom/crashlytics/android/answers/LevelEndEvent;
.super Lcom/crashlytics/android/answers/PredefinedEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/crashlytics/android/answers/PredefinedEvent",
        "<",
        "Lcom/crashlytics/android/answers/LevelEndEvent;",
        ">;"
    }
.end annotation


# static fields
.field static final LEVEL_NAME_ATTRIBUTE:Ljava/lang/String; = "levelName"

.field static final SCORE_ATTRIBUTE:Ljava/lang/String; = "score"

.field static final SUCCESS_ATTRIBUTE:Ljava/lang/String; = "success"

.field static final TYPE:Ljava/lang/String; = "levelEnd"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/crashlytics/android/answers/PredefinedEvent;-><init>()V

    return-void
.end method


# virtual methods
.method getPredefinedType()Ljava/lang/String;
    .locals 1

    const-string v0, "levelEnd"

    return-object v0
.end method

.method public putLevelName(Ljava/lang/String;)Lcom/crashlytics/android/answers/LevelEndEvent;
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/answers/LevelEndEvent;->predefinedAttributes:Lcom/crashlytics/android/answers/AnswersAttributes;

    const-string v1, "levelName"

    invoke-virtual {v0, v1, p1}, Lcom/crashlytics/android/answers/AnswersAttributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public putScore(Ljava/lang/Number;)Lcom/crashlytics/android/answers/LevelEndEvent;
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/answers/LevelEndEvent;->predefinedAttributes:Lcom/crashlytics/android/answers/AnswersAttributes;

    const-string v1, "score"

    invoke-virtual {v0, v1, p1}, Lcom/crashlytics/android/answers/AnswersAttributes;->put(Ljava/lang/String;Ljava/lang/Number;)V

    return-object p0
.end method

.method public putSuccess(Z)Lcom/crashlytics/android/answers/LevelEndEvent;
    .locals 3

    iget-object v1, p0, Lcom/crashlytics/android/answers/LevelEndEvent;->predefinedAttributes:Lcom/crashlytics/android/answers/AnswersAttributes;

    const-string v2, "success"

    if-eqz p1, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/crashlytics/android/answers/AnswersAttributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
