.class Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Ljava/lang/String;)V
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

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    iput-object p2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$1;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$1;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b$1;->b:Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;

    invoke-static {v1, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;->a(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/b;Ljava/lang/String;)V

    return-void
.end method
