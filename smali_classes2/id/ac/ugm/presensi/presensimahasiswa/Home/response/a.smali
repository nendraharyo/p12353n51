.class public Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v0, 0x7f0b003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f090033

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;->a:Landroid/widget/Button;

    const v0, 0x7f090093

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    const-string v3, "username"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;->a:Landroid/widget/Button;

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a$1;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/a;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method
