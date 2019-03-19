.class public Lcom/sun/pdfview/decode/FlateDecode;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/util/zip/Inflater;

    invoke-direct {v1, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-virtual {p1}, Lc/a/a/b/b;->c()I

    move-result v2

    const/4 v0, 0x0

    check-cast v0, [B

    invoke-virtual {p1}, Lc/a/a/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lc/a/a/b/b;->i()[B

    move-result-object v0

    invoke-virtual {p1}, Lc/a/a/b/b;->h()I

    move-result v3

    invoke-virtual {p1}, Lc/a/a/b/b;->a()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v0, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    invoke-virtual {p1}, Lc/a/a/b/b;->a()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lc/a/a/b/b;->a(I)V

    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v2, v2, [B

    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->finished()Z
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/b;->d([B)Lc/a/a/b/b;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "Predictor"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/sun/pdfview/decode/Predictor;->getPredictor(Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/decode/Predictor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/decode/Predictor;->unpredict(Lc/a/a/b/b;)Lc/a/a/b/b;

    move-result-object v0

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Lc/a/a/b/b;->a([B)V

    invoke-virtual {v1, v0}, Ljava/util/zip/Inflater;->setInput([B)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v3

    if-gtz v3, :cond_4

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Don\'t know how to ask for a dictionary in FlateDecode"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data format exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v0

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
