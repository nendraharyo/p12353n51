.class public Lcom/sun/pdfview/decode/CCITTFaxDecode;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static decode(Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;
    .locals 3

    invoke-virtual {p1}, Lc/a/a/b/b;->c()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lc/a/a/b/b;->a([BII)V

    invoke-static {p0, v0}, Lcom/sun/pdfview/decode/CCITTFaxDecode;->decode(Lcom/sun/pdfview/PDFObject;[B)[B

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/b;->d([B)Lc/a/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method protected static decode(Lcom/sun/pdfview/PDFObject;[B)[B
    .locals 8

    const/4 v2, 0x0

    const/16 v0, 0x6c0

    const-string v1, "Width"

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "W"

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    :cond_1
    const-string v1, "Height"

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "H"

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v1

    :goto_0
    const-string v3, "Columns"

    invoke-static {p0, v3, v0}, Lcom/sun/pdfview/decode/CCITTFaxDecode;->getOptionFieldInt(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;I)I

    move-result v0

    const-string v3, "Rows"

    invoke-static {p0, v3, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecode;->getOptionFieldInt(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "K"

    invoke-static {p0, v3, v2}, Lcom/sun/pdfview/decode/CCITTFaxDecode;->getOptionFieldInt(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v4, v0, 0x7

    shr-int/lit8 v4, v4, 0x3

    mul-int/2addr v4, v1

    new-array v4, v4, [B

    const-string v5, "EncodedByteAlign"

    invoke-static {p0, v5, v2}, Lcom/sun/pdfview/decode/CCITTFaxDecode;->getOptionFieldBoolean(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;Z)Z

    move-result v5

    new-instance v6, Lcom/sun/pdfview/decode/CCITTFaxDecoder;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v0, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;-><init>(III)V

    invoke-virtual {v6, v5}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->setAlign(Z)V

    if-nez v3, :cond_5

    invoke-virtual {v6, v4, p1, v2, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeT41D([B[BII)V

    :cond_3
    :goto_1
    const-string v0, "BlackIs1"

    invoke-static {p0, v0, v2}, Lcom/sun/pdfview/decode/CCITTFaxDecode;->getOptionFieldBoolean(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    array-length v0, v4

    if-lt v2, v0, :cond_7

    :cond_4
    return-object v4

    :cond_5
    if-lez v3, :cond_6

    invoke-virtual {v6, v4, p1, v2, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeT42D([B[BII)V

    goto :goto_1

    :cond_6
    if-gez v3, :cond_3

    invoke-virtual {v6, v4, p1, v2, v1}, Lcom/sun/pdfview/decode/CCITTFaxDecoder;->decodeT6([B[BII)V

    goto :goto_1

    :cond_7
    aget-byte v0, v4, v2

    xor-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    aput-byte v0, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_0
.end method

.method public static getOptionFieldBoolean(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "DecodeParms"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getBooleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public static getOptionFieldInt(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;I)I
    .locals 1

    const-string v0, "DecodeParms"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result p2

    goto :goto_0
.end method
