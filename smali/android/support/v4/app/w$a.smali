.class public Landroid/support/v4/app/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/os/Bundle;

.field public b:I

.field public c:Ljava/lang/CharSequence;

.field public d:Landroid/app/PendingIntent;

.field private final e:[Landroid/support/v4/app/aa;

.field private final f:[Landroid/support/v4/app/aa;

.field private g:Z


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 8

    const/4 v5, 0x0

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/w$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/aa;[Landroid/support/v4/app/aa;Z)V

    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/aa;[Landroid/support/v4/app/aa;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/app/w$a;->b:I

    invoke-static {p2}, Landroid/support/v4/app/w$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/w$a;->c:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/support/v4/app/w$a;->d:Landroid/app/PendingIntent;

    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Landroid/support/v4/app/w$a;->a:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/support/v4/app/w$a;->e:[Landroid/support/v4/app/aa;

    iput-object p6, p0, Landroid/support/v4/app/w$a;->f:[Landroid/support/v4/app/aa;

    iput-boolean p7, p0, Landroid/support/v4/app/w$a;->g:Z

    return-void

    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/w$a;->b:I

    return v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$a;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$a;->d:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$a;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/w$a;->g:Z

    return v0
.end method

.method public f()[Landroid/support/v4/app/aa;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$a;->e:[Landroid/support/v4/app/aa;

    return-object v0
.end method

.method public g()[Landroid/support/v4/app/aa;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$a;->f:[Landroid/support/v4/app/aa;

    return-object v0
.end method
