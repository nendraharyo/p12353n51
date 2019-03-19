.class Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$3;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->a(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->d(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->c(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-virtual {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onTick(J)V
    .locals 9

    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p1, p2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$3;->a:Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->d(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
