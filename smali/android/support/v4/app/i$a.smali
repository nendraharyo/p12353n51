.class Landroid/support/v4/app/i$a;
.super Landroid/support/v4/app/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/l",
        "<",
        "Landroid/support/v4/app/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/i;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/i;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-direct {p0, p1}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/i;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/i;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/i;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/app/i;->startIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/i;->requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/i;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-static {v0, p1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/i;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public c()Landroid/support/v4/app/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    return-object v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i$a;->a:Landroid/support/v4/app/i;

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public synthetic g()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/i$a;->c()Landroid/support/v4/app/i;

    move-result-object v0

    return-object v0
.end method
