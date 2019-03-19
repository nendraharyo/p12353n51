.class public Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;
.super Landroid/support/v7/app/AppCompatActivity;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/support/v7/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0, p2, p3}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->setResult(I)V

    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_app_settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/AppSettingsDialog;

    invoke-virtual {v0, p0}, Lpub/devrel/easypermissions/AppSettingsDialog;->a(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lpub/devrel/easypermissions/AppSettingsDialog;->a(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lpub/devrel/easypermissions/AppSettingsDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lpub/devrel/easypermissions/AppSettingsDialog;->a()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->a:Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->a:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->a:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->a:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
