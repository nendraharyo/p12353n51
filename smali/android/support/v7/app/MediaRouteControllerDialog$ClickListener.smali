.class final Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v7/app/MediaRouteControllerDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;-><init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v7/mediarouter/R$id;->stop:I

    if-eq v0, v1, :cond_0

    sget v1, Landroid/support/v7/mediarouter/R$id;->disconnect:I

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$600(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$1200(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/media/MediaRouter;

    move-result-object v1

    sget v2, Landroid/support/v7/mediarouter/R$id;->stop:I

    if-ne v0, v2, :cond_3

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/media/MediaRouter;->unselect(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->dismiss()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    sget v1, Landroid/support/v7/mediarouter/R$id;->play_pause:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$1000(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$1000(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/session/MediaControllerCompat$g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$g;->b()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/session/MediaControllerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->a()Landroid/support/v4/media/session/MediaControllerCompat$g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$g;->a()V

    goto :goto_1

    :cond_6
    sget v1, Landroid/support/v7/mediarouter/R$id;->settings:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$600(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getSettingsIntent()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaRouteControllerDialog"

    const-string v2, "Error opening route settings."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
