.class Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$5;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$5;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$5;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$5;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return v3
.end method
