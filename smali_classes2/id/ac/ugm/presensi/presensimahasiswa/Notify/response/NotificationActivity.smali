.class public Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->a:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private a()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->a:Landroid/media/MediaPlayer;

    :try_start_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->a:Landroid/media/MediaPlayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->setContentView(I)V

    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity$1;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/NotificationActivity;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
