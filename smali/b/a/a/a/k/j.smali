.class public Lb/a/a/a/k/j;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/k/t;


# static fields
.field public static final a:Lb/a/a/a/k/j;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lb/a/a/a/k/j;


# instance fields
.field protected final c:Lb/a/a/a/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb/a/a/a/k/j;

    invoke-direct {v0}, Lb/a/a/a/k/j;-><init>()V

    sput-object v0, Lb/a/a/a/k/j;->a:Lb/a/a/a/k/j;

    new-instance v0, Lb/a/a/a/k/j;

    invoke-direct {v0}, Lb/a/a/a/k/j;-><init>()V

    sput-object v0, Lb/a/a/a/k/j;->b:Lb/a/a/a/k/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb/a/a/a/k/j;-><init>(Lb/a/a/a/ac;)V

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/ac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lb/a/a/a/k/j;->c:Lb/a/a/a/ac;

    return-void

    :cond_0
    sget-object p1, Lb/a/a/a/v;->c:Lb/a/a/a/v;

    goto :goto_0
.end method


# virtual methods
.method protected a(II)Lb/a/a/a/ac;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/k/j;->c:Lb/a/a/a/ac;

    invoke-virtual {v0, p1, p2}, Lb/a/a/a/ac;->a(II)Lb/a/a/a/ac;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Lb/a/a/a/ac;
    .locals 11

    const/4 v10, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lb/a/a/a/k/j;->c:Lb/a/a/a/ac;

    invoke-virtual {v0}, Lb/a/a/a/ac;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2}, Lb/a/a/a/k/u;->b()I

    move-result v7

    invoke-virtual {p2}, Lb/a/a/a/k/u;->a()I

    move-result v3

    invoke-virtual {p0, p1, p2}, Lb/a/a/a/k/j;->d(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)V

    invoke-virtual {p2}, Lb/a/a/a/k/u;->b()I

    move-result v8

    add-int v0, v8, v6

    add-int/lit8 v0, v0, 0x4

    if-le v0, v3, :cond_0

    new-instance v0, Lb/a/a/a/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid protocol version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v7, v3}, Lb/a/a/a/o/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v4, v2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-ge v4, v6, :cond_2

    add-int v0, v8, v4

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(I)C

    move-result v0

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v0, v9, :cond_1

    move v0, v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_7

    add-int v0, v8, v6

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(I)C

    move-result v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_3

    :goto_2
    if-nez v1, :cond_4

    new-instance v0, Lb/a/a/a/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid protocol version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v7, v3}, Lb/a/a/a/o/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v6, 0x1

    add-int/2addr v0, v8

    const/16 v1, 0x2e

    invoke-virtual {p1, v1, v0, v3}, Lb/a/a/a/o/d;->a(III)I

    move-result v1

    if-ne v1, v10, :cond_5

    new-instance v0, Lb/a/a/a/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid protocol version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v7, v3}, Lb/a/a/a/o/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :try_start_0
    invoke-virtual {p1, v0, v1}, Lb/a/a/a/o/d;->b(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit8 v1, v1, 0x1

    const/16 v0, 0x20

    invoke-virtual {p1, v0, v1, v3}, Lb/a/a/a/o/d;->a(III)I

    move-result v0

    if-ne v0, v10, :cond_6

    move v0, v3

    :cond_6
    :try_start_1
    invoke-virtual {p1, v1, v0}, Lb/a/a/a/o/d;->b(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    invoke-virtual {p2, v0}, Lb/a/a/a/k/u;->a(I)V

    invoke-virtual {p0, v2, v1}, Lb/a/a/a/k/j;->a(II)Lb/a/a/a/ac;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lb/a/a/a/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid protocol major version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v7, v3}, Lb/a/a/a/o/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lb/a/a/a/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid protocol minor version number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v7, v3}, Lb/a/a/a/o/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v1, v0

    goto/16 :goto_2
.end method

