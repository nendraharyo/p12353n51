.class public Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Boolean;

.field c:Landroid/support/v7/widget/RecyclerView;

.field d:Landroid/support/v7/widget/RecyclerView$Adapter;

.field e:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

.field f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field g:Landroid/widget/TextView;

.field h:Landroid/os/CountDownTimer;

.field private i:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->a:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f090053

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->g:Landroid/widget/TextView;

    const v0, 0x7f0900c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->i:Lcom/google/gson/Gson;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a$1;

    const-wide/32 v2, 0x3b9aca00

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;JJ)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->h:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->d:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "data_local"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->i:Lcom/google/gson/Gson;

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/g;->a()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->getActivity()Landroid/support/v4/app/i;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/i;->getSupportFragmentManager()Landroid/support/v4/app/m;

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View;Landroid/support/v4/app/m;)V

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->e:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->e:Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/a/a;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0b003c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->a(Landroid/view/View;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->h:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Dashboard/response/a;->h:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method
