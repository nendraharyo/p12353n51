.class public interface abstract Lcom/loopj/android/http/ResponseHandlerInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getRequestHeaders()[Lb/a/a/a/e;
.end method

.method public abstract getRequestURI()Ljava/net/URI;
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getUsePoolThread()Z
.end method

.method public abstract getUseSynchronousMode()Z
.end method

.method public abstract onPostProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lb/a/a/a/s;)V
.end method

.method public abstract onPreProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lb/a/a/a/s;)V
.end method

.method public abstract sendCancelMessage()V
.end method

.method public abstract sendFailureMessage(I[Lb/a/a/a/e;[BLjava/lang/Throwable;)V
.end method

.method public abstract sendFinishMessage()V
.end method

.method public abstract sendProgressMessage(JJ)V
.end method

.method public abstract sendResponseMessage(Lb/a/a/a/s;)V
.end method

.method public abstract sendRetryMessage(I)V
.end method

.method public abstract sendStartMessage()V
.end method

.method public abstract sendSuccessMessage(I[Lb/a/a/a/e;[B)V
.end method

.method public abstract setRequestHeaders([Lb/a/a/a/e;)V
.end method

.method public abstract setRequestURI(Ljava/net/URI;)V
.end method

.method public abstract setTag(Ljava/lang/Object;)V
.end method

.method public abstract setUsePoolThread(Z)V
.end method

.method public abstract setUseSynchronousMode(Z)V
.end method
