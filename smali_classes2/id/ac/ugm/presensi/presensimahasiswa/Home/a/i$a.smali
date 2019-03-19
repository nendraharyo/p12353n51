.class Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;


# direct methods
.method public constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;->b:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f090128

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;->a:Landroid/widget/TextView;

    return-void
.end method
