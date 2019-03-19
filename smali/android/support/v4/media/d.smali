.class public abstract Landroid/support/v4/media/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/d$a;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private mCallback:Landroid/support/v4/media/d$a;

.field private final mControlType:I

.field private mCurrentVolume:I

.field private final mMaxVolume:I

.field private mVolumeProviderObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/media/d;->mControlType:I

    iput p2, p0, Landroid/support/v4/media/d;->mMaxVolume:I

    iput p3, p0, Landroid/support/v4/media/d;->mCurrentVolume:I

    return-void
.end method


# virtual methods
.method public final getCurrentVolume()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/d;->mCurrentVolume:I

    return v0
.end method

.method public final getMaxVolume()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/d;->mMaxVolume:I

    return v0
.end method

.method public final getVolumeControl()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/d;->mControlType:I

    return v0
.end method

.method public getVolumeProvider()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroid/support/v4/media/d;->mVolumeProviderObj:Ljava/lang/Object;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/support/v4/media/d;->mControlType:I

    iget v1, p0, Landroid/support/v4/media/d;->mMaxVolume:I

    iget v2, p0, Landroid/support/v4/media/d;->mCurrentVolume:I

    new-instance v3, Landroid/support/v4/media/d$1;

    invoke-direct {v3, p0}, Landroid/support/v4/media/d$1;-><init>(Landroid/support/v4/media/d;)V

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/e;->a(IIILandroid/support/v4/media/e$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/d;->mVolumeProviderObj:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/d;->mVolumeProviderObj:Ljava/lang/Object;

    return-object v0
.end method

.method public onAdjustVolume(I)V
    .locals 0

    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 0

    return-void
.end method

.method public setCallback(Landroid/support/v4/media/d$a;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/d;->mCallback:Landroid/support/v4/media/d$a;

    return-void
.end method

.method public final setCurrentVolume(I)V
    .locals 3

    iput p1, p0, Landroid/support/v4/media/d;->mCurrentVolume:I

    invoke-virtual {p0}, Landroid/support/v4/media/d;->getVolumeProvider()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-static {v0, p1}, Landroid/support/v4/media/e;->a(Ljava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/d;->mCallback:Landroid/support/v4/media/d$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/d;->mCallback:Landroid/support/v4/media/d$a;

    invoke-virtual {v0, p0}, Landroid/support/v4/media/d$a;->a(Landroid/support/v4/media/d;)V

    :cond_1
    return-void
.end method
