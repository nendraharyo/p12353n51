.class Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)I

    move-result v0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)I

    move-result v1

    if-eq v0, v1, :cond_0

    if-lt v0, v5, :cond_0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lcom/sun/pdfview/PDFFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFFile;->getNumPages()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;I)I

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    move-result-object v0

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->d(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;

    move-result-object v0

    iget-object v0, v0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$a;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    const-string v2, "Loading"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading PDF Page "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v4}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->c(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)I

    move-result v1

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$7;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->e(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;)F

    move-result v2

    invoke-static {v0, v1, v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->b(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;IF)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
