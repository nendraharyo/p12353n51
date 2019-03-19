.class Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/support/v7/widget/CardView;

.field final synthetic e:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;


# direct methods
.method public constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->b:Landroid/widget/TextView;

    const v0, 0x7f09013b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->a:Landroid/widget/TextView;

    const v0, 0x7f090145

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->c:Landroid/widget/ImageView;

    const v0, 0x7f090080

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->d:Landroid/support/v7/widget/CardView;

    return-void
.end method
