.class public Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;
.super Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/a;


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

.field e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private f:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->a:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->b:Ljava/lang/Boolean;

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->d:Landroid/support/v7/widget/RecyclerView$Adapter;

    const-string v0, "data_local"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "{\"history\":[],\"totalPage\":0}"

    :cond_0
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->f:Lcom/google/gson/Gson;

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/b;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/b;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/a;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->setContentView(I)V

    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity$1;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900c5

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->e:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->f:Lcom/google/gson/Gson;

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Notify/response/PresenceActivity;->a()V

    return-void
.end method
