.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lb/a/a/a/e;[BLjava/lang/Throwable;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "null"

    if-eqz p3, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "is_success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/LoginActivity;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0144

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-string v2, "Presensi Gagal."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-string v2, "Presensi Gagal."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    return-void
.end method

.method public onSuccess(I[Lb/a/a/a/e;[B)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p3, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "Tidak"

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6$1;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Ya"

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6$2;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$6;->a:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
