.class public abstract Landroid/support/v4/media/session/MediaControllerCompat$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompat$a$a;,
        Landroid/support/v4/media/session/MediaControllerCompat$a$c;,
        Landroid/support/v4/media/session/MediaControllerCompat$a$b;
    }
.end annotation


# instance fields
.field private final mCallbackObj:Ljava/lang/Object;

.field mHandler:Landroid/support/v4/media/session/MediaControllerCompat$a$a;

.field mHasExtraCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$a$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$a$b;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Landroid/support/v4/media/session/c$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->mCallbackObj:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$a$c;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompat$a$c;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/v4/media/session/MediaControllerCompat$a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->mCallbackObj:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$a;->onSessionDestroyed()V

    return-void
.end method

.method public onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$f;)V
    .locals 0

    return-void
.end method

.method public onCaptioningEnabledChanged(Z)V
    .locals 0

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 0

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSessionReady()V
    .locals 0

    return-void
.end method

.method public onShuffleModeChanged(I)V
    .locals 0

    return-void
.end method

.method postToHandler(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method setHandler(Landroid/os/Handler;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->a:Z

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$a$a;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$a;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$a;->mHandler:Landroid/support/v4/media/session/MediaControllerCompat$a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/media/session/MediaControllerCompat$a$a;->a:Z

    goto :goto_0
.end method
