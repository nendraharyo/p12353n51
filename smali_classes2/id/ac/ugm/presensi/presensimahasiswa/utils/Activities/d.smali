.class public Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;
.super Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/a;


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v1, "tag_"

    const-string v0, "-"

    const-string v2, ""

    invoke-virtual {p3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "string"

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_1
    return v0
.end method

.method private a(Landroid/nfc/Tag;)V
    .locals 7

    const v2, 0x1030042

    const/4 v1, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    invoke-static {p1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/nfc/Tag;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->b:I

    iget-object v0, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const v1, 0x1030044

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v0

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v1

    array-length v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " byte"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CL2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getAtqa()[B

    move-result-object v1

    new-array v2, v6, [B

    aget-byte v3, v1, v5

    aput-byte v3, v2, v4

    aget-byte v1, v1, v4

    aput-byte v1, v2, v5

    invoke-static {v2}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a([B)Ljava/lang/String;

    move-result-object v2

    new-array v1, v6, [B

    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    invoke-virtual {v0}, Landroid/nfc/tech/NfcA;->getSak()S

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    aget-byte v0, v1, v4

    if-eqz v0, :cond_3

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "-"

    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/nfc/tech/IsoDep;->getHistoricalBytes()[B

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    invoke-static {v3}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a([B)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {p0, v2, v0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_2
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CL3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-array v0, v5, [B

    aget-byte v1, v1, v5

    aput-byte v1, v0, v4

    invoke-static {v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(I)I

    move-result v1

    invoke-virtual {v0, v1, v1, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const v1, 0x7f0f01a0

    invoke-virtual {p0, v1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v0, 0x7f0f0107

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/a;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->d()Landroid/nfc/Tag;

    move-result-object v0

    invoke-direct {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->a(Landroid/nfc/Tag;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->a(Landroid/content/Intent;Landroid/content/Context;)I

    const-string v0, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Common;->d()Landroid/nfc/Tag;

    move-result-object v0

    invoke-direct {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->a(Landroid/nfc/Tag;)V

    :cond_0
    return-void
.end method

.method public onReadMore(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f0f00ba

    const v0, 0x7f0f00b9

    :goto_0
    invoke-virtual {p0, v0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0042

    new-instance v2, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d$1;

    invoke-direct {v2, p0}, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d$1;-><init>(Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void

    :cond_0
    iget v1, p0, Lid/ac/ugm/presensi/presensimahasiswa/utils/Activities/d;->b:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    const v1, 0x7f0f00bc

    const v0, 0x7f0f00bb

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method
