.class public Lcom/sun/pdfview/font/ttf/CmapTable;
.super Lcom/sun/pdfview/font/ttf/TrueTypeTable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;
    }
.end annotation


# instance fields
.field private subtables:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;",
            "Lcom/sun/pdfview/font/ttf/CMap;",
            ">;"
        }
    .end annotation
.end field

.field private version:S


# direct methods
.method protected constructor <init>()V
    .locals 1

    const v0, 0x636d6170

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/CmapTable;->setVersion(S)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    return-void
.end method


# virtual methods
.method public addCMap(SSLcom/sun/pdfview/font/ttf/CMap;)V
    .locals 2

    new-instance v0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;-><init>(Lcom/sun/pdfview/font/ttf/CmapTable;SS)V

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v1, v0, p3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCMap(SS)Lcom/sun/pdfview/font/ttf/CMap;
    .locals 2

    new-instance v0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;-><init>(Lcom/sun/pdfview/font/ttf/CmapTable;SS)V

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CMap;

    return-object v0
.end method

.method public getCMaps()[Lcom/sun/pdfview/font/ttf/CMap;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/pdfview/font/ttf/CMap;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getData()Lc/a/a/b/b;
    .locals 6

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CmapTable;->getLength()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CmapTable;->getVersion()S

    move-result v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(S)V

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    int-to-short v0, v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(S)V

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Lc/a/a/b/b;->j()V

    return-object v3

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/pdfview/font/ttf/CMap;

    iget-short v5, v0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformID:S

    invoke-virtual {v3, v5}, Lc/a/a/b/b;->a(S)V

    iget-short v0, v0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformSpecificID:S

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v3, v2}, Lc/a/a/b/b;->f(I)V

    invoke-virtual {v1}, Lcom/sun/pdfview/font/ttf/CMap;->getLength()S

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CMap;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/CMap;->getData()Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(Lc/a/a/b/b;)V

    goto :goto_1
.end method

.method public getLength()I
    .locals 3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

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

    check-cast v0, Lcom/sun/pdfview/font/ttf/CMap;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/CMap;->getLength()S

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method public getNumberSubtables()S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getVersion()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->version:S

    return v0
.end method

.method public removeCMap(SS)V
    .locals 2

    new-instance v0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;-><init>(Lcom/sun/pdfview/font/ttf/CmapTable;SS)V

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 8

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/CmapTable;->setVersion(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v3

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v4

    invoke-virtual {p1}, Lc/a/a/b/b;->l()I

    move-result v0

    invoke-virtual {p1}, Lc/a/a/b/b;->p()V

    invoke-virtual {p1, v0}, Lc/a/a/b/b;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->d()Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {p1}, Lc/a/a/b/b;->q()V

    :try_start_0
    invoke-static {v0}, Lcom/sun/pdfview/font/ttf/CMap;->getMap(Lc/a/a/b/b;)Lcom/sun/pdfview/font/ttf/CMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3, v4, v0}, Lcom/sun/pdfview/font/ttf/CmapTable;->addCMap(SSLcom/sun/pdfview/font/ttf/CMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error reading map.  PlatformID="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", PlatformSpecificID="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Reason: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setVersion(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->version:S

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "    "

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "Version: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CmapTable;->getVersion()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NumMaps: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/CmapTable;->getNumberSubtables()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Map: platformID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, v0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformID:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " PlatformSpecificID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, v0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformSpecificID:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lcom/sun/pdfview/font/ttf/CmapTable;->subtables:Ljava/util/SortedMap;

    invoke-interface {v4, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/CMap;

    invoke-virtual {v0}, Lcom/sun/pdfview/font/ttf/CMap;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
