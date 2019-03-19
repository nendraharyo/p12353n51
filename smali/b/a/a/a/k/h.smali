.class public Lb/a/a/a/k/h;
.super Lb/a/a/a/k/a;

# interfaces
.implements Lb/a/a/a/s;


# instance fields
.field private a:Lb/a/a/a/af;

.field private b:Lb/a/a/a/ac;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lb/a/a/a/k;

.field private final f:Lb/a/a/a/ad;

.field private g:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lb/a/a/a/af;Lb/a/a/a/ad;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Lb/a/a/a/k/a;-><init>()V

    const-string v0, "Status line"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/af;

    iput-object v0, p0, Lb/a/a/a/k/h;->a:Lb/a/a/a/af;

    invoke-interface {p1}, Lb/a/a/a/af;->a()Lb/a/a/a/ac;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/k/h;->b:Lb/a/a/a/ac;

    invoke-interface {p1}, Lb/a/a/a/af;->b()I

    move-result v0

    iput v0, p0, Lb/a/a/a/k/h;->c:I

    invoke-interface {p1}, Lb/a/a/a/af;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/k/h;->d:Ljava/lang/String;

    iput-object p2, p0, Lb/a/a/a/k/h;->f:Lb/a/a/a/ad;

    iput-object p3, p0, Lb/a/a/a/k/h;->g:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/a/af;
    .locals 4

    iget-object v0, p0, Lb/a/a/a/k/h;->a:Lb/a/a/a/af;

    if-nez v0, :cond_0

    new-instance v2, Lb/a/a/a/k/n;

    iget-object v0, p0, Lb/a/a/a/k/h;->b:Lb/a/a/a/ac;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/a/a/k/h;->b:Lb/a/a/a/ac;

    :goto_0
    iget v3, p0, Lb/a/a/a/k/h;->c:I

    iget-object v1, p0, Lb/a/a/a/k/h;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/a/a/a/k/h;->d:Ljava/lang/String;

    :goto_1
    invoke-direct {v2, v0, v3, v1}, Lb/a/a/a/k/n;-><init>(Lb/a/a/a/ac;ILjava/lang/String;)V

    iput-object v2, p0, Lb/a/a/a/k/h;->a:Lb/a/a/a/af;

    :cond_0
    iget-object v0, p0, Lb/a/a/a/k/h;->a:Lb/a/a/a/af;

    return-object v0

    :cond_1
    sget-object v0, Lb/a/a/a/v;->c:Lb/a/a/a/v;

    goto :goto_0

    :cond_2
    iget v1, p0, Lb/a/a/a/k/h;->c:I

    invoke-virtual {p0, v1}, Lb/a/a/a/k/h;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected a(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/k/h;->f:Lb/a/a/a/ad;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lb/a/a/a/k/h;->f:Lb/a/a/a/ad;

    iget-object v0, p0, Lb/a/a/a/k/h;->g:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/a/a/k/h;->g:Ljava/util/Locale;

    :goto_0
    invoke-interface {v1, p1, v0}, Lb/a/a/a/ad;->a(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lb/a/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lb/a/a/a/k/h;->e:Lb/a/a/a/k;

    return-void
.end method

.method public b()Lb/a/a/a/k;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/h;->e:Lb/a/a/a/k;

    return-object v0
.end method

.method public getProtocolVersion()Lb/a/a/a/ac;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/h;->b:Lb/a/a/a/ac;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/a/k/h;->a()Lb/a/a/a/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a/k/h;->headergroup:Lb/a/a/a/k/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a/k/h;->e:Lb/a/a/a/k;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a/k/h;->e:Lb/a/a/a/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
