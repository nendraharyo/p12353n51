.class Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Landroid/app/AlertDialog;[Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->b:[Ljava/lang/String;

    iput p4, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->c:I

    iput-object p5, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->d(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->b:[Ljava/lang/String;

    aget-object v0, v0, v4

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->b:[Ljava/lang/String;

    const-string v1, "{\"history\":[],\"totalPage\":0}"

    aput-object v1, v0, v4

    :cond_2
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "at_current_mk"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    :goto_1
    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->e(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->e(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)Lorg/json/JSONArray;

    move-result-object v0

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->c:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "at_current_mk"

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->e(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/PresensiUGM"

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "/PresensiUGM"

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/logUgmPresence.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "logUgmPresence.db"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "dd-MM-yyyy HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "GMT+0700"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/support/v4/app/i;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE IF NOT EXISTS log_presence (ID INTEGER primary key AUTOINCREMENT,CARDID TEXT,CARDNAME TEXT,DATEAT TEXT default \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSERT or replace INTO log_presence (CARDID, CARDNAME) VALUES(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\',\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->f(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;->a()V

    :cond_4
    return-void

    :cond_5
    :try_start_2
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c$7;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/c;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    goto :goto_3
.end method
