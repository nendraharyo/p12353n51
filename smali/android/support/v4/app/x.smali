.class Landroid/support/v4/app/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/v;


# instance fields
.field private final a:Landroid/app/Notification$Builder;

.field private final b:Landroid/support/v4/app/w$c;

.field private c:Landroid/widget/RemoteViews;

.field private d:Landroid/widget/RemoteViews;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Bundle;

.field private g:I

.field private h:Landroid/widget/RemoteViews;


# direct methods
.method constructor <init>(Landroid/support/v4/app/w$c;)V
    .locals 10

    const/16 v9, 0x1a

    const/16 v8, 0x14

    const/16 v7, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->e:Ljava/util/List;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/v4/app/x;->b:Landroid/support/v4/app/w$c;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_1

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/w$c;->a:Landroid/content/Context;

    iget-object v4, p1, Landroid/support/v4/app/w$c;->H:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    :goto_0
    iget-object v3, p1, Landroid/support/v4/app/w$c;->M:Landroid/app/Notification;

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-wide v4, v3, Landroid/app/Notification;->when:J

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, v3, Landroid/app/Notification;->icon:I

    iget v5, v3, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/app/w$c;->g:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->vibrate:[J

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, v3, Landroid/app/Notification;->ledARGB:I

    iget v5, v3, Landroid/app/Notification;->ledOnMS:I

    iget v6, v3, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, v3, Landroid/app/Notification;->defaults:I

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroid/support/v4/app/w$c;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroid/support/v4/app/w$c;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroid/support/v4/app/w$c;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroid/support/v4/app/w$c;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v5, p1, Landroid/support/v4/app/w$c;->f:Landroid/app/PendingIntent;

    iget v0, v3, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v4, v5, v0}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p1, Landroid/support/v4/app/w$c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, p1, Landroid/support/v4/app/w$c;->j:I

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, p1, Landroid/support/v4/app/w$c;->q:I

    iget v5, p1, Landroid/support/v4/app/w$c;->r:I

    iget-boolean v6, p1, Landroid/support/v4/app/w$c;->s:Z

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-object v4, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v5, v3, Landroid/app/Notification;->audioStreamType:I

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-object v4, p1, Landroid/support/v4/app/w$c;->o:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-boolean v4, p1, Landroid/support/v4/app/w$c;->m:Z

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v4, p1, Landroid/support/v4/app/w$c;->k:I

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroid/support/v4/app/w$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/w$a;

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->a(Landroid/support/v4/app/w$a;)V

    goto :goto_5

    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p1, Landroid/support/v4/app/w$c;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    iget-object v0, p1, Landroid/support/v4/app/w$c;->A:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    iget-object v4, p1, Landroid/support/v4/app/w$c;->A:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v8, :cond_a

    iget-boolean v0, p1, Landroid/support/v4/app/w$c;->w:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    const-string v4, "android.support.localOnly"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_8
    iget-object v0, p1, Landroid/support/v4/app/w$c;->t:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    const-string v4, "android.support.groupKey"

    iget-object v5, p1, Landroid/support/v4/app/w$c;->t:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Landroid/support/v4/app/w$c;->u:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    const-string v4, "android.support.isGroupSummary"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_9
    :goto_6
    iget-object v0, p1, Landroid/support/v4/app/w$c;->v:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    const-string v1, "android.support.sortKey"

    iget-object v4, p1, Landroid/support/v4/app/w$c;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p1, Landroid/support/v4/app/w$c;->E:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/x;->c:Landroid/widget/RemoteViews;

    iget-object v0, p1, Landroid/support/v4/app/w$c;->F:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/x;->d:Landroid/widget/RemoteViews;

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroid/support/v4/app/w$c;->l:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_c

    iget-object v0, p1, Landroid/support/v4/app/w$c;->N:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroid/support/v4/app/w$c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v1, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    const-string v4, "android.people"

    iget-object v0, p1, Landroid/support/v4/app/w$c;->N:Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/support/v4/app/w$c;->N:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroid/support/v4/app/w$c;->w:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/w$c;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-boolean v1, p1, Landroid/support/v4/app/w$c;->u:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/w$c;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    iget v0, p1, Landroid/support/v4/app/w$c;->L:I

    iput v0, p0, Landroid/support/v4/app/x;->g:I

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_10

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/w$c;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/w$c;->B:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/w$c;->C:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/w$c;->D:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v3, v3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroid/support/v4/app/w$c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_7

    :cond_e
    iget-object v0, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    const-string v4, "android.support.useSideChannel"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_f
    iget-object v0, p1, Landroid/support/v4/app/w$c;->G:Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/support/v4/app/x;->h:Landroid/widget/RemoteViews;

    :cond_10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_13

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/w$c;->A:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/w$c;->p:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v0, p1, Landroid/support/v4/app/w$c;->E:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/w$c;->E:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_11
    iget-object v0, p1, Landroid/support/v4/app/w$c;->F:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/w$c;->F:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_12
    iget-object v0, p1, Landroid/support/v4/app/w$c;->G:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-object v1, p1, Landroid/support/v4/app/w$c;->G:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    :cond_13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v9, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget v1, p1, Landroid/support/v4/app/w$c;->I:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setBadgeIconType(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Landroid/support/v4/app/w$c;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-wide v4, p1, Landroid/support/v4/app/w$c;->K:J

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/w$c;->L:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    iget-boolean v0, p1, Landroid/support/v4/app/w$c;->y:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-boolean v1, p1, Landroid/support/v4/app/w$c;->x:Z

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    :cond_14
    iget-object v0, p1, Landroid/support/v4/app/w$c;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_15
    return-void
.end method

.method private a(Landroid/app/Notification;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p1, Landroid/app/Notification;->defaults:I

    iget v0, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p1, Landroid/app/Notification;->defaults:I

    return-void
.end method

.method private a(Landroid/support/v4/app/w$a;)V
    .locals 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    new-instance v1, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/w$a;->a()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v4/app/w$a;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/w$a;->c()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroid/support/v4/app/w$a;->f()[Landroid/support/v4/app/aa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/w$a;->f()[Landroid/support/v4/app/aa;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/app/aa;->a([Landroid/support/v4/app/aa;)[Landroid/app/RemoteInput;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/w$a;->d()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/w$a;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_1
    const-string v2, "android.support.allowGeneratedReplies"

    invoke-virtual {p1}, Landroid/support/v4/app/w$a;->e()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/support/v4/app/w$a;->e()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    :cond_1
    invoke-virtual {v1, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1

    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/x;->e:Ljava/util/List;

    iget-object v1, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    invoke-static {v1, p1}, Landroid/support/v4/app/y;->a(Landroid/app/Notification$Builder;Landroid/support/v4/app/w$a;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public a()Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public b()Landroid/app/Notification;
    .locals 5

    const/16 v4, 0x10

    iget-object v0, p0, Landroid/support/v4/app/x;->b:Landroid/support/v4/app/w$c;

    iget-object v1, v0, Landroid/support/v4/app/w$c;->n:Landroid/support/v4/app/w$d;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/w$d;->a(Landroid/support/v4/app/v;)V

    :cond_0
    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Landroid/support/v4/app/w$d;->b(Landroid/support/v4/app/v;)Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/x;->c()Landroid/app/Notification;

    move-result-object v2

    if-eqz v0, :cond_6

    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_1
    :goto_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Landroid/support/v4/app/w$d;->c(Landroid/support/v4/app/v;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    if-eqz v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/x;->b:Landroid/support/v4/app/w$c;

    iget-object v0, v0, Landroid/support/v4/app/w$c;->n:Landroid/support/v4/app/w$d;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/w$d;->d(Landroid/support/v4/app/v;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_4

    if-eqz v1, :cond_4

    invoke-static {v2}, Landroid/support/v4/app/w;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Landroid/support/v4/app/w$d;->a(Landroid/os/Bundle;)V

    :cond_4
    return-object v2

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/v4/app/x;->b:Landroid/support/v4/app/w$c;

    iget-object v0, v0, Landroid/support/v4/app/w$c;->E:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/x;->b:Landroid/support/v4/app/w$c;

    iget-object v0, v0, Landroid/support/v4/app/w$c;->E:Landroid/widget/RemoteViews;

    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_1
.end method

.method protected c()Landroid/app/Notification;
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/x;->g:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/support/v4/app/x;->g:I

    if-ne v1, v3, :cond_2

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->a(Landroid/app/Notification;)V

    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v4/app/x;->g:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->a(Landroid/app/Notification;)V

    goto :goto_0

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/x;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/app/x;->c:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/x;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/support/v4/app/x;->d:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_5
    iget-object v1, p0, Landroid/support/v4/app/x;->h:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/v4/app/x;->h:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    :cond_6
    iget v1, p0, Landroid/support/v4/app/x;->g:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/support/v4/app/x;->g:I

    if-ne v1, v3, :cond_7

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->a(Landroid/app/Notification;)V

    :cond_7
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v4/app/x;->g:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->a(Landroid/app/Notification;)V

    goto/16 :goto_0

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/x;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/support/v4/app/x;->c:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_9
    iget-object v1, p0, Landroid/support/v4/app/x;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/support/v4/app/x;->d:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_a
    iget v1, p0, Landroid/support/v4/app/x;->g:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_b

    iget v1, p0, Landroid/support/v4/app/x;->g:I

    if-ne v1, v3, :cond_b

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->a(Landroid/app/Notification;)V

    :cond_b
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v4/app/x;->g:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Landroid/support/v4/app/x;->a(Landroid/app/Notification;)V

    goto/16 :goto_0

    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_f

    iget-object v0, p0, Landroid/support/v4/app/x;->e:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/app/y;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    const-string v2, "android.support.actionExtras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    iget-object v1, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/x;->c:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v4/app/x;->c:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_e
    iget-object v1, p0, Landroid/support/v4/app/x;->d:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/x;->d:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/app/w;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    iget-object v0, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/x;->f:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_11
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/x;->e:Ljava/util/List;

    invoke-static {v0}, Landroid/support/v4/app/y;->a(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-static {v1}, Landroid/support/v4/app/w;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.support.actionExtras"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_12
    iget-object v0, p0, Landroid/support/v4/app/x;->c:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v4/app/x;->c:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_13
    iget-object v0, p0, Landroid/support/v4/app/x;->d:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v4/app/x;->d:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    :cond_14
    move-object v0, v1

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Landroid/support/v4/app/x;->a:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_0
.end method
