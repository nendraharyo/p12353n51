.class public Lcom/sun/pdfview/font/ttf/PostTable;
.super Lcom/sun/pdfview/font/ttf/TrueTypeTable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/font/ttf/PostTable$PostMap;,
        Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat0;,
        Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;
    }
.end annotation


# instance fields
.field private format:I

.field private isFixedPitch:S

.field private italicAngle:I

.field private maxMemType1:I

.field private maxMemType42:I

.field private minMemType1:I

.field private minMemType42:I

.field private nameMap:Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

.field private underlinePosition:S

.field private underlineThickness:S


# direct methods
.method protected constructor <init>()V
    .locals 1

    const v0, 0x706f7374

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;-><init>(I)V

    new-instance v0, Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/font/ttf/PostTable$PostMap;-><init>(Lcom/sun/pdfview/font/ttf/PostTable;)V

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->nameMap:Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    return-void
.end method


# virtual methods
.method public getData()Lc/a/a/b/b;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/PostTable;->getLength()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/PostTable;->getFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/PostTable;->getItalicAngle()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/PostTable;->getUnderlinePosition()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/PostTable;->getUnderlineThickness()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/PostTable;->getIsFixedPitch()S

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/PostTable;->getMinMemType42()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/PostTable;->getMaxMemType42()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/PostTable;->getMinMemType1()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/PostTable;->getMaxMemType1()I

    move-result v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->f(I)V

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/PostTable;->nameMap:Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    invoke-virtual {v1}, Lcom/sun/pdfview/font/ttf/PostTable$PostMap;->getData()Lc/a/a/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(Lc/a/a/b/b;)V

    invoke-virtual {v0}, Lc/a/a/b/b;->j()V

    return-object v0
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->format:I

    return v0
.end method

.method public getGlyphName(C)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->nameMap:Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    invoke-virtual {v0, p1}, Lcom/sun/pdfview/font/ttf/PostTable$PostMap;->getCharName(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlyphNameIndex(Ljava/lang/String;)S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->nameMap:Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    invoke-virtual {v0, p1}, Lcom/sun/pdfview/font/ttf/PostTable$PostMap;->getCharIndex(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public getIsFixedPitch()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->isFixedPitch:S

    return v0
.end method

.method public getItalicAngle()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->italicAngle:I

    return v0
.end method

.method public getLength()I
    .locals 2

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/PostTable;->nameMap:Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/PostTable;->nameMap:Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    invoke-virtual {v1}, Lcom/sun/pdfview/font/ttf/PostTable$PostMap;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getMaxMemType1()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->maxMemType1:I

    return v0
.end method

.method public getMaxMemType42()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->maxMemType42:I

    return v0
.end method

.method public getMinMemType1()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->minMemType1:I

    return v0
.end method

.method public getMinMemType42()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->minMemType42:I

    return v0
.end method

.method public getUnderlinePosition()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->underlinePosition:S

    return v0
.end method

.method public getUnderlineThickness()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->underlineThickness:S

    return v0
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 3

    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/PostTable;->setFormat(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/PostTable;->setItalicAngle(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/PostTable;->setUnderlinePosition(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/PostTable;->setUnderlineThickness(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/PostTable;->setIsFixedPitch(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/PostTable;->setMinMemType42(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/PostTable;->setMaxMemType42(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/PostTable;->setMinMemType1(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/PostTable;->setMaxMemType1(I)V

    iget v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->format:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/font/ttf/PostTable$PostMap;-><init>(Lcom/sun/pdfview/font/ttf/PostTable;)V

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->nameMap:Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown post map type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/pdfview/font/ttf/PostTable;->format:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->nameMap:Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    invoke-virtual {v0, p1}, Lcom/sun/pdfview/font/ttf/PostTable$PostMap;->setData(Lc/a/a/b/b;)V

    return-void

    :sswitch_0
    new-instance v0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat0;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat0;-><init>(Lcom/sun/pdfview/font/ttf/PostTable;)V

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->nameMap:Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/font/ttf/PostTable$PostMapFormat2;-><init>(Lcom/sun/pdfview/font/ttf/PostTable;)V

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->nameMap:Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/font/ttf/PostTable$PostMap;-><init>(Lcom/sun/pdfview/font/ttf/PostTable;)V

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/PostTable;->nameMap:Lcom/sun/pdfview/font/ttf/PostTable$PostMap;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_2
    .end sparse-switch
.end method

.method public setFormat(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/PostTable;->format:I

    return-void
.end method

.method public setIsFixedPitch(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/PostTable;->isFixedPitch:S

    return-void
.end method

.method public setItalicAngle(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/PostTable;->italicAngle:I

    return-void
.end method

.method public setMaxMemType1(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/PostTable;->maxMemType1:I

    return-void
.end method

.method public setMaxMemType42(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/PostTable;->maxMemType42:I

    return-void
.end method

.method public setMinMemType1(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/PostTable;->minMemType1:I

    return-void
.end method

.method public setMinMemType42(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/ttf/PostTable;->minMemType42:I

    return-void
.end method

.method public setUnderlinePosition(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/PostTable;->underlinePosition:S

    return-void
.end method

.method public setUnderlineThickness(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/PostTable;->underlineThickness:S

    return-void
.end method
