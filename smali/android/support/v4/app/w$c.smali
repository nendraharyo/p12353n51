.class public Landroid/support/v4/app/w$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field A:Landroid/os/Bundle;

.field B:I

.field C:I

.field D:Landroid/app/Notification;

.field E:Landroid/widget/RemoteViews;

.field F:Landroid/widget/RemoteViews;

.field G:Landroid/widget/RemoteViews;

.field H:Ljava/lang/String;

.field I:I

.field J:Ljava/lang/String;

.field K:J

.field L:I

.field M:Landroid/app/Notification;

.field public N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/w$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/CharSequence;

.field d:Ljava/lang/CharSequence;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/app/PendingIntent;

.field g:Landroid/widget/RemoteViews;

.field h:Landroid/graphics/Bitmap;

.field i:Ljava/lang/CharSequence;

.field j:I

.field k:I

.field l:Z

.field m:Z

.field n:Landroid/support/v4/app/w$d;

.field o:Ljava/lang/CharSequence;

.field p:[Ljava/lang/CharSequence;

.field q:I

.field r:I

.field s:Z

.field t:Ljava/lang/String;

.field u:Z

.field v:Ljava/lang/String;

.field w:Z

.field x:Z

.field y:Z

.field z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/app/w$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/w$c;->b:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/w$c;->l:Z

    iput-boolean v4, p0, Landroid/support/v4/app/w$c;->w:Z

    iput v4, p0, Landroid/support/v4/app/w$c;->B:I

    iput v4, p0, Landroid/support/v4/app/w$c;->C:I

    iput v4, p0, Landroid/support/v4/app/w$c;->I:I

    iput v4, p0, Landroid/support/v4/app/w$c;->L:I

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    iput-object p1, p0, Landroid/support/v4/app/w$c;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/app/w$c;->H:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    iput v4, p0, Landroid/support/v4/app/w$c;->k:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/w$c;->N:Ljava/util/ArrayList;

    return-void
.end method

.method private a(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method protected static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/16 v1, 0x1400

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 1

    new-instance v0, Landroid/support/v4/app/x;

    invoke-direct {v0, p0}, Landroid/support/v4/app/x;-><init>(Landroid/support/v4/app/w$c;)V

    invoke-virtual {v0}, Landroid/support/v4/app/x;->b()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/w$c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/w$c;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/w$c;->b:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/w$a;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/w$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(J)Landroid/support/v4/app/w$c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroid/support/v4/app/w$c;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/w$c;->e:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Landroid/net/Uri;)Landroid/support/v4/app/w$c;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public a(Landroid/support/v4/app/w$d;)Landroid/support/v4/app/w$c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$c;->n:Landroid/support/v4/app/w$d;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v4/app/w$c;->n:Landroid/support/v4/app/w$d;

    iget-object v0, p0, Landroid/support/v4/app/w$c;->n:Landroid/support/v4/app/w$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/w$c;->n:Landroid/support/v4/app/w$d;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/w$d;->a(Landroid/support/v4/app/w$c;)V

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/w$c;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/w$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/w$c;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Z)Landroid/support/v4/app/w$c;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/w$c;->a(IZ)V

    return-object p0
.end method

.method public b(I)Landroid/support/v4/app/w$c;
    .locals 0

    iput p1, p0, Landroid/support/v4/app/w$c;->k:I

    return-object p0
.end method

.method public b(Landroid/app/PendingIntent;)Landroid/support/v4/app/w$c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/w$c;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/app/w$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/w$c;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Z)Landroid/support/v4/app/w$c;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/w$c;->a(IZ)V

    return-object p0
.end method

.method public c(I)Landroid/support/v4/app/w$c;
    .locals 0

    iput p1, p0, Landroid/support/v4/app/w$c;->B:I

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/app/w$c;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/w$c;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method
