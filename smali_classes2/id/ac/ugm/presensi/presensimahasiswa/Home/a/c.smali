.class public Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;->b:Ljava/util/List;

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;->c:Landroid/content/Context;

    iput-object p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;->d:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;->c:Landroid/content/Context;

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;->d:Landroid/view/View;

    invoke-direct {v1, v0, p0, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;-><init>(Landroid/view/View;Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;Landroid/content/Context;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;I)V
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;

    invoke-virtual {p1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;

    invoke-virtual {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;->a(Landroid/view/ViewGroup;I)Lid/ac/ugm/presensi/presensimahasiswa/Home/a/d;

    move-result-object v0

    return-object v0
.end method
