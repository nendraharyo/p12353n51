.class Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a$1;
.super Landroid/os/CountDownTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;JJ)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v0, ""

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v5, v2, :cond_1

    const-string v0, "Senin"

    :cond_0
    :goto_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "dd-MM-yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a$1;->a:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;

    iget-object v2, v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->g:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/e;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne v3, v2, :cond_2

    const-string v0, "Selasa"

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    if-ne v3, v2, :cond_3

    const-string v0, "Rabu"

    goto :goto_0

    :cond_3
    if-ne v6, v2, :cond_4

    const-string v0, "Kamis"

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    if-ne v3, v2, :cond_5

    const-string v0, "Jum\'at"

    goto :goto_0

    :cond_5
    if-ne v7, v2, :cond_6

    const-string v0, "Sabtu"

    goto :goto_0

    :cond_6
    if-ne v4, v2, :cond_0

    const-string v0, "Minggu"

    goto :goto_0
.end method
