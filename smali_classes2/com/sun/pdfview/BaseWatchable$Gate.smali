.class Lcom/sun/pdfview/BaseWatchable$Gate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/BaseWatchable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Gate"
.end annotation


# instance fields
.field private nextGate:J

.field final synthetic this$0:Lcom/sun/pdfview/BaseWatchable;

.field private timeBased:Z


# direct methods
.method constructor <init>(Lcom/sun/pdfview/BaseWatchable;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/BaseWatchable$Gate;->this$0:Lcom/sun/pdfview/BaseWatchable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterate()Z
    .locals 4

    iget-boolean v0, p0, Lcom/sun/pdfview/BaseWatchable$Gate;->timeBased:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sun/pdfview/BaseWatchable$Gate;->nextGate:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sun/pdfview/BaseWatchable$Gate;->nextGate:J

    :cond_0
    invoke-virtual {p0}, Lcom/sun/pdfview/BaseWatchable$Gate;->stop()Z

    move-result v0

    return v0
.end method

.method public setStopIterations(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/pdfview/BaseWatchable$Gate;->timeBased:Z

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/sun/pdfview/BaseWatchable$Gate;->nextGate:J

    return-void
.end method

.method public setStopTime(J)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/pdfview/BaseWatchable$Gate;->timeBased:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/sun/pdfview/BaseWatchable$Gate;->nextGate:J

    return-void
.end method

.method public stop()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sun/pdfview/BaseWatchable$Gate;->timeBased:Z

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sun/pdfview/BaseWatchable$Gate;->nextGate:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/sun/pdfview/BaseWatchable$Gate;->nextGate:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
