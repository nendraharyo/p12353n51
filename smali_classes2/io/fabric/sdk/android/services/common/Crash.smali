.class public abstract Lio/fabric/sdk/android/services/common/Crash;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/Crash$FatalException;,
        Lio/fabric/sdk/android/services/common/Crash$LoggedException;
    }
.end annotation


# static fields
.field private static final UNKNOWN_EXCEPTION:Ljava/lang/String; = "<unknown>"


# instance fields
.field private final exceptionName:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<unknown>"

    invoke-direct {p0, p1, v0}, Lio/fabric/sdk/android/services/common/Crash;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/fabric/sdk/android/services/common/Crash;->sessionId:Ljava/lang/String;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/Crash;->exceptionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExceptionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/Crash;->exceptionName:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/fabric/sdk/android/services/common/Crash;->sessionId:Ljava/lang/String;

    return-object v0
.end method
