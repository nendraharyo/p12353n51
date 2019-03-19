.class public Lcom/sun/pdfview/decode/PDFDecoder;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeStream(Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;)Lc/a/a/b/b;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "Filter"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getDecrypter()Lcom/sun/pdfview/decrypt/PDFDecrypter;

    move-result-object v0

    invoke-interface {v0, v6, p0, p1}, Lcom/sun/pdfview/decrypt/PDFDecrypter;->decryptBuffer(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;)Lc/a/a/b/b;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v1

    if-ne v1, v7, :cond_5

    new-array v1, v3, [Lcom/sun/pdfview/PDFObject;

    aput-object v0, v1, v2

    new-array v0, v3, [Lcom/sun/pdfview/PDFObject;

    const-string v4, "DecodeParms"

    invoke-virtual {p0, v4}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    aput-object v4, v0, v2

    :goto_0
    array-length v4, v1

    if-eqz v4, :cond_7

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Crypt"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_1
    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getDecrypter()Lcom/sun/pdfview/decrypt/PDFDecrypter;

    move-result-object v3

    invoke-interface {v3, v6, p0, p1}, Lcom/sun/pdfview/decrypt/PDFDecrypter;->decryptBuffer(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;)Lc/a/a/b/b;

    move-result-object p1

    :cond_2
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "FlateDecode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "Fl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_3
    aget-object v3, v0, v2

    invoke-static {p0, p1, v3}, Lcom/sun/pdfview/decode/FlateDecode;->decode(Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;

    move-result-object p1

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    const-string v0, "DecodeParms"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    goto :goto_0

    :cond_6
    array-length v0, v1

    new-array v0, v0, [Lcom/sun/pdfview/PDFObject;

    goto :goto_0

    :cond_7
    move v3, v2

    goto :goto_1

    :cond_8
    const-string v4, "LZWDecode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "LZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    aget-object v3, v0, v2

    invoke-static {p1, v3}, Lcom/sun/pdfview/decode/LZWDecode;->decode(Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;

    move-result-object p1

    goto :goto_3

    :cond_a
    const-string v4, "ASCII85Decode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "A85"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    aget-object v3, v0, v2

    invoke-static {p1, v3}, Lcom/sun/pdfview/decode/ASCII85Decode;->decode(Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;

    move-result-object p1

    goto :goto_3

    :cond_c
    const-string v4, "ASCIIHexDecode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "AHx"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    aget-object v3, v0, v2

    invoke-static {p1, v3}, Lcom/sun/pdfview/decode/ASCIIHexDecode;->decode(Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;

    move-result-object p1

    goto :goto_3

    :cond_e
    const-string v4, "RunLengthDecode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "RL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    aget-object v3, v0, v2

    invoke-static {p1, v3}, Lcom/sun/pdfview/decode/RunLengthDecode;->decode(Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;

    move-result-object p1

    goto :goto_3

    :cond_10
    const-string v4, "DCTDecode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string v4, "DCT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    aget-object v3, v0, v2

    invoke-static {p0, p1, v3}, Lcom/sun/pdfview/decode/DCTDecode;->decode(Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;

    move-result-object p1

    goto/16 :goto_3

    :cond_12
    const-string v4, "CCITTFaxDecode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "CCF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_13
    aget-object v3, v0, v2

    invoke-static {p0, p1, v3}, Lcom/sun/pdfview/decode/CCITTFaxDecode;->decode(Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;

    move-result-object p1

    goto/16 :goto_3

    :cond_14
    const-string v4, "Crypt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "Identity"

    aget-object v4, v0, v2

    if-eqz v4, :cond_15

    aget-object v4, v0, v2

    const-string v5, "Name"

    invoke-virtual {v4, v5}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v5

    if-ne v5, v7, :cond_15

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v3

    :cond_15
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getDecrypter()Lcom/sun/pdfview/decrypt/PDFDecrypter;

    move-result-object v4

    invoke-interface {v4, v3, v6, p1}, Lcom/sun/pdfview/decrypt/PDFDecrypter;->decryptBuffer(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;)Lc/a/a/b/b;

    move-result-object p1

    goto/16 :goto_3

    :cond_16
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown coding method:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
