.class public Lid/ac/ugm/presensi/presensimahasiswa/utils/GeofenceNotifIntentService;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GeofenceTransitionsIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/GeofenceNotifIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/GeofenceNotifIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "user_login"

    invoke-static {v1, v2, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/DashboardActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x8000000

    invoke-static {p0, v4, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/w$c;

    invoke-direct {v2, p0}, Landroid/support/v4/app/w$c;-><init>(Landroid/content/Context;)V

    const/high16 v3, 0x7f0d0000

    invoke-virtual {v2, v3}, Landroid/support/v4/app/w$c;->a(I)Landroid/support/v4/app/w$c;

    move-result-object v2

    const-string v3, "Presensi Mahasiswa Alert!"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/w$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/w$c;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/w$c;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/w$c;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/w$c;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/w$c;

    move-result-object v1

    new-instance v2, Landroid/support/v4/app/w$b;

    invoke-direct {v2}, Landroid/support/v4/app/w$b;-><init>()V

    invoke-virtual {v2, p2}, Landroid/support/v4/app/w$b;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/w$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/w$c;->a(Landroid/support/v4/app/w$d;)Landroid/support/v4/app/w$c;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v4/app/w$c;->b(I)Landroid/support/v4/app/w$c;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/support/v4/app/w$c;->b(Z)Landroid/support/v4/app/w$c;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/w$c;->a()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v0, "GeofenceTransitions"

    const-string v1, "onHandleIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/google/android/gms/location/GeofencingEvent;->fromIntent(Landroid/content/Intent;)Lcom/google/android/gms/location/GeofencingEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "GeofenceTransitions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Goefencing Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getErrorCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/location/GeofencingEvent;->getGeofenceTransition()I

    move-result v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/GeofenceNotifIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "geofenceTransition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Enter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "GeofenceTransitions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "geofenceTransition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Enter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v4, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    if-ne v0, v5, :cond_2

    const-string v0, "GeofenceTransitions"

    const-string v1, "Showing Notification..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v0, 0xd

    invoke-virtual {v1, v0, v4}, Ljava/util/Calendar;->add(II)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x3039

    const/high16 v3, 0x10000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/GeofenceNotifIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "Error"

    const-string v1, "Error"

    invoke-virtual {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/GeofenceNotifIntentService;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "GeofenceTransitions"

    const-string v1, "Error "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
