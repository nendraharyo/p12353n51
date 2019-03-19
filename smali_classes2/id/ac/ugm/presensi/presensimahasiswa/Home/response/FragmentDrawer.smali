.class public Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$b;,
        Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;,
        Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static g:[Ljava/lang/String;


# instance fields
.field private b:Landroid/support/v7/widget/RecyclerView;

.field private c:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private d:Landroid/support/v4/widget/DrawerLayout;

.field private e:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;

.field private f:Landroid/view/View;

.field private h:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;)Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$b;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->h:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$b;

    return-object v0
.end method

.method public static a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lid/ac/ugm/presensi/presensimahasiswa/Home/a/h;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->g:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/h;

    invoke-direct {v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/h;-><init>()V

    sget-object v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->g:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/h;->a(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;)Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->d:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic d(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;)Landroid/support/v7/app/ActionBarDrawerToggle;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->c:Landroid/support/v7/app/ActionBarDrawerToggle;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;)V
    .locals 8

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->f:Landroid/view/View;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->d:Landroid/support/v4/widget/DrawerLayout;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$2;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    const v5, 0x7f0f00da

    const v6, 0x7f0f00d9

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;IILandroid/support/v7/widget/Toolbar;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->c:Landroid/support/v7/app/ActionBarDrawerToggle;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->d:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->c:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$c;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->d:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$3;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$3;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$b;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->h:Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$b;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->g:[Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v0, 0x7f0b003e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f090063

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->a()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->b:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/i;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    iget-object v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;->b:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$1;

    invoke-direct {v5, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer;)V

    invoke-direct {v2, v3, v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$c;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;Lid/ac/ugm/presensi/presensimahasiswa/Home/response/FragmentDrawer$a;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-object v1
.end method
