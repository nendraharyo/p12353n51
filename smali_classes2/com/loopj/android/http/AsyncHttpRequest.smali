.class public Lcom/loopj/android/http/AsyncHttpRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cancelIsNotified:Z

.field private final client:Lb/a/a/a/i/b/a;

.field private final context:Lb/a/a/a/n/e;

.field private executionCount:I

.field private final isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile isFinished:Z

.field private isRequestPreProcessed:Z

.field private final request:Lb/a/a/a/b/c/l;

.field private final responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;


# direct methods
.method public constructor <init>(Lb/a/a/a/i/b/a;Lb/a/a/a/n/e;Lb/a/a/a/b/c/l;Lcom/loopj/android/http/ResponseHandlerInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "client"

    invoke-static {p1, v0}, Lcom/loopj/android/http/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/i/b/a;

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->client:Lb/a/a/a/i/b/a;

    const-string v0, "context"

    invoke-static {p2, v0}, Lcom/loopj/android/http/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/n/e;

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lb/a/a/a/n/e;

    const-string v0, "request"

    invoke-static {p3, v0}, Lcom/loopj/android/http/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/b/c/l;

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lb/a/a/a/b/c/l;

    const-string v0, "responseHandler"

    invoke-static {p4, v0}, Lcom/loopj/android/http/Utils;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loopj/android/http/ResponseHandlerInterface;

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    return-void
.end method

.method private makeRequest()V
    .locals 3

    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lb/a/a/a/b/c/l;

    invoke-interface {v0}, Lb/a/a/a/b/c/l;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/net/MalformedURLException;

    const-string v1, "No valid URI scheme was provided"

    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    instance-of v0, v0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    check-cast v0, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lb/a/a/a/b/c/l;

    invoke-virtual {v0, v1}, Lcom/loopj/android/http/RangeFileAsyncHttpResponseHandler;->updateRequestHeaders(Lb/a/a/a/b/c/l;)V

    :cond_3
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->client:Lb/a/a/a/i/b/a;

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lb/a/a/a/b/c/l;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lb/a/a/a/n/e;

    invoke-virtual {v0, v1, v2}, Lb/a/a/a/i/b/a;->a(Lb/a/a/a/b/c/l;Lb/a/a/a/n/e;)Lb/a/a/a/b/c/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v1, v2, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->onPreProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lb/a/a/a/s;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v1, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendResponseMessage(Lb/a/a/a/s;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v1, v2, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->onPostProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lb/a/a/a/s;)V

    goto :goto_0
.end method

.method private makeRequestWithRetries()V
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->client:Lb/a/a/a/i/b/a;

    invoke-virtual {v2}, Lb/a/a/a/i/b/a;->z()Lb/a/a/a/b/k;

    move-result-object v3

    move v2, v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    :try_start_0
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->makeRequest()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnknownHostException exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v5, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lb/a/a/a/n/e;

    invoke-interface {v3, v0, v4, v5}, Lb/a/a/a/b/k;->retryRequest(Ljava/io/IOException;ILb/a/a/a/n/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    move-object v6, v2

    move v2, v0

    move-object v0, v6

    :goto_2
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    iget v5, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    invoke-interface {v4, v5}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendRetryMessage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "AsyncHttpRequest"

    const-string v3, "Unhandled exception origin cause"

    invoke-interface {v0, v2, v3, v1}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :cond_2
    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_2
    new-instance v0, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NPE in HttpClient: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lb/a/a/a/n/e;

    invoke-interface {v3, v0, v2, v4}, Lb/a/a/a/b/k;->retryRequest(Ljava/io/IOException;ILb/a/a/a/n/e;)Z

    move-result v2

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->context:Lb/a/a/a/n/e;

    invoke-interface {v3, v0, v2, v4}, Lb/a/a/a/b/k;->retryRequest(Ljava/io/IOException;ILb/a/a/a/n/e;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    goto :goto_2
.end method

.method private declared-synchronized sendCancelNotification()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->cancelIsNotified:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->cancelIsNotified:Z

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendCancelMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->request:Lb/a/a/a/b/c/l;

    invoke-interface {v0}, Lb/a/a/a/b/c/l;->abort()V

    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->sendCancelNotification()V

    :cond_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isFinished:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPostProcessRequest(Lcom/loopj/android/http/AsyncHttpRequest;)V
    .locals 0

    return-void
.end method

.method public onPreProcessRequest(Lcom/loopj/android/http/AsyncHttpRequest;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isRequestPreProcessed:Z

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isRequestPreProcessed:Z

    invoke-virtual {p0, p0}, Lcom/loopj/android/http/AsyncHttpRequest;->onPreProcessRequest(Lcom/loopj/android/http/AsyncHttpRequest;)V

    :cond_2
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendStartMessage()V

    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->makeRequestWithRetries()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendFinishMessage()V

    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/loopj/android/http/AsyncHttpRequest;->onPostProcessRequest(Lcom/loopj/android/http/AsyncHttpRequest;)V

    iput-boolean v4, p0, Lcom/loopj/android/http/AsyncHttpRequest;->isFinished:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/loopj/android/http/ResponseHandlerInterface;->sendFailureMessage(I[Lb/a/a/a/e;[BLjava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v2, "AsyncHttpRequest"

    const-string v3, "makeRequestWithRetries returned error"

    invoke-interface {v1, v2, v3, v0}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setRequestTag(Ljava/lang/Object;)Lcom/loopj/android/http/AsyncHttpRequest;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v0, p1}, Lcom/loopj/android/http/ResponseHandlerInterface;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method
