.class public interface abstract Lcom/sun/pdfview/Watchable;
.super Ljava/lang/Object;


# static fields
.field public static final COMPLETED:I = 0x6

.field public static final ERROR:I = 0x7

.field public static final NEEDS_DATA:I = 0x3

.field public static final NOT_STARTED:I = 0x1

.field public static final PAUSED:I = 0x2

.field public static final RUNNING:I = 0x4

.field public static final STOPPED:I = 0x5

.field public static final UNKNOWN:I


# virtual methods
.method public abstract getStatus()I
.end method

.method public abstract go()V
.end method

.method public abstract go(I)V
.end method

.method public abstract go(J)V
.end method

.method public abstract stop()V
.end method
