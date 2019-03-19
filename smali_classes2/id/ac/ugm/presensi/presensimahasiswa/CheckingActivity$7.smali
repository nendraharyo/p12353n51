.class Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;


# direct methods
.method constructor <init>(Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;)V
    .locals 0

    iput-object p1, p0, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$7;->a:Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity$7;->a:Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;

    invoke-virtual {v0}, Lid/ac/ugm/presensi/presensimahasiswa/CheckingActivity;->finish()V

    return-void
.end method
