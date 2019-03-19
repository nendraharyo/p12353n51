.class public Lcom/sun/pdfview/font/ttf/NameTable;
.super Lcom/sun/pdfview/font/ttf/TrueTypeTable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;
    }
.end annotation


# static fields
.field public static final ENCODINGID_MAC_ROMAN:S = 0x0s

.field public static final ENCODINGID_UNICODE_DEFAULT:S = 0x0s

.field public static final ENCODINGID_UNICODE_V11:S = 0x1s

.field public static final ENCODINGID_UNICODE_V2:S = 0x3s

.field public static final LANGUAGEID_MAC_ENGLISH:S = 0x0s

.field public static final NAMEID_COPYRIGHT:S = 0x0s

.field public static final NAMEID_FAMILY:S = 0x1s

.field public static final NAMEID_FULL_NAME:S = 0x4s

.field public static final NAMEID_POSTSCRIPT_NAME:S = 0x6s

.field public static final NAMEID_SUBFAMILY:S = 0x2s

.field public static final NAMEID_SUBFAMILY_UNIQUE:S = 0x3s

.field public static final NAMEID_TRADEMARK:S = 0x7s

.field public static final NAMEID_VERSION:S = 0x5s

.field public static final PLATFORMID_MACINTOSH:S = 0x1s

.field public static final PLATFORMID_MICROSOFT:S = 0x3s

.field public static final PLATFORMID_UNICODE:S


# instance fields
.field private format:S

.field private records:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const v0, 0x6e616d65

    invoke-direct {p0, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;-><init>(I)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

    return-void
.end method

.method public static getCharsetName(II)Ljava/lang/String;
    .locals 1

    const-string v0, "US-ASCII"

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string v0, "UTF-16"

    goto :goto_0

    :pswitch_2
    const-string v0, "UTF-16"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addRecord(SSSSLjava/lang/String;)V
    .locals 6

    new-instance v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;-><init>(Lcom/sun/pdfview/font/ttf/NameTable;SSSS)V

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

    invoke-interface {v1, v0, p5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCount()S
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public getData()Lc/a/a/b/b;
    .locals 8

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/NameTable;->getLength()I

    move-result v0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/NameTable;->getCount()S

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x6

    int-to-short v4, v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/NameTable;->getFormat()S

    move-result v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/NameTable;->getCount()S

    move-result v0

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v3, v4}, Lc/a/a/b/b;->a(S)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    add-int v0, v4, v2

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(I)V

    invoke-virtual {v3}, Lc/a/a/b/b;->j()V

    return-object v3

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-short v6, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformID:S

    iget-short v7, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformSpecificID:S

    invoke-static {v6, v7}, Lcom/sun/pdfview/font/ttf/NameTable;->getCharsetName(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lc/a/a/b/b;->a(Ljava/nio/ByteBuffer;)Lc/a/a/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lc/a/a/b/b;->c()I

    move-result v6

    const v7, 0xffff

    and-int/2addr v6, v7

    int-to-short v6, v6

    iget-short v7, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformID:S

    invoke-virtual {v3, v7}, Lc/a/a/b/b;->a(S)V

    iget-short v7, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformSpecificID:S

    invoke-virtual {v3, v7}, Lc/a/a/b/b;->a(S)V

    iget-short v7, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->languageID:S

    invoke-virtual {v3, v7}, Lc/a/a/b/b;->a(S)V

    iget-short v0, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->nameID:S

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v3, v6}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v3, v2}, Lc/a/a/b/b;->a(S)V

    invoke-virtual {v3}, Lc/a/a/b/b;->p()V

    add-int v0, v4, v2

    invoke-virtual {v3, v0}, Lc/a/a/b/b;->a(I)V

    invoke-virtual {v3, v1}, Lc/a/a/b/b;->a(Lc/a/a/b/b;)V

    invoke-virtual {v3}, Lc/a/a/b/b;->q()V

    add-int v0, v2, v6

    int-to-short v0, v0

    move v2, v0

    goto :goto_0
.end method

.method public getFormat()S
    .locals 1

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/NameTable;->format:S

    return v0
.end method

.method public getLength()I
    .locals 5

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/NameTable;->getCount()S

    move-result v0

    mul-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-short v4, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformID:S

    iget-short v0, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformSpecificID:S

    invoke-static {v4, v0}, Lcom/sun/pdfview/font/ttf/NameTable;->getCharsetName(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/b;->a(Ljava/nio/ByteBuffer;)Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/b/b;->c()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0
.end method

.method public getRecord(SSSS)Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;-><init>(Lcom/sun/pdfview/font/ttf/NameTable;SSSS)V

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasRecords(S)Z
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;

    iget-short v0, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformID:S

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasRecords(SS)Z
    .locals 3

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;

    iget-short v2, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformID:S

    if-ne v2, p1, :cond_0

    iget-short v0, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformSpecificID:S

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeRecord(SSSS)V
    .locals 6

    new-instance v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;-><init>(Lcom/sun/pdfview/font/ttf/NameTable;SSSS)V

    iget-object v1, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 10

    const v9, 0xffff

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/font/ttf/NameTable;->setFormat(S)V

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v7

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v8

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-lt v6, v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v1

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v2

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v3

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v4

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v0

    and-int/2addr v0, v9

    invoke-virtual {p1}, Lc/a/a/b/b;->o()S

    move-result v5

    and-int/2addr v5, v9

    invoke-virtual {p1}, Lc/a/a/b/b;->p()V

    add-int/2addr v5, v8

    invoke-virtual {p1, v5}, Lc/a/a/b/b;->a(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->d()Lc/a/a/b/b;

    move-result-object v5

    invoke-virtual {v5, v0}, Lc/a/a/b/b;->d(I)V

    invoke-virtual {p1}, Lc/a/a/b/b;->q()V

    invoke-static {v1, v2}, Lcom/sun/pdfview/font/ttf/NameTable;->getCharsetName(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v5}, Lc/a/a/b/b;->r()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sun/pdfview/font/ttf/NameTable;->addRecord(SSSSLjava/lang/String;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method public setFormat(S)V
    .locals 0

    iput-short p1, p0, Lcom/sun/pdfview/font/ttf/NameTable;->format:S

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

    const-string v3, "Format: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/NameTable;->getFormat()S

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

    const-string v3, "Count : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/NameTable;->getCount()S

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

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

    check-cast v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " platformID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-short v5, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformID:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " platformSpecificID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v5, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformSpecificID:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " languageID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v5, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->languageID:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " nameID: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v5, v0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->nameID:S

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/pdfview/font/ttf/NameTable;->records:Ljava/util/SortedMap;

    invoke-interface {v5, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method
