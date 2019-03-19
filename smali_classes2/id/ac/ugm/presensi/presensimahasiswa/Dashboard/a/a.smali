.class public Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/b;",
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
            "Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private final d:Landroid/view/View;

.field private e:Landroid/support/v4/app/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View;Landroid/support/v4/app/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;",
            ">;",
            "Landroid/view/View;",
            "Landroid/support/v4/app/m;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->b:Ljava/util/List;

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->c:Landroid/content/Context;

    iput-object p3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->d:Landroid/view/View;

    iput-object p4, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->e:Landroid/support/v4/app/m;

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->c:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/b;
    .locals 4

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0041

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/b;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->d:Landroid/view/View;

    invoke-direct {v1, v0, p0, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/b;-><init>(Landroid/view/View;Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;Landroid/content/Context;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/b;I)V
    .locals 3

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;

    invoke-virtual {p1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/f;)V

    iget-object v1, p1, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/b;->itemView:Landroid/view/View;

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;

    invoke-direct {v2, p0, p2, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;ILid/ac/ugm/presensi/presensimahasiswa/Home/a/f;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/b;

    invoke-virtual {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/b;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;->a(Landroid/view/ViewGroup;I)Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/b;

    move-result-object v0

    return-object v0
.end method
