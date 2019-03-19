.class public Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;
.super Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/a;


# static fields
.field private static a:[I


# instance fields
.field private b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

.field private c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

.field private d:Landroid/widget/Button;

.field private e:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xff0100
        -0xffff01
        -0xff01
        -0xff0001
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/a;-><init>()V

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    const-string v1, ""

    invoke-direct {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-direct {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->e:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    return-object v0
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    return-object v0
.end method

.method static synthetic c(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, -0x1

    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->setContentView(I)V

    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0900af

    invoke-virtual {p0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900c1

    invoke-virtual {p0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->d:Landroid/widget/Button;

    const v2, 0x7f0900b1

    invoke-virtual {p0, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900ab

    invoke-virtual {p0, v3}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v4, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$1;

    invoke-direct {v4, p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->d:Landroid/widget/Button;

    new-instance v4, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$2;

    invoke-direct {v4, p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    :try_start_0
    const-string v0, "7"

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v10, v8

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->e:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    if-nez v0, :cond_0

    const v0, 0x7f090042

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-static {p0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/e;->a(Landroid/content/Context;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;)Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    move-result-object v1

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->e:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->e(Z)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->e:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$3;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity$3;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;)V

    invoke-virtual {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->e:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    const-string v1, "Masuk "

    invoke-virtual {v0, v1, v8, v9}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;->a(Ljava/lang/String;D)V

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;

    invoke-direct {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;-><init>()V

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->a:[I

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->a:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->a(I)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    const-string v1, "Sakit "

    invoke-virtual {v0, v1, v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;->a(Ljava/lang/String;D)V

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;

    invoke-direct {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;-><init>()V

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->a:[I

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->a:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->a(I)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    const-string v1, "Alpha "

    invoke-virtual {v0, v1, v6, v7}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;->a(Ljava/lang/String;D)V

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;

    invoke-direct {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;-><init>()V

    sget-object v1, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->a:[I

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    invoke-virtual {v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->a:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;->a(I)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->b(I)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;->a(Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/w;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->e:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->d()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->e:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/i;->d()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/a;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "current_series"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    const-string v0, "current_renderer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "current_series"

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->b:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/d;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "current_renderer"

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/response/RecapActivity;->c:Lid/ac/ugm/presensi/presensimahasiswa/PresenceRecap/a/g;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
