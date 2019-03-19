.class public Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;
.super Landroid/support/v7/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;->a:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;->a()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;

    invoke-direct {v1, p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;Landroid/view/View;)V

    return-object v1
.end method

.method public a(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;I)V
    .locals 3

    const v2, 0x7f0800a1

    if-nez p2, :cond_1

    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->a:Landroid/widget/TextView;

    const-string v1, "56 poin"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->b:Landroid/widget/TextView;

    const-string v1, "PAKET 1 KFC"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    :goto_0
    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->d:Landroid/support/v7/widget/CardView;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$1;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->a:Landroid/widget/TextView;

    const-string v1, "89 poin"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->b:Landroid/widget/TextView;

    const-string v1, "PULSA SIMPATI 100 RIBU"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->a:Landroid/widget/TextView;

    const-string v1, "65 poin"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->b:Landroid/widget/TextView;

    const-string v1, "VOUCHER STARBUCKS"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->a:Landroid/widget/TextView;

    const-string v1, "99 poin"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->b:Landroid/widget/TextView;

    const-string v1, "VOUCHER MAXX COFFEE"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;

    invoke-virtual {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;->a(Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;->a(Landroid/view/ViewGroup;I)Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e$a;

    move-result-object v0

    return-object v0
.end method
