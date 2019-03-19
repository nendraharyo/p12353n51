.class public Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;
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

.field e:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;

.field f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private g:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->a:Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->b:Ljava/lang/Boolean;

    return-void
.end method

.method private a()V
    .locals 4

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->d:Landroid/support/v7/widget/RecyclerView$Adapter;

    const-string v0, "{\"message\":\"The request has succeeded\",\"status\":200,\"heading\":\"Success\",\"content\":[{\"dosen_id\":\"vw4DhUXuQMHJQRd_dXxepeUTP75SR8JB3stqmG3sCUQ=\",\"dosen_nama\":\"Widyawan, S.T., M.Sc., Ph.D.\",\"mk_kelas_id\":\"Li-11yB1o2BEKZnHnTHDjfuEgG1NbrrMQyClgwXUMYA=\",\"matakuliah_kode\":\"Block A.1\",\"mk_rumpun_nama_ID\":\"Being A Medical Student and Locomotor System\",\"mk_rumpun_sks\":\"6\",\"kelas\":\"A\",\"pertemuan_ke\":\"2\",\"mulai\":\"2018-11-13 08:00:00\",\"selesai\":\"2018-11-13 10:00:00\",\"ruang_nama\":\"S1.101\",\"user_id\":\"JjodD4Ke1byY8AbIUXgzBy3TKkfoAR5wziPBkzOSJWE=\",\"pertemuan_id\":\"XaYFVQMFTV_CE_WVXdU-vlLijCoup9qkkc5Y8g7bjbc=\",\"server_time\":\"2018-12-10 09:42:45\"},{\"dosen_id\":\"j0aL-q0vJgu2OkoQvviwAstEG2eosa-6YUpwsR9dwoc=\",\"dosen_nama\":\"Triyogatama Wahyu Widodo, M.Kom.\",\"mk_kelas_id\":\"ZZ0jdyejSDENy2F11kqm4c8V9pTGj2cm5Zju3SeXWAA=\",\"matakuliah_kode\":\"MK BD5gtO\",\"mk_rumpun_nama_ID\":\"Sistem Terdistribusi\",\"mk_rumpun_sks\":\"3\",\"kelas\":\"B\",\"pertemuan_ke\":\"2\",\"mulai\":\"2018-11-13 08:00:00\",\"selesai\":\"2018-11-13 09:00:00\",\"ruang_nama\":\"S1.103\",\"user_id\":\"3IloFAA1KdtLxXn83CfjfVStd8sqHsPzGvFIygTzS1Q=\",\"pertemuan_id\":\"hJeolCTksWg5VUQDmcs3sUKX6lI3NqyT8cffTepTqFU=\",\"server_time\":\"2018-12-10 09:42:45\"}]}"

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->g:Lcom/google/gson/Gson;

    const-class v2, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/b;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/b;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->a:Ljava/util/List;

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v1, v2, v3}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->b:Ljava/lang/Boolean;

    move v2, v1

    :goto_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->b:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v6, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->a:Ljava/util/List;

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1231"

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->e:Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/Home/a/c;->notifyItemInserted(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->g:Lcom/google/gson/Gson;

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->a:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "Duplikasi data."

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Presensi mahasiswa telah tersimpan."

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    new-instance v3, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b$1;

    invoke-direct {v3, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const v0, 0x7f0b003d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f090052

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900dd

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->f:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iput-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->g:Lcom/google/gson/Gson;

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->a()V

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "ctn"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data ===> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ctn"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "user_id"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data ===> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Home/response/b;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/i;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "user_id"

    const-string v5, "---"

    invoke-static {v3, v4, v5}, Lid/ac/ugm/presensi/presensimahasiswa/utils/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
