.class Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;
.super Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/font/ttf/PostTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostMapFormat2"
.end annotation


# instance fields
.field glyphNameIndex:[S

.field glyphNames:[Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/pdfview/font/ttf/PostTable;


# direct methods
.method constructor <init>(Lcom/sun/pdfview/font/ttf/PostTable;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->this$0:Lcom/sun/pdfview/font/ttf/PostTable;

    invoke-direct {p0, p1}, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat0;-><init>(Lcom/sun/pdfview/font/ttf/PostTable;)V

    return-void
.end method


# virtual methods
.method getCharIndex(Ljava/lang/String;)S
    .locals 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNames:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    move v0, v2

    :goto_1
    if-ne v0, v2, :cond_0

    invoke-super {p0, p1}, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat0;->getCharIndex(Ljava/lang/String;)S

    move-result v0

    :cond_0
    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNameIndex:[S

    array-length v3, v3

    if-lt v2, v3, :cond_3

    :goto_3
    return v1

    :cond_1
    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->stdNames:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v0, v3

    int-to-short v0, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNameIndex:[S

    aget-short v3, v3, v2

    if-ne v3, v0, :cond_4

    int-to-short v1, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method getCharName(C)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->stdNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNames:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->stdNames:[Ljava/lang/String;

    array-length v1, v1

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat0;->getCharName(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getData()Lc/a/a/b/b;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->getLength()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v2

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNameIndex:[S

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {v2, v0}, Lc/a/a/b/b;->a(S)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNameIndex:[S

    array-length v3, v3

    if-lt v0, v3, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    invoke-virtual {v2}, Lc/a/a/b/b;->j()V

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNameIndex:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Lc/a/a/b/b;->a(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Lc/a/a/b/b;->a(B)V

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lc/a/a/b/b;->c([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method getLength()I
    .locals 3

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNameIndex:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNames:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method setData(Lc/a/a/b/b;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v3

    new-array v0, v3, [S

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNameIndex:[S

    const/16 v0, 0x101

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_0

    add-int/lit16 v2, v0, -0x101

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNames:[Ljava/lang/String;

    move v0, v1

    :goto_1
    if-lt v0, v2, :cond_2

    return-void

    :cond_0
    iget-object v4, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNameIndex:[S

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v5

    aput-short v5, v4, v2

    iget-object v4, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNameIndex:[S

    aget-short v4, v4, v2

    if-le v4, v0, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNameIndex:[S

    aget-short v0, v0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Lc/a/a/b/b;->a([B)V

    iget-object v3, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;->glyphNames:[Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
