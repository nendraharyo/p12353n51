.class public Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;
.super Ljava/lang/Object;


# instance fields
.field private final eventName:Ljava/lang/String;

.field private final eventParams:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;->eventName:Ljava/lang/String;

    iput-object p2, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;->eventParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getEventParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;->eventParams:Landroid/os/Bundle;

    return-object v0
.end method
