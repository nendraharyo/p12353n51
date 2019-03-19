.class public abstract Lcom/sun/pdfview/font/ttf/CMap;
.super Ljava/lang/Object;


# instance fields
.field private format:S

.field private language:S


# direct methods
.method protected constructor <init>(SS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/CMap;->format:S

    iput-short p2, p0, Lcom/sun/pdfview/font/ttf/CMap;->language:S

    return-void
.end method

.method public static createMap(SS)Lcom/sun/pdfview/font/ttf/CMap;
    .locals 3

    sparse-switch p0, :sswitch_data_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupport CMap format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/sun/pdfview/font/ttf/CMapFormat0;

    invoke-direct {v0, p1}, Lcom/sun/pdfview/font/ttf/CMapFormat0;-><init>(S)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/sun/pdfview/font/ttf/CMapFormat4;

    invoke-direct {v0, p1}, Lcom/sun/pdfview/font/ttf/CMapFormat4;-><init>(S)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/sun/pdfview/font/ttf/CMapFormat6;

    invoke-direct {v0, p1}, Lcom/sun/pdfview/font/ttf/CMapFormat6;-><init>(S)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMap(Lc/a/a/b/b;)Lcom/sun/pdfview/font/ttf/CMap;
    .locals 3

    invoke-virtual {p0}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0}, Lc/a/a/b/b;->o()S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-virtual {p0}, Lc/a/a/b/b;->f()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lc/a/a/b/b;->d(I)V

    invoke-virtual {p0}, Lc/a/a/b/b;->o()S

    move-result v1

    invoke-static {v0, v1}, Lcom/sun/pdfview/font/ttf/CMap;->createMap(SS)Lcom/sun/pdfview/font/ttf/CMap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lc/a/a/b/b;->f()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/sun/pdfview/font/ttf/CMap;->setData(ILc/a/a/b/b;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract getData()Lc/a/a/b/b;
.end method

.method public getFormat()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/CMap;->format:S

    return v0
.end method

.method public getLanguage()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/CMap;->language:S

    return v0
.end method

.method public abstract getLength()S
.end method

.method public abstract map(B)B
.end method

.method public abstract map(C)C
.end method

.method public abstract reverseMap(S)C
.end method

.method public abstract setData(ILc/a/a/b/b;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "        "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " format: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMap;->getFormat()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMap;->getLength()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " language: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CMap;->getLanguage()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