.method protected a(Lb/a/a/a/ac;ILjava/lang/String;)Lb/a/a/a/af;
    .locals 1

    new-instance v0, Lb/a/a/a/k/n;

    invoke-direct {v0, p1, p2, p3}, Lb/a/a/a/k/n;-><init>(Lb/a/a/a/ac;ILjava/lang/String;)V

    return-object v0
.end method

.method public a(Lb/a/a/a/o/d;)Lb/a/a/a/e;
    .locals 1

    new-instance v0, Lb/a/a/a/k/p;

    invoke-direct {v0, p1}, Lb/a/a/a/k/p;-><init>(Lb/a/a/a/o/d;)V

    return-object v0
.end method

.method public b(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lb/a/a/a/k/u;->b()I

    move-result v0

    iget-object v1, p0, Lb/a/a/a/k/j;->c:Lb/a/a/a/ac;

    invoke-virtual {v1}, Lb/a/a/a/ac;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Lb/a/a/a/o/d;->c()I

    move-result v1

    add-int/lit8 v4, v6, 0x4

    if-ge v1, v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-gez v0, :cond_3

    invoke-virtual {p1}, Lb/a/a/a/o/d;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    sub-int/2addr v0, v6

    :cond_2
    add-int v1, v0, v6

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1}, Lb/a/a/a/o/d;->c()I

    move-result v4

    if-gt v1, v4, :cond_0

    move v4, v3

    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    if-ge v4, v6, :cond_5

    add-int v1, v0, v4

    invoke-virtual {p1, v1}, Lb/a/a/a/o/d;->a(I)C

    move-result v1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v1, v7, :cond_4

    move v1, v2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v0, :cond_2

    :goto_3
    invoke-virtual {p1}, Lb/a/a/a/o/d;->c()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(I)C

    move-result v1

    invoke-static {v1}, Lb/a/a/a/n/d;->a(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_7

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    :goto_4
    move v3, v2

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_4

    :cond_7
    move v2, v1

    goto :goto_4
.end method

.method public c(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Lb/a/a/a/af;
    .locals 7

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Parser cursor"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2}, Lb/a/a/a/k/u;->b()I

    move-result v3

    invoke-virtual {p2}, Lb/a/a/a/k/u;->a()I

    move-result v2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lb/a/a/a/k/j;->a(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)Lb/a/a/a/ac;

    move-result-object v4

    invoke-virtual {p0, p1, p2}, Lb/a/a/a/k/j;->d(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)V

    invoke-virtual {p2}, Lb/a/a/a/k/u;->b()I

    move-result v5

    const/16 v0, 0x20

    invoke-virtual {p1, v0, v5, v2}, Lb/a/a/a/o/d;->a(III)I

    move-result v0

    if-gez v0, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {p1, v5, v1}, Lb/a/a/a/o/d;->b(II)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v0, Lb/a/a/a/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status line contains invalid status code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3, v2}, Lb/a/a/a/o/d;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lb/a/a/a/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid status line: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3, v2}, Lb/a/a/a/o/d;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-ge v1, v2, :cond_2

    :try_start_2
    invoke-virtual {p1, v1, v2}, Lb/a/a/a/o/d;->b(II)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v4, v5, v0}, Lb/a/a/a/k/j;->a(Lb/a/a/a/ac;ILjava/lang/String;)Lb/a/a/a/af;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    new-instance v0, Lb/a/a/a/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Status line contains invalid status code: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3, v2}, Lb/a/a/a/o/d;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, ""
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :cond_3
    move v1, v0

    goto/16 :goto_0
.end method

.method protected d(Lb/a/a/a/o/d;Lb/a/a/a/k/u;)V
    .locals 3

    invoke-virtual {p2}, Lb/a/a/a/k/u;->b()I

    move-result v0

    invoke-virtual {p2}, Lb/a/a/a/k/u;->a()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lb/a/a/a/o/d;->a(I)C

    move-result v2

    invoke-static {v2}, Lb/a/a/a/n/d;->a(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lb/a/a/a/k/u;->a(I)V

    return-void
.end method
