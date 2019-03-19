.class Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    iget-boolean v0, v0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    iget-object v2, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    iget-boolean v1, v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    if-eq v0, v1, :cond_1

    const-string v0, "ConnectivityMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConnectivityMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectivity changed, isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    iget-boolean v2, v2, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    iget-object v0, v0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->listener:Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;

    iget-object v1, p0, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor$1;->this$0:Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;

    iget-boolean v1, v1, Lcom/bumptech/glide/manager/DefaultConnectivityMonitor;->isConnected:Z

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/ConnectivityMonitor$ConnectivityListener;->onConnectivityChanged(Z)V

    :cond_1
    return-void
.end method
