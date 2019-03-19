.class public abstract Lcom/loopj/android/http/BinaryHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BinaryHttpRH"


# instance fields
.field private mAllowedContentTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/octet-stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/octet-stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "BinaryHttpRH"

    const-string v2, "Constructor passed allowedContentTypes was null !"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "application/octet-stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v1, "BinaryHttpRH"

    const-string v2, "Constructor passed allowedContentTypes was null !"

    invoke-interface {v0, v1, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAllowedContentTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract onFailure(I[Lb/a/a/a/e;[BLjava/lang/Throwable;)V
.end method

.method public abstract onSuccess(I[Lb/a/a/a/e;[B)V
.end method

.method public final sendResponseMessage(Lb/a/a/a/s;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Lb/a/a/a/s;->a()Lb/a/a/a/af;

    move-result-object v4

    const-string v2, "Content-Type"

    invoke-interface {p1, v2}, Lb/a/a/a/s;->getHeaders(Ljava/lang/String;)[Lb/a/a/a/e;

    move-result-object v2

    array-length v3, v2

    if-eq v3, v1, :cond_0

    invoke-interface {v4}, Lb/a/a/a/af;->b()I

    move-result v0

    invoke-interface {p1}, Lb/a/a/a/s;->getAllHeaders()[Lb/a/a/a/e;

    move-result-object v1

    new-instance v2, Lb/a/a/a/b/l;

    invoke-interface {v4}, Lb/a/a/a/af;->b()I

    move-result v3

    const-string v4, "None, or more than one, Content-Type Header found!"

    invoke-direct {v2, v3, v4}, Lb/a/a/a/b/l;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1, v13, v2}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendFailureMessage(I[Lb/a/a/a/e;[BLjava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    aget-object v5, v2, v0

    invoke-virtual {p0}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->getAllowedContentTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v3, v0

    :goto_1
    if-ge v3, v7, :cond_2

    aget-object v8, v6, v3

    :try_start_0
    invoke-interface {v5}, Lb/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v9, Lcom/loopj/android/http/AsyncHttpClient;->log:Lcom/loopj/android/http/LogInterface;

    const-string v10, "BinaryHttpRH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given pattern is not valid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v10, v8, v2}, Lcom/loopj/android/http/LogInterface;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    if-nez v0, :cond_3

    invoke-interface {v4}, Lb/a/a/a/af;->b()I

    move-result v0

    invoke-interface {p1}, Lb/a/a/a/s;->getAllHeaders()[Lb/a/a/a/e;

    move-result-object v1

    new-instance v2, Lb/a/a/a/b/l;

    invoke-interface {v4}, Lb/a/a/a/af;->b()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Type ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v5}, Lb/a/a/a/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") not allowed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lb/a/a/a/b/l;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1, v13, v2}, Lcom/loopj/android/http/BinaryHttpResponseHandler;->sendFailureMessage(I[Lb/a/a/a/e;[BLjava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendResponseMessage(Lb/a/a/a/s;)V

    goto :goto_0
.end method
