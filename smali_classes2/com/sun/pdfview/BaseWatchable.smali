.class public abstract Lcom/sun/pdfview/BaseWatchable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/pdfview/Watchable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/BaseWatchable$Gate;
    }
.end annotation


# static fields
.field private static SuppressSetErrorStackTrace:Z


# instance fields
.field private gate:Lcom/sun/pdfview/BaseWatchable$Gate;

.field private parserLock:Ljava/lang/Object;

.field private status:I

.field private statusLock:Ljava/lang/Object;

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/pdfview/BaseWatchable;->SuppressSetErrorStackTrace:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/BaseWatchable;->status:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->statusLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->parserLock:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/BaseWatchable;->setStatus(I)V

    return-void
.end method

.method private getStatusString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Not started"

    goto :goto_0

    :pswitch_1
    const-string v0, "Running"

    goto :goto_0

    :pswitch_2
    const-string v0, "Needs Data"

    goto :goto_0

    :pswitch_3
    const-string v0, "Paused"

    goto :goto_0

    :pswitch_4
    const-string v0, "Stopped"

    goto :goto_0

    :pswitch_5
    const-string v0, "Completed"

    goto :goto_0

    :pswitch_6
    const-string v0, "Error"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static isSuppressSetErrorStackTrace()Z
    .locals 1

    sget-boolean v0, Lcom/sun/pdfview/BaseWatchable;->SuppressSetErrorStackTrace:Z

    return v0
.end method

.method public static setSuppressSetErrorStackTrace(Z)V
    .locals 0

    sput-boolean p0, Lcom/sun/pdfview/BaseWatchable;->SuppressSetErrorStackTrace:Z

    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 0

    return-void
.end method

.method protected declared-synchronized execute(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sun/pdfview/BaseWatchable;->statusLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->statusLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->run()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->thread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->thread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/BaseWatchable;->status:I

    return v0
.end method

.method public declared-synchronized go()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->gate:Lcom/sun/pdfview/BaseWatchable$Gate;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/BaseWatchable;->execute(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized go(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sun/pdfview/BaseWatchable$Gate;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/BaseWatchable$Gate;-><init>(Lcom/sun/pdfview/BaseWatchable;)V

    iput-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->gate:Lcom/sun/pdfview/BaseWatchable$Gate;

    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->gate:Lcom/sun/pdfview/BaseWatchable$Gate;

    invoke-virtual {v0, p1}, Lcom/sun/pdfview/BaseWatchable$Gate;->setStopIterations(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/BaseWatchable;->execute(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized go(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/sun/pdfview/BaseWatchable$Gate;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/BaseWatchable$Gate;-><init>(Lcom/sun/pdfview/BaseWatchable;)V

    iput-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->gate:Lcom/sun/pdfview/BaseWatchable$Gate;

    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->gate:Lcom/sun/pdfview/BaseWatchable$Gate;

    invoke-virtual {v0, p1, p2}, Lcom/sun/pdfview/BaseWatchable$Gate;->setStopTime(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/BaseWatchable;->execute(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized go(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->gate:Lcom/sun/pdfview/BaseWatchable$Gate;

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/BaseWatchable;->execute(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isExecutable()Z
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/BaseWatchable;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sun/pdfview/BaseWatchable;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->gate:Lcom/sun/pdfview/BaseWatchable$Gate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->gate:Lcom/sun/pdfview/BaseWatchable$Gate;

    invoke-virtual {v0}, Lcom/sun/pdfview/BaseWatchable$Gate;->stop()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract iterate()I
.end method

.method public run()V
    .locals 4

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->setup()V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sun/pdfview/BaseWatchable;->setStatus(I)V

    iget-object v1, p0, Lcom/sun/pdfview/BaseWatchable;->parserLock:Ljava/lang/Object;

    monitor-enter v1

    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->getStatus()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->cleanup()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->thread:Ljava/lang/Thread;

    return-void

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->isExecutable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/BaseWatchable;->setStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->getStatus()I

    move-result v0

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->gate:Lcom/sun/pdfview/BaseWatchable$Gate;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->gate:Lcom/sun/pdfview/BaseWatchable$Gate;

    invoke-virtual {v0}, Lcom/sun/pdfview/BaseWatchable$Gate;->iterate()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->getStatus()I

    move-result v0

    if-ne v0, v3, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/BaseWatchable;->setStatus(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/sun/pdfview/BaseWatchable;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->iterate()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/BaseWatchable;->setStatus(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_8
    :try_start_5
    iget-object v2, p0, Lcom/sun/pdfview/BaseWatchable;->statusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->isExecutable()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v0

    if-nez v0, :cond_9

    :try_start_7
    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->statusLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_9
    :goto_2
    :try_start_8
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected setError(Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Lcom/sun/pdfview/BaseWatchable;->SuppressSetErrorStackTrace:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/BaseWatchable;->setStatus(I)V

    return-void
.end method

.method protected setStatus(I)V
    .locals 2

    iget-object v1, p0, Lcom/sun/pdfview/BaseWatchable;->statusLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/sun/pdfview/BaseWatchable;->status:I

    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->statusLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setup()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/BaseWatchable;->setStatus(I)V

    return-void
.end method

.method public waitForFinish()V
    .locals 3

    iget-object v1, p0, Lcom/sun/pdfview/BaseWatchable;->statusLock:Ljava/lang/Object;

    monitor-enter v1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable;->getStatus()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sun/pdfview/BaseWatchable;->statusLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
