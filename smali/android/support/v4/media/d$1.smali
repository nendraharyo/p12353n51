.class Landroid/support/v4/media/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/media/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/d;->getVolumeProvider()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/d$1;->a:Landroid/support/v4/media/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/d$1;->a:Landroid/support/v4/media/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/d;->onSetVolumeTo(I)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/d$1;->a:Landroid/support/v4/media/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/d;->onAdjustVolume(I)V

    return-void
.end method
