.class public Lcom/sun/pdfview/font/ttf/TrueTypeFont;
.super Ljava/lang/Object;


# instance fields
.field private tables:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->type:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->tables:Ljava/util/SortedMap;

    return-void
.end method

.method private static calculateChecksum(Ljava/lang/String;Lc/a/a/b/b;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lc/a/a/b/b;->p()V

    const-string v1, "head"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lc/a/a/b/b;->a(II)V

    :cond_0
    invoke-virtual {p1}, Lc/a/a/b/b;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    div-int/lit8 v2, v1, 0x4

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/b;->q()V

    return v0

    :cond_1
    invoke-virtual {p1}, Lc/a/a/b/b;->c()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v3

    add-int/2addr v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v0, v3

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lc/a/a/b/b;->b()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v0, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLength()I
    .locals 4

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getNumTables()S

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->tables:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->getLength()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    rem-int/lit8 v1, v0, 0x4

    rsub-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    check-cast v0, Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->c()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method private static parseDirectories(Lc/a/a/b/b;ILcom/sun/pdfview/font/ttf/TrueTypeFont;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lc/a/a/b/b;->l()I

    move-result v1

    invoke-static {v1}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lc/a/a/b/b;->l()I

    move-result v2

    invoke-virtual {p0}, Lc/a/a/b/b;->l()I

    move-result v3

    invoke-virtual {p0}, Lc/a/a/b/b;->l()I

    move-result v4

    invoke-virtual {p0}, Lc/a/a/b/b;->p()V

    invoke-virtual {p0, v3}, Lc/a/a/b/b;->a(I)V

    invoke-virtual {p0}, Lc/a/a/b/b;->d()Lc/a/a/b/b;

    move-result-object v3

    invoke-virtual {v3, v4}, Lc/a/a/b/b;->d(I)V

    invoke-static {v1, v3}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->calculateChecksum(Ljava/lang/String;Lc/a/a/b/b;)I

    move-result v4

    if-ne v4, v2, :cond_1

    invoke-virtual {p2, v1, v3}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->addTable(Ljava/lang/String;Lc/a/a/b/b;)V

    :goto_1
    invoke-virtual {p0}, Lc/a/a/b/b;->q()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1, v3}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->addTable(Ljava/lang/String;Lc/a/a/b/b;)V

    goto :goto_1
.end method

.method public static parseFont(Lc/a/a/b/b;)Lcom/sun/pdfview/font/ttf/TrueTypeFont;
    .locals 3

    invoke-virtual {p0}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p0}, Lc/a/a/b/b;->o()S

    move-result v1

    invoke-virtual {p0}, Lc/a/a/b/b;->o()S

    invoke-virtual {p0}, Lc/a/a/b/b;->o()S

    invoke-virtual {p0}, Lc/a/a/b/b;->o()S

    new-instance v2, Lcom/sun/pdfview/font/ttf/TrueTypeFont;

    invoke-direct {v2, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;-><init>(I)V

    invoke-static {p0, v1, v2}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->parseDirectories(Lc/a/a/b/b;ILcom/sun/pdfview/font/ttf/TrueTypeFont;)V

    return-object v2
.end method

.method public static parseFont([B)Lcom/sun/pdfview/font/ttf/TrueTypeFont;
    .locals 1

    invoke-static {p0}, Lc/a/a/b/b;->d([B)Lc/a/a/b/b;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->parseFont(Lc/a/a/b/b;)Lcom/sun/pdfview/font/ttf/TrueTypeFont;

    move-result-object v0

    return-object v0
.end method

.method private updateChecksumAdj(Lc/a/a/b/b;)V
    .locals 5

    const-string v0, ""

    invoke-static {v0, p1}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->calculateChecksum(Ljava/lang/String;Lc/a/a/b/b;)I

    move-result v0

    const v1, -0x4e4f5046

    sub-int v2, v1, v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getNumTables()S

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->tables:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "head"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v1, 0x8

    invoke-virtual {p1, v0, v2}, Lc/a/a/b/b;->a(II)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->tables:Ljava/util/SortedMap;

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    if-eqz v4, :cond_2

    check-cast v0, Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->getLength()I

    move-result v0

    add-int/2addr v0, v1

    :goto_2
    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    rem-int/lit8 v1, v0, 0x4

    rsub-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_2
    check-cast v0, Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->c()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_2

    :cond_3
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public addTable(Ljava/lang/String;Lc/a/a/b/b;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->tables:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTable(Ljava/lang/String;Lcom/sun/pdfview/font/ttf/TrueTypeTable;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->tables:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getEntrySelector()S
    .locals 6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getNumTables()S

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getNumTables()S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->tables:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getRangeShift()S
    .locals 6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getNumTables()S

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getSearchRange()S

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getSearchRange()S
    .locals 6

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getNumTables()S

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->tables:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lc/a/a/b/b;

    if-eqz v1, :cond_0

    check-cast v0, Lc/a/a/b/b;

    invoke-static {p0, p1, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->createTable(Lcom/sun/pdfview/font/ttf/TrueTypeFont;Ljava/lang/String;Lc/a/a/b/b;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->addTable(Ljava/lang/String;Lcom/sun/pdfview/font/ttf/TrueTypeTable;)V

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->type:I

    return v0
.end method

.method public removeTable(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->tables:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type         : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NumTables    : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getNumTables()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SearchRange  : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getSearchRange()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EntrySelector: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getEntrySelector()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RangeShift   : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getRangeShift()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->tables:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lc/a/a/b/b;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getTable(Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    :goto_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    goto :goto_1
.end method

.method public writeFont()[B
    .locals 7

    invoke-direct {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getLength()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getNumTables()S

    move-result v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getSearchRange()S

    move-result v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getEntrySelector()S

    move-result v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getRangeShift()S

    move-result v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->getNumTables()S

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0xc

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->tables:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3, v2}, Lc/a/a/b/b;->a(I)V

    invoke-virtual {v3}, Lc/a/a/b/b;->j()V

    invoke-direct {p0, v3}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->updateChecksumAdj(Lc/a/a/b/b;)V

    invoke-virtual {v3}, Lc/a/a/b/b;->i()[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->stringToTag(Ljava/lang/String;)I

    move-result v5

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->tables:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    if-eqz v6, :cond_1

    check-cast v1, Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    invoke-virtual {v1}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->getData()Lc/a/a/b/b;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lc/a/a/b/b;->c()I

    move-result v6

    invoke-virtual {v3, v5}, Lc/a/a/b/b;->f(I)V

    invoke-static {v0, v1}, Lcom/sun/pdfview/font/ttf/TrueTypeFont;->calculateChecksum(Ljava/lang/String;Lc/a/a/b/b;)I

    move-result v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {v3, v2}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {v3, v6}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {v3}, Lc/a/a/b/b;->p()V

    invoke-virtual {v3, v2}, Lc/a/a/b/b;->a(I)V

    invoke-virtual {v3, v1}, Lc/a/a/b/b;->a(Lc/a/a/b/b;)V

    invoke-virtual {v1}, Lc/a/a/b/b;->j()V

    invoke-virtual {v3}, Lc/a/a/b/b;->q()V

    add-int v0, v2, v6

    :goto_2
    rem-int/lit8 v1, v0, 0x4

    if-gtz v1, :cond_2

    move v2, v0

    goto :goto_0

    :cond_1
    check-cast v1, Lc/a/a/b/b;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
