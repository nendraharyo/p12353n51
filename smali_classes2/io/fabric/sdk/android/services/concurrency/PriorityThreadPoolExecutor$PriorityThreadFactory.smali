.class public final Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor$PriorityThreadFactory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PriorityThreadFactory"
.end annotation


# instance fields
.field private final threadPriority:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor$PriorityThreadFactory;->threadPriority:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget v1, p0, Lio/fabric/sdk/android/services/concurrency/PriorityThreadPoolExecutor$PriorityThreadFactory;->threadPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const-string v1, "Queue"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object v0
.end method
