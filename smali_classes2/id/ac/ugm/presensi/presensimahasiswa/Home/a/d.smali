.class Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/content/Context;

.field private e:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p4, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;->c:Landroid/view/View;

    iput-object p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;->d:Landroid/content/Context;

    const v0, 0x7f0900de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;->a:Landroid/widget/TextView;

    const v0, 0x7f09013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;)V
    .locals 2

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
