.class final Lcom/crashlytics/android/core/CrashPromptDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;->create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/PromptSettingsData;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$2;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$2;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->setOptIn(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
