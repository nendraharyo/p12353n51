.class public Lb/a/a/a/a/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Lb/a/a/a/a/g;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput-object v0, Lb/a/a/a/a/g;->a:Ljava/lang/String;

    sput-object v0, Lb/a/a/a/a/g;->b:Ljava/lang/String;

    sput-object v0, Lb/a/a/a/a/g;->c:Ljava/lang/String;

    new-instance v0, Lb/a/a/a/a/g;

    sget-object v1, Lb/a/a/a/a/g;->a:Ljava/lang/String;

    const/4 v2, -0x1

    sget-object v3, Lb/a/a/a/a/g;->b:Ljava/lang/String;

    sget-object v4, Lb/a/a/a/a/g;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/a/a/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lb/a/a/a/a/g;->d:Lb/a/a/a/a/g;

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/n;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Lb/a/a/a/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/a/a/n;->b()I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lb/a/a/a/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lb/a/a/a/a/g;->b:Ljava/lang/String;

    sget-object v1, Lb/a/a/a/a/g;->c:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lb/a/a/a/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_2

    sget-object v0, Lb/a/a/a/a/g;->a:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lb/a/a/a/a/g;->g:Ljava/lang/String;

    if-gez p2, :cond_0

    const/4 p2, -0x1

    :cond_0
    iput p2, p0, Lb/a/a/a/a/g;->h:I

    if-nez p3, :cond_1

    sget-object p3, Lb/a/a/a/a/g;->b:Ljava/lang/String;

    :cond_1
    iput-object p3, p0, Lb/a/a/a/a/g;->f:Ljava/lang/String;

    if-nez p4, :cond_3

    sget-object v0, Lb/a/a/a/a/g;->c:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lb/a/a/a/a/g;->e:Ljava/lang/String;

    return-void

    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p4, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a(Lb/a/a/a/a/g;)I
    .locals 4

    const/4 v1, -0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lb/a/a/a/a/g;->e:Ljava/lang/String;

    iget-object v3, p1, Lb/a/a/a/a/g;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lb/a/a/a/a/g;->f:Ljava/lang/String;

    iget-object v3, p1, Lb/a/a/a/a/g;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x2

    :cond_1
    iget v2, p0, Lb/a/a/a/a/g;->h:I

    iget v3, p1, Lb/a/a/a/a/g;->h:I

    if-ne v2, v3, :cond_6

    add-int/lit8 v0, v0, 0x4

    :cond_2
    iget-object v2, p0, Lb/a/a/a/a/g;->g:Ljava/lang/String;

    iget-object v3, p1, Lb/a/a/a/a/g;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v0, v0, 0x8

    :cond_3
    :goto_0
    return v0

    :cond_4
    iget-object v2, p0, Lb/a/a/a/a/g;->e:Ljava/lang/String;

    sget-object v3, Lb/a/a/a/a/g;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lb/a/a/a/a/g;->e:Ljava/lang/String;

    sget-object v3, Lb/a/a/a/a/g;->c:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lb/a/a/a/a/g;->f:Ljava/lang/String;

    sget-object v3, Lb/a/a/a/a/g;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    iget-object v2, p1, Lb/a/a/a/a/g;->f:Ljava/lang/String;

    sget-object v3, Lb/a/a/a/a/g;->b:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lb/a/a/a/a/g;->h:I

    if-eq v2, v1, :cond_2

    iget v2, p1, Lb/a/a/a/a/g;->h:I

    if-eq v2, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lb/a/a/a/a/g;->g:Ljava/lang/String;

    sget-object v3, Lb/a/a/a/a/g;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p1, Lb/a/a/a/a/g;->g:Ljava/lang/String;

    sget-object v3, Lb/a/a/a/a/g;->a:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lb/a/a/a/a/g;

    if-nez v2, :cond_2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    check-cast p1, Lb/a/a/a/a/g;

    iget-object v2, p0, Lb/a/a/a/a/g;->g:Ljava/lang/String;

    iget-object v3, p1, Lb/a/a/a/a/g;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lb/a/a/a/a/g;->h:I

    iget v3, p1, Lb/a/a/a/a/g;->h:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lb/a/a/a/a/g;->f:Ljava/lang/String;

    iget-object v3, p1, Lb/a/a/a/a/g;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lb/a/a/a/a/g;->e:Ljava/lang/String;

    iget-object v3, p1, Lb/a/a/a/a/g;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lb/a/a/a/o/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x11

    iget-object v1, p0, Lb/a/a/a/a/g;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(ILjava/lang/Object;)I

    move-result v0

    iget v1, p0, Lb/a/a/a/a/g;->h:I

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(II)I

    move-result v0

    iget-object v1, p0, Lb/a/a/a/a/g;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(ILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lb/a/a/a/a/g;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/a/a/a/o/g;->a(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/a/a/g;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lb/a/a/a/a/g;->e:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lb/a/a/a/a/g;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a/a/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lb/a/a/a/a/g;->g:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/a/a/a/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/a/a/a/g;->h:I

    if-ltz v1, :cond_1

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/a/a/a/a/g;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v1, "<any realm>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
