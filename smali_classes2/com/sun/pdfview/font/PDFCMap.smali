.class public abstract Lcom/sun/pdfview/font/PDFCMap;
.super Ljava/lang/Object;


# static fields
.field private static cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/pdfview/font/PDFCMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCMap(Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/font/PDFCMap;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/pdfview/font/PDFCMap;->getCMap(Ljava/lang/String;)Lcom/sun/pdfview/font/PDFCMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/sun/pdfview/font/PDFCMap;->parseCMap(Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/font/PDFCMap;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CMap type not Name or Stream!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCMap(Ljava/lang/String;)Lcom/sun/pdfview/font/PDFCMap;
    .locals 3

    sget-object v0, Lcom/sun/pdfview/font/PDFCMap;->cache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sun/pdfview/font/PDFCMap;->populateCache()V

    :cond_0
    sget-object v0, Lcom/sun/pdfview/font/PDFCMap;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown CMap: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/sun/pdfview/font/PDFCMap;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/font/PDFCMap;

    return-object v0
.end method

.method protected static parseCMap(Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/font/PDFCMap;
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Parsing CMap Files Unsupported!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static populateCache()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/pdfview/font/PDFCMap;->cache:Ljava/util/HashMap;

    sget-object v0, Lcom/sun/pdfview/font/PDFCMap;->cache:Ljava/util/HashMap;

    const-string v1, "Identity-H"

    new-instance v2, Lcom/sun/pdfview/font/PDFCMap$1;

    invoke-direct {v2}, Lcom/sun/pdfview/font/PDFCMap$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getFontID(C)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract map(C)C
.end method
