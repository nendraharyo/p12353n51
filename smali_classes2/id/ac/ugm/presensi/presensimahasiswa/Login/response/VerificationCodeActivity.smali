.class public Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;
.super Lid/ac/ugm/presensi/presensimahasiswa/b;


# static fields
.field private static e:Landroid/os/CountDownTimer;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/EditText;

.field private f:Lcom/loopj/android/http/PersistentCookieStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/b;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    sput-object p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->e:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->a:Landroid/widget/Button;

    return-object v0
.end method

.method private a(I)V
    .locals 6

    new-instance v0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$3;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$3;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;JJ)V

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    sput-object v0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->e:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic a(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->a(I)V

    return-void
.end method

.method private b()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Verifikasi gagal."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->b()V

    return-void
.end method

.method static synthetic c(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->d:Landroid/widget/EditText;

    const-string v2, "Kode verifikasi tidak boleh kosong."

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->d:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->setContentView(I)V

    new-instance v0, Lcom/loopj/android/http/PersistentCookieStore;

    invoke-direct {v0, p0}, Lcom/loopj/android/http/PersistentCookieStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->f:Lcom/loopj/android/http/PersistentCookieStore;

    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->a:Landroid/widget/Button;

    const v0, 0x7f090143

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f0900e4

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0900b4

    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->a:Landroid/widget/Button;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$1;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;->c:Landroid/widget/TextView;

    new-instance v1, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$2;

    invoke-direct {v1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity$2;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/Login/response/VerificationCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
