.class Landroid/support/v4/media/session/MediaControllerCompat$k;
.super Landroid/support/v4/media/session/MediaControllerCompat$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# instance fields
.field private a:Landroid/support/v4/media/session/b;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$g;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$k;->a:Landroid/support/v4/media/session/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$k;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->r()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in play."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$k;->a:Landroid/support/v4/media/session/b;

    invoke-interface {v0}, Landroid/support/v4/media/session/b;->s()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in pause."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
