.class public Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lid/ac/ugm/presensi/presensimahasiswa/Home/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lid/ac/ugm/presensi/presensimahasiswa/Home/a/h;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;->a:Ljava/util/List;

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;->c:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;->b:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;
    .locals 3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0045

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;

    invoke-direct {v1, p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;I)V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/h;

    iget-object v1, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;

    invoke-virtual {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;->a(Landroid/view/ViewGroup;I)Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i$a;

    move-result-object v0

    return-object v0
.end method
