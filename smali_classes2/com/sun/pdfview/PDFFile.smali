.class public Lcom/sun/pdfview/PDFFile;
.super Ljava/lang/Object;


# static fields
.field public static final FF_CHAR:I = 0xc

.field public static final NUL_CHAR:I = 0x0

.field private static final VERSION_COMMENT:Ljava/lang/String; = "%PDF-"


# instance fields
.field buf:Lc/a/a/b/b;

.field cache:Lcom/sun/pdfview/Cache;

.field private defaultDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;

.field encrypt:Lcom/sun/pdfview/PDFObject;

.field info:Lcom/sun/pdfview/PDFObject;

.field private majorVersion:I

.field private minorVersion:I

.field objIdx:[Lcom/sun/pdfview/PDFXref;

.field private printable:Z

.field root:Lcom/sun/pdfview/PDFObject;

.field private saveable:Z

.field private versionString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc/a/a/b/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/pdfview/PDFFile;-><init>(Lc/a/a/b/b;Lcom/sun/pdfview/decrypt/PDFPassword;)V

    return-void
.end method

.method public constructor <init>(Lc/a/a/b/b;Lcom/sun/pdfview/decrypt/PDFPassword;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.1"

    iput-object v0, p0, Lcom/sun/pdfview/PDFFile;->versionString:Ljava/lang/String;

    iput v1, p0, Lcom/sun/pdfview/PDFFile;->majorVersion:I

    iput v1, p0, Lcom/sun/pdfview/PDFFile;->minorVersion:I

    iput-object v2, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    iput-object v2, p0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    iput-object v2, p0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    iput-boolean v1, p0, Lcom/sun/pdfview/PDFFile;->printable:Z

    iput-boolean v1, p0, Lcom/sun/pdfview/PDFFile;->saveable:Z

    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/PDFFile;->defaultDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;

    iput-object p1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    new-instance v0, Lcom/sun/pdfview/Cache;

    invoke-direct {v0}, Lcom/sun/pdfview/Cache;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFFile;->cache:Lcom/sun/pdfview/Cache;

    invoke-direct {p0, p2}, Lcom/sun/pdfview/PDFFile;->parseFile(Lcom/sun/pdfview/decrypt/PDFPassword;)V

    return-void
.end method

.method private createPage(ILcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/PDFPage;
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v0, "MediaBox"

    invoke-direct {p0, p2, v0}, Lcom/sun/pdfview/PDFFile;->getInheritedValue(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFFile;->parseRect(Lcom/sun/pdfview/PDFObject;)Landroid/graphics/RectF;

    move-result-object v0

    :goto_0
    const-string v3, "CropBox"

    invoke-direct {p0, p2, v3}, Lcom/sun/pdfview/PDFFile;->getInheritedValue(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/sun/pdfview/PDFFile;->parseRect(Lcom/sun/pdfview/PDFObject;)Landroid/graphics/RectF;

    move-result-object v1

    :cond_0
    const-string v3, "Rotate"

    invoke-direct {p0, p2, v3}, Lcom/sun/pdfview/PDFFile;->getInheritedValue(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v2

    :cond_1
    if-nez v1, :cond_2

    :goto_1
    new-instance v1, Lcom/sun/pdfview/PDFPage;

    iget-object v3, p0, Lcom/sun/pdfview/PDFFile;->cache:Lcom/sun/pdfview/Cache;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/sun/pdfview/PDFPage;-><init>(ILandroid/graphics/RectF;ILcom/sun/pdfview/Cache;)V

    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private findPage(Lcom/sun/pdfview/PDFObject;IILjava/util/Map;)Lcom/sun/pdfview/PDFObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/pdfview/PDFObject;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/pdfview/PDFObject;",
            ">;)",
            "Lcom/sun/pdfview/PDFObject;"
        }
    .end annotation

    const-string v0, "Resources"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v0, "Type"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p1

    :cond_1
    const-string v0, "Kids"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    array-length v1, v2

    if-lt v0, v1, :cond_3

    :cond_2
    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    aget-object v3, v2, v0

    const-string v4, "Count"

    invoke-virtual {v3, v4}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v1

    :cond_4
    add-int v3, p2, v1

    if-lt v3, p3, :cond_5

    aget-object v0, v2, v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/sun/pdfview/PDFFile;->findPage(Lcom/sun/pdfview/PDFObject;IILjava/util/Map;)Lcom/sun/pdfview/PDFObject;

    move-result-object p1

    goto :goto_0

    :cond_5
    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getContents(Lcom/sun/pdfview/PDFObject;)[B
    .locals 7

    const/4 v1, 0x0

    const-string v0, "Contents"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No page contents!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    array-length v0, v4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget-object v0, v4, v1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, v4

    if-lt v0, v3, :cond_2

    new-array v3, v2, [B

    move v0, v1

    move v2, v1

    :goto_2
    array-length v5, v4

    if-lt v0, v5, :cond_4

    move-object v0, v3

    goto :goto_0

    :cond_2
    aget-object v3, v4, v0

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v3

    if-nez v3, :cond_3

    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No stream on content "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v4, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    array-length v3, v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aget-object v5, v4, v0

    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private getInheritedValue(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;
    .locals 1

    invoke-virtual {p1, p2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Parent"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/sun/pdfview/PDFFile;->getInheritedValue(Lcom/sun/pdfview/PDFObject;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDelimiter(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x5b -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public static isRegularCharacter(I)Z
    .locals 1

    invoke-static {p0}, Lcom/sun/pdfview/PDFFile;->isWhiteSpace(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sun/pdfview/PDFFile;->isDelimiter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isWhiteSpace(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private nextItemIs(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->b()B

    move-result v0

    invoke-static {v0}, Lcom/sun/pdfview/PDFFile;->isWhiteSpace(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v2}, Lc/a/a/b/b;->b()B

    move-result v2

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private parseFile(Lcom/sun/pdfview/decrypt/PDFPassword;)V
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x20

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->e()V

    invoke-direct {p0}, Lcom/sun/pdfview/PDFFile;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%PDF-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "%PDF-"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sun/pdfview/PDFFile;->processVersion(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->e()V

    new-array v3, v6, [B

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->c()I

    move-result v1

    array-length v2, v3

    sub-int v2, v1, v2

    move v1, v0

    :goto_0
    if-gez v2, :cond_2

    :cond_1
    move v0, v1

    move v1, v2

    :goto_1
    if-gez v1, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "This may not be a PDF File"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1, v2}, Lc/a/a/b/b;->a(I)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1, v3}, Lc/a/a/b/b;->a([B)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const-string v4, "startxref"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    add-int v4, v2, v1

    array-length v5, v3

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v5}, Lc/a/a/b/b;->f()I

    move-result v5

    if-gt v4, v5, :cond_1

    add-int/2addr v1, v2

    goto :goto_1

    :cond_3
    array-length v4, v3

    add-int/lit8 v4, v4, -0xa

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v2, v1}, Lc/a/a/b/b;->a(I)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1, v3}, Lc/a/a/b/b;->a([B)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ge v1, v6, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_7

    move v1, v0

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-le v3, v4, :cond_8

    :cond_6
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1, v0}, Lc/a/a/b/b;->a(I)V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/pdfview/PDFFile;->readTrailer(Lcom/sun/pdfview/decrypt/PDFPassword;)V
    :try_end_0
    .catch Lcom/sun/pdfview/decrypt/UnsupportedEncryptionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    invoke-virtual {v0}, Lcom/sun/pdfview/decrypt/UnsupportedEncryptionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processVersion(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sun/pdfview/PDFFile;->majorVersion:I

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/PDFFile;->minorVersion:I

    iput-object p1, p0, Lcom/sun/pdfview/PDFFile;->versionString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private readArray(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/pdfview/PDFFile;->readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->b()B

    move-result v0

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Array should end with \']\'"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Lcom/sun/pdfview/PDFObject;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    array-length v0, v3

    if-lt v1, v0, :cond_2

    new-instance v0, Lcom/sun/pdfview/PDFObject;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1, v3}, Lcom/sun/pdfview/PDFObject;-><init>(Lcom/sun/pdfview/PDFFile;ILjava/lang/Object;)V

    return-object v0

    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private readDictionary(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/pdfview/PDFFile;->readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ">>"

    invoke-direct {p0, v1}, Lcom/sun/pdfview/PDFFile;->nextItemIs(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "End of dictionary wasn\'t \'>>\'"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "First item in dictionary must be a /Name.  (Was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/pdfview/PDFFile;->readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/sun/pdfview/PDFObject;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2, v0}, Lcom/sun/pdfview/PDFObject;-><init>(Lcom/sun/pdfview/PDFFile;ILjava/lang/Object;)V

    return-object v1
.end method

.method private readHexDigit()I
    .locals 2

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->b()B

    move-result v0

    invoke-static {v0}, Lcom/sun/pdfview/PDFFile;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    add-int/lit8 v0, v0, -0x30

    goto :goto_0

    :sswitch_1
    add-int/lit8 v0, v0, -0x57

    goto :goto_0

    :sswitch_2
    add-int/lit8 v0, v0, -0x37

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private readHexPair()I
    .locals 3

    invoke-direct {p0}, Lcom/sun/pdfview/PDFFile;->readHexDigit()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(I)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sun/pdfview/PDFFile;->readHexDigit()I

    move-result v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    iget-object v2, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v2}, Lc/a/a/b/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lc/a/a/b/b;->a(I)V

    shl-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    shl-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private readHexString(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0}, Lcom/sun/pdfview/PDFFile;->readHexPair()I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->b()B

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Bad character in Hex String"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sun/pdfview/PDFObject;

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, p2, v0}, Lcom/sun/pdfview/decrypt/PDFDecrypter;->decryptString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/sun/pdfview/PDFObject;-><init>(Lcom/sun/pdfview/PDFFile;ILjava/lang/Object;)V

    return-object v1
.end method

.method private readKeyword(C)Lcom/sun/pdfview/PDFObject;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->b()B

    move-result v1

    invoke-static {v1}, Lcom/sun/pdfview/PDFFile;->isRegularCharacter(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    iget-object v2, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v2}, Lc/a/a/b/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lc/a/a/b/b;->a(I)V

    new-instance v1, Lcom/sun/pdfview/PDFObject;

    const/16 v2, 0x9

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lcom/sun/pdfview/PDFObject;-><init>(Lcom/sun/pdfview/PDFFile;ILjava/lang/Object;)V

    return-object v1

    :cond_0
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private readLine()Ljava/lang/String;
    .locals 4

    const/16 v3, 0xa

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->c()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->b()B

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->c()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    iget-object v2, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v2}, Lc/a/a/b/b;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lc/a/a/b/b;->b(I)B

    move-result v1

    int-to-char v1, v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->b()B

    goto :goto_1

    :cond_2
    if-eq v1, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private readLiteralString(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;
    .locals 11

    const/16 v3, 0xd

    const/4 v10, 0x3

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v2, 0xa

    const/4 v0, 0x1

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    :goto_1
    new-instance v0, Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p1, p2, v1}, Lcom/sun/pdfview/decrypt/PDFDecrypter;->decryptString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v10, v1}, Lcom/sun/pdfview/PDFObject;-><init>(Lcom/sun/pdfview/PDFFile;ILjava/lang/Object;)V

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->b()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v6, 0x28

    if-ne v1, v6, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_2
    if-ltz v1, :cond_0

    int-to-char v1, v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const/16 v6, 0x29

    if-ne v1, v6, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_4
    const/16 v6, 0x5c

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->b()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/16 v6, 0x30

    if-lt v1, v6, :cond_7

    const/16 v6, 0x38

    if-ge v1, v6, :cond_7

    move v6, v5

    move v7, v1

    move v1, v5

    :goto_3
    const/16 v9, 0x30

    if-lt v7, v9, :cond_5

    const/16 v9, 0x38

    if-ge v7, v9, :cond_5

    if-lt v6, v10, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    iget-object v7, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v7}, Lc/a/a/b/b;->a()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lc/a/a/b/b;->a(I)V

    goto :goto_2

    :cond_6
    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x30

    iget-object v7, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v7}, Lc/a/a/b/b;->b()B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    const/16 v6, 0x6e

    if-ne v1, v6, :cond_8

    move v1, v2

    goto :goto_2

    :cond_8
    const/16 v6, 0x72

    if-ne v1, v6, :cond_9

    move v1, v3

    goto :goto_2

    :cond_9
    const/16 v6, 0x74

    if-ne v1, v6, :cond_a

    const/16 v1, 0x9

    goto :goto_2

    :cond_a
    const/16 v6, 0x62

    if-ne v1, v6, :cond_b

    const/16 v1, 0x8

    goto :goto_2

    :cond_b
    const/16 v6, 0x66

    if-ne v1, v6, :cond_c

    const/16 v1, 0xc

    goto :goto_2

    :cond_c
    if-ne v1, v3, :cond_e

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->b()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eq v1, v2, :cond_d

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    iget-object v6, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v6}, Lc/a/a/b/b;->a()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v6}, Lc/a/a/b/b;->a(I)V

    :cond_d
    move v1, v4

    goto/16 :goto_2

    :cond_e
    if-ne v1, v2, :cond_2

    move v1, v4

    goto/16 :goto_2
.end method

.method private readName()Lcom/sun/pdfview/PDFObject;
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->b()B

    move-result v0

    invoke-static {v0}, Lcom/sun/pdfview/PDFFile;->isRegularCharacter(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    iget-object v2, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v2}, Lc/a/a/b/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lc/a/a/b/b;->a(I)V

    new-instance v0, Lcom/sun/pdfview/PDFObject;

    const/4 v2, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1}, Lcom/sun/pdfview/PDFObject;-><init>(Lcom/sun/pdfview/PDFFile;ILjava/lang/Object;)V

    return-object v0

    :cond_1
    const/16 v2, 0x21

    if-ge v0, v2, :cond_2

    const/16 v2, 0x7e

    if-gt v0, v2, :cond_0

    :cond_2
    const/16 v2, 0x23

    if-ne v0, v2, :cond_3

    iget v2, p0, Lcom/sun/pdfview/PDFFile;->majorVersion:I

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/sun/pdfview/PDFFile;->minorVersion:I

    if-eq v2, v3, :cond_3

    invoke-direct {p0}, Lcom/sun/pdfview/PDFFile;->readHexPair()I

    move-result v0

    if-ltz v0, :cond_4

    :cond_3
    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Bad #hex in /Name"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readNum([BII)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v0, p3, :cond_0

    return v1

    :cond_0
    shl-int/lit8 v1, v1, 0x8

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readNumber(C)Lcom/sun/pdfview/PDFObject;
    .locals 14

    const/16 v13, 0x30

    const/16 v12, 0x2e

    const/4 v7, 0x1

    const/4 v0, 0x0

    const-wide v4, 0x3fb999999999999aL    # 0.1

    const/16 v1, 0x2d

    if-ne p1, v1, :cond_1

    move v8, v7

    :goto_0
    if-ne p1, v12, :cond_2

    move v6, v7

    :goto_1
    if-eqz v6, :cond_3

    move-wide v2, v4

    :goto_2
    if-lt p1, v13, :cond_0

    const/16 v1, 0x39

    if-gt p1, v1, :cond_0

    add-int/lit8 v0, p1, -0x30

    :cond_0
    int-to-double v0, v0

    :goto_3
    iget-object v9, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v9}, Lc/a/a/b/b;->b()B

    move-result v9

    if-ne v9, v12, :cond_5

    if-eqz v6, :cond_4

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Can\'t have two \'.\' in a number"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v8, v0

    goto :goto_0

    :cond_2
    move v6, v0

    goto :goto_1

    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_4
    move-wide v2, v4

    move v6, v7

    goto :goto_3

    :cond_5
    if-lt v9, v13, :cond_7

    const/16 v10, 0x39

    if-gt v9, v10, :cond_7

    add-int/lit8 v9, v9, -0x30

    if-eqz v6, :cond_6

    int-to-double v10, v9

    mul-double/2addr v10, v2

    add-double/2addr v0, v10

    mul-double/2addr v2, v4

    goto :goto_3

    :cond_6
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v10

    int-to-double v10, v9

    add-double/2addr v0, v10

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    iget-object v3, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v3}, Lc/a/a/b/b;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lc/a/a/b/b;->a(I)V

    if-eqz v8, :cond_8

    neg-double v0, v0

    :cond_8
    new-instance v2, Lcom/sun/pdfview/PDFObject;

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Double;

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v2, p0, v3, v4}, Lcom/sun/pdfview/PDFObject;-><init>(Lcom/sun/pdfview/PDFFile;ILjava/lang/Object;)V

    return-object v2
.end method

.method private readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sun/pdfview/PDFFile;->readObject(IIZLcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    return-object v0
.end method

.method private readObject(IIZLcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;
    .locals 10

    const/16 v9, 0x3c

    const/16 v8, 0x9

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->b()B

    move-result v1

    invoke-static {v1}, Lcom/sun/pdfview/PDFFile;->isWhiteSpace(I)Z

    move-result v2

    if-nez v2, :cond_1

    if-ne v1, v9, :cond_3

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->b()B

    move-result v0

    if-ne v0, v9, :cond_2

    invoke-direct {p0, p1, p2, p4}, Lcom/sun/pdfview/PDFFile;->readDictionary(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lc/a/a/b/b;->a(I)V

    invoke-direct {p0, p1, p2, p4}, Lcom/sun/pdfview/PDFFile;->readHexString(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v2, 0x28

    if-ne v1, v2, :cond_4

    invoke-direct {p0, p1, p2, p4}, Lcom/sun/pdfview/PDFFile;->readLiteralString(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_5

    invoke-direct {p0, p1, p2, p4}, Lcom/sun/pdfview/PDFFile;->readArray(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v2, 0x2f

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lcom/sun/pdfview/PDFFile;->readName()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/16 v2, 0x25

    if-ne v1, v2, :cond_7

    invoke-direct {p0}, Lcom/sun/pdfview/PDFFile;->readLine()Ljava/lang/String;

    goto :goto_0

    :cond_7
    const/16 v2, 0x30

    if-lt v1, v2, :cond_8

    const/16 v2, 0x39

    if-le v1, v2, :cond_9

    :cond_8
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_9

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_9

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_d

    :cond_9
    int-to-char v0, v1

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFFile;->readNumber(C)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->a()I

    move-result v1

    invoke-direct {p0, v6, v6, v7, p4}, Lcom/sun/pdfview/PDFFile;->readObject(IIZLcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    invoke-direct {p0, v6, v6, v7, p4}, Lcom/sun/pdfview/PDFFile;->readObject(IIZLcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v4

    if-ne v4, v8, :cond_a

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "R"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-instance v1, Lcom/sun/pdfview/PDFXref;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/sun/pdfview/PDFXref;-><init>(II)V

    new-instance v0, Lcom/sun/pdfview/PDFObject;

    invoke-direct {v0, p0, v1}, Lcom/sun/pdfview/PDFObject;-><init>(Lcom/sun/pdfview/PDFFile;Lcom/sun/pdfview/PDFXref;)V

    goto/16 :goto_0

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v4

    if-ne v4, v8, :cond_b

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "obj"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v1

    invoke-direct {p0, v0, v1, p4}, Lcom/sun/pdfview/PDFFile;->readObjectDescription(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v2, v1}, Lc/a/a/b/b;->a(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v2, v1}, Lc/a/a/b/b;->a(I)V

    goto/16 :goto_0

    :cond_d
    const/16 v2, 0x61

    if-lt v1, v2, :cond_e

    const/16 v2, 0x7a

    if-le v1, v2, :cond_f

    :cond_e
    const/16 v2, 0x41

    if-lt v1, v2, :cond_10

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_10

    :cond_f
    int-to-char v0, v1

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFFile;->readKeyword(C)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    iget-object v2, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v2}, Lc/a/a/b/b;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lc/a/a/b/b;->a(I)V

    goto/16 :goto_1
.end method

.method private readObjectDescription(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;
    .locals 6

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->a()I

    move-result v0

    int-to-long v2, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/pdfview/PDFFile;->readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/pdfview/PDFFile;->readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v4

    const/16 v5, 0x9

    if-eq v4, v5, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Expected \'stream\' or \'endobj\'"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "stream"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/sun/pdfview/PDFFile;->readLine()Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sun/pdfview/PDFFile;->readStream(Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFObject;->setStream(Lc/a/a/b/b;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/pdfview/PDFFile;->readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "endobj"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WARNING: object at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " didn\'t end with \'endobj\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, p1, p2}, Lcom/sun/pdfview/PDFObject;->setObjectId(II)V

    return-object v1
.end method

.method private readStream(Lcom/sun/pdfview/PDFObject;)Lc/a/a/b/b;
    .locals 6

    const-string v0, "Length"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Unknown length for stream"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1}, Lc/a/a/b/b;->a()I

    move-result v1

    iget-object v2, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v2}, Lc/a/a/b/b;->d()Lc/a/a/b/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc/a/a/b/b;->d(I)V

    iget-object v3, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    iget-object v4, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v4}, Lc/a/a/b/b;->a()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lc/a/a/b/b;->a(I)V

    iget-object v3, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v3}, Lc/a/a/b/b;->a()I

    move-result v3

    const-string v4, "endstream"

    invoke-direct {p0, v4}, Lcom/sun/pdfview/PDFFile;->nextItemIs(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "read "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " chars from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Stream ended inappropriately"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v2
.end method

.method private readTrailer(Lcom/sun/pdfview/decrypt/PDFPassword;)V
    .locals 13

    const/4 v1, 0x0

    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v11, -0x1

    const/16 v0, 0x32

    new-array v0, v0, [Lcom/sun/pdfview/PDFXref;

    iput-object v0, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->a()I

    move-result v6

    move-object v0, v1

    :cond_0
    :goto_0
    const-string v4, "xref"

    invoke-direct {p0, v4}, Lcom/sun/pdfview/PDFFile;->nextItemIs(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v0, v6}, Lc/a/a/b/b;->a(I)V

    invoke-direct {p0, p1}, Lcom/sun/pdfview/PDFFile;->readTrailer15(Lcom/sun/pdfview/decrypt/PDFPassword;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v7

    invoke-direct {p0}, Lcom/sun/pdfview/PDFFile;->readLine()Ljava/lang/String;

    add-int v4, v5, v7

    iget-object v8, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    array-length v8, v8

    if-lt v4, v8, :cond_2

    add-int v4, v5, v7

    new-array v4, v4, [Lcom/sun/pdfview/PDFXref;

    iget-object v8, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    iget-object v9, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    array-length v9, v9

    invoke-static {v8, v3, v4, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    :cond_2
    move v4, v5

    :goto_2
    add-int v8, v5, v7

    if-lt v4, v8, :cond_6

    :cond_3
    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v4

    invoke-direct {p0, v11, v11, v4}, Lcom/sun/pdfview/PDFFile;->readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v5

    const/16 v7, 0x9

    if-ne v5, v7, :cond_4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v5

    const-string v7, "trailer"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v4

    invoke-direct {p0, v11, v11, v4}, Lcom/sun/pdfview/PDFFile;->readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v5

    const/4 v7, 0x6

    if-eq v5, v7, :cond_9

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Expected dictionary after \"trailer\""

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v5

    if-eq v5, v12, :cond_5

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Expected number for first xref entry"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v5

    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v4

    invoke-direct {p0, v11, v11, v4}, Lcom/sun/pdfview/PDFFile;->readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v7

    if-eq v7, v12, :cond_1

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Expected number for length of xref table"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v8, 0x14

    new-array v8, v8, [B

    iget-object v9, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v9, v8}, Lc/a/a/b/b;->a([B)V

    iget-object v9, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    aget-object v9, v9, v4

    if-eqz v9, :cond_7

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const/16 v9, 0x11

    aget-byte v9, v8, v9

    const/16 v10, 0x6e

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    new-instance v10, Lcom/sun/pdfview/PDFXref;

    invoke-direct {v10, v8}, Lcom/sun/pdfview/PDFXref;-><init>([B)V

    aput-object v10, v9, v4

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    new-instance v9, Lcom/sun/pdfview/PDFXref;

    invoke-direct {v9, v1}, Lcom/sun/pdfview/PDFXref;-><init>([B)V

    aput-object v9, v8, v4

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    if-nez v5, :cond_a

    const-string v5, "Root"

    invoke-virtual {v4, v5}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    iget-object v5, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v5, v11, v11}, Lcom/sun/pdfview/PDFObject;->setObjectId(II)V

    :cond_a
    iget-object v5, p0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    if-nez v5, :cond_c

    const-string v0, "Encrypt"

    invoke-virtual {v4, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v0, v11, v11}, Lcom/sun/pdfview/PDFObject;->setObjectId(II)V

    :cond_b
    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    const-string v5, "ID"

    invoke-virtual {v4, v5}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v5

    invoke-static {v0, v5, p1}, Lcom/sun/pdfview/decrypt/PDFDecrypterFactory;->createDecryptor(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/decrypt/PDFPassword;)Lcom/sun/pdfview/decrypt/PDFDecrypter;

    move-result-object v0

    :cond_c
    iget-object v5, p0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    if-nez v5, :cond_e

    const-string v5, "Info"

    invoke-virtual {v4, v5}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v5

    iput-object v5, p0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    iget-object v5, p0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->isIndirect()Z

    move-result v5

    if-nez v5, :cond_d

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Info in trailer must be an indirect reference"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v5, p0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v5, v11, v11}, Lcom/sun/pdfview/PDFObject;->setObjectId(II)V

    :cond_e
    const-string v5, "XRefStm"

    invoke-virtual {v4, v5}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v5

    if-eqz v5, :cond_f

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "XRefStm:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v7}, Lc/a/a/b/b;->a()I

    move-result v7

    iget-object v8, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v5

    invoke-virtual {v8, v5}, Lc/a/a/b/b;->a(I)V

    invoke-direct {p0, p1}, Lcom/sun/pdfview/PDFFile;->readTrailer15(Lcom/sun/pdfview/decrypt/PDFPassword;)V

    iget-object v5, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v5, v7}, Lc/a/a/b/b;->a(I)V

    :cond_f
    const-string v5, "Prev"

    invoke-virtual {v4, v5}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    if-eqz v4, :cond_10

    iget-object v5, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lc/a/a/b/b;->a(I)V

    iget-object v4, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    const-string v5, "Version"

    invoke-virtual {v4, v5}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    const-string v5, "Version"

    invoke-virtual {v4, v5}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/pdfview/PDFFile;->processVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    if-nez v1, :cond_11

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "No /Root key found in trailer dictionary"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    const-string v4, "P"

    invoke-virtual {v1, v4}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-interface {v0}, Lcom/sun/pdfview/decrypt/PDFDecrypter;->isOwnerAuthorised()Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v1

    move v4, v1

    :goto_4
    if-eqz v5, :cond_12

    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_15

    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/sun/pdfview/PDFFile;->printable:Z

    and-int/lit8 v1, v4, 0x10

    if-eqz v1, :cond_16

    :goto_6
    iput-boolean v2, p0, Lcom/sun/pdfview/PDFFile;->saveable:Z

    :cond_12
    iput-object v0, p0, Lcom/sun/pdfview/PDFFile;->defaultDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;

    :cond_13
    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    goto/16 :goto_1

    :cond_14
    move v4, v3

    goto :goto_4

    :cond_15
    move v1, v3

    goto :goto_5

    :cond_16
    move v2, v3

    goto :goto_6
.end method

.method private readTrailer15(Lcom/sun/pdfview/decrypt/PDFPassword;)V
    .locals 22

    const/4 v5, 0x0

    :cond_0
    :goto_0
    const/4 v4, -0x1

    const/4 v6, -0x1

    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/sun/pdfview/PDFFile;->readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v4

    const-string v6, "W"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v6}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v11

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v6}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v12

    const/4 v6, 0x2

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v13

    add-int v4, v11, v12

    add-int v6, v4, v13

    invoke-virtual {v10}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v4

    const-string v7, "Size"

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v7

    invoke-virtual {v10}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v14

    array-length v4, v14

    div-int/2addr v4, v6

    const/4 v8, 0x0

    invoke-virtual {v10}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v4

    const-string v6, "Index"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/pdfview/PDFObject;

    if-nez v4, :cond_4

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v6, 0x1

    aput v7, v4, v6

    :goto_1
    array-length v15, v4

    const/4 v6, 0x0

    move v7, v6

    move v6, v8

    :goto_2
    if-lt v7, v15, :cond_6

    invoke-virtual {v10}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    if-nez v4, :cond_1

    const-string v4, "Root"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/pdfview/PDFObject;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Lcom/sun/pdfview/PDFObject;->setObjectId(II)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    if-nez v4, :cond_3

    const-string v4, "Encrypt"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/pdfview/PDFObject;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    const/4 v5, -0x1

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v7}, Lcom/sun/pdfview/PDFObject;->setObjectId(II)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    const-string v4, "ID"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/pdfview/PDFObject;

    move-object/from16 v0, p1

    invoke-static {v5, v4, v0}, Lcom/sun/pdfview/decrypt/PDFDecrypterFactory;->createDecryptor(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/decrypt/PDFPassword;)Lcom/sun/pdfview/decrypt/PDFDecrypter;

    move-result-object v4

    move-object v5, v4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    if-nez v4, :cond_d

    const-string v4, "Info"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/pdfview/PDFObject;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->isIndirect()Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Lcom/sun/pdfview/PDFParseException;

    const-string v5, "Info in trailer must be an indirect reference"

    invoke-direct {v4, v5}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v7

    array-length v4, v7

    new-array v6, v4, [I

    const/4 v4, 0x0

    :goto_3
    array-length v9, v7

    if-lt v4, v9, :cond_5

    move-object v4, v6

    goto/16 :goto_1

    :cond_5
    aget-object v9, v7, v4

    invoke-virtual {v9}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v9

    aput v9, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v7, 0x1

    aget v7, v4, v7

    add-int/lit8 v9, v8, 0x1

    aget v16, v4, v8

    add-int v8, v7, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_7

    add-int v8, v7, v16

    new-array v8, v8, [Lcom/sun/pdfview/PDFXref;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    :cond_7
    move v8, v6

    move v6, v7

    :goto_4
    add-int v17, v7, v16

    move/from16 v0, v17

    if-lt v6, v0, :cond_8

    move v7, v9

    move v6, v8

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v11}, Lcom/sun/pdfview/PDFFile;->readNum([BII)I

    move-result v17

    add-int/2addr v8, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v12}, Lcom/sun/pdfview/PDFFile;->readNum([BII)I

    move-result v18

    add-int/2addr v8, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8, v13}, Lcom/sun/pdfview/PDFFile;->readNum([BII)I

    move-result v19

    add-int/2addr v8, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    move-object/from16 v20, v0

    aget-object v20, v20, v6

    if-eqz v20, :cond_9

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    move-object/from16 v17, v0

    new-instance v18, Lcom/sun/pdfview/PDFXref;

    const/16 v19, 0x0

    invoke-direct/range {v18 .. v19}, Lcom/sun/pdfview/PDFXref;-><init>([B)V

    aput-object v18, v17, v6

    goto :goto_5

    :cond_a
    const/16 v20, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    move-object/from16 v17, v0

    new-instance v20, Lcom/sun/pdfview/PDFXref;

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sun/pdfview/PDFXref;-><init>(II)V

    aput-object v20, v17, v6

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    move-object/from16 v17, v0

    new-instance v20, Lcom/sun/pdfview/PDFXref;

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/pdfview/PDFXref;-><init>(IIZ)V

    aput-object v20, v17, v6

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Lcom/sun/pdfview/PDFObject;->setObjectId(II)V

    :cond_d
    const-string v4, "Prev"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/pdfview/PDFObject;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v4

    invoke-virtual {v6, v4}, Lc/a/a/b/b;->a(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    const-string v6, "Version"

    invoke-virtual {v4, v6}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    const-string v6, "Version"

    invoke-virtual {v4, v6}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sun/pdfview/PDFFile;->processVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    if-nez v4, :cond_f

    new-instance v4, Lcom/sun/pdfview/PDFParseException;

    const-string v5, "No /Root key found in trailer dictionary"

    invoke-direct {v4, v5}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->encrypt:Lcom/sun/pdfview/PDFObject;

    const-string v6, "P"

    invoke-virtual {v4, v6}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Lcom/sun/pdfview/decrypt/PDFDecrypter;->isOwnerAuthorised()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v4

    move v6, v4

    :goto_6
    if-eqz v7, :cond_10

    and-int/lit8 v4, v6, 0x4

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sun/pdfview/PDFFile;->printable:Z

    and-int/lit8 v4, v6, 0x10

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sun/pdfview/PDFFile;->saveable:Z

    :cond_10
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sun/pdfview/PDFFile;->defaultDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    return-void

    :cond_12
    const/4 v4, 0x0

    move v6, v4

    goto :goto_6

    :cond_13
    const/4 v4, 0x0

    goto :goto_7

    :cond_14
    const/4 v4, 0x0

    goto :goto_8
.end method


# virtual methods
.method public declared-synchronized dereference(Lcom/sun/pdfview/PDFXref;Lcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;
    .locals 10

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sun/pdfview/PDFXref;->getID()I

    move-result v2

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    aget-object v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/sun/pdfview/PDFObject;->nullObj:Lcom/sun/pdfview/PDFObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFXref;->getObject()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->a()I

    move-result v3

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFXref;->getCompressed()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFXref;->getFilePos()I

    move-result v0

    if-gez v0, :cond_3

    sget-object v0, Lcom/sun/pdfview/PDFObject;->nullObj:Lcom/sun/pdfview/PDFObject;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1, v0}, Lc/a/a/b/b;->a(I)V

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFXref;->getID()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFXref;->getGeneration()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/sun/pdfview/PDFFile;->readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    sget-object v0, Lcom/sun/pdfview/PDFObject;->nullObj:Lcom/sun/pdfview/PDFObject;

    :cond_4
    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFXref;->setObject(Lcom/sun/pdfview/PDFObject;)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    invoke-virtual {v1, v3}, Lc/a/a/b/b;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFXref;->getID()I

    move-result v0

    iget-object v4, p0, Lcom/sun/pdfview/PDFFile;->objIdx:[Lcom/sun/pdfview/PDFXref;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFXref;->getIndex()I

    move-result v4

    if-gez v4, :cond_6

    sget-object v0, Lcom/sun/pdfview/PDFObject;->nullObj:Lcom/sun/pdfview/PDFObject;

    goto :goto_0

    :cond_6
    new-instance v5, Lcom/sun/pdfview/PDFXref;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/sun/pdfview/PDFXref;-><init>(II)V

    invoke-virtual {p0, v5, p2}, Lcom/sun/pdfview/PDFFile;->dereference(Lcom/sun/pdfview/PDFXref;Lcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v6, "First"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v6

    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v7, "Length"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    const-string v7, "N"

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    if-lt v4, v0, :cond_7

    sget-object v0, Lcom/sun/pdfview/PDFObject;->nullObj:Lcom/sun/pdfview/PDFObject;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->getStreamBuffer()Lc/a/a/b/b;

    move-result-object v0

    iget-object v5, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    iput-object v0, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    move v0, v1

    :goto_2
    if-lt v0, v4, :cond_8

    const/4 v0, -0x1

    const/4 v1, -0x1

    const/4 v4, 0x1

    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v7

    invoke-direct {p0, v0, v1, v4, v7}, Lcom/sun/pdfview/PDFFile;->readObject(IIZLcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v4, -0x1

    const/4 v7, 0x1

    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v8

    invoke-direct {p0, v1, v4, v7, v8}, Lcom/sun/pdfview/PDFFile;->readObject(IIZLcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v1

    if-eq v0, v2, :cond_9

    sget-object v0, Lcom/sun/pdfview/PDFObject;->nullObj:Lcom/sun/pdfview/PDFObject;

    goto/16 :goto_0

    :cond_8
    const/4 v1, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v9

    invoke-direct {p0, v1, v7, v8, v9}, Lcom/sun/pdfview/PDFFile;->readObject(IIZLcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    const/4 v1, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v9

    invoke-direct {p0, v1, v7, v8, v9}, Lcom/sun/pdfview/PDFFile;->readObject(IIZLcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;

    add-int/2addr v1, v6

    invoke-virtual {v4, v1}, Lc/a/a/b/b;->a(I)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v4

    invoke-direct {p0, v0, v1, v4}, Lcom/sun/pdfview/PDFFile;->readObject(IILcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    iput-object v5, p0, Lcom/sun/pdfview/PDFFile;->buf:Lc/a/a/b/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public getDefaultDecrypter()Lcom/sun/pdfview/decrypt/PDFDecrypter;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->defaultDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFFile;->majorVersion:I

    return v0
.end method

.method public getMetadataKeys()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getDictKeys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFFile;->minorVersion:I

    return v0
.end method

.method public getNumPages()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    const-string v1, "Pages"

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    const-string v1, "Count"

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutline()Lcom/sun/pdfview/OutlineNode;
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    const-string v1, "Outlines"

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "First"

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    new-instance v3, Lcom/sun/pdfview/OutlineNode;

    const-string v0, "<top>"

    invoke-direct {v3, v0}, Lcom/sun/pdfview/OutlineNode;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    if-nez v1, :cond_0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "Title"

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getTextStringValue()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/sun/pdfview/OutlineNode;

    invoke-direct {v5, v0}, Lcom/sun/pdfview/OutlineNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/sun/pdfview/OutlineNode;->add(La/a/a;)V

    const-string v0, "A"

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFFile;->getRoot()Lcom/sun/pdfview/PDFObject;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sun/pdfview/action/PDFAction;->getAction(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/action/PDFAction;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v5, v0}, Lcom/sun/pdfview/OutlineNode;->setAction(Lcom/sun/pdfview/action/PDFAction;)V

    :cond_1
    const-string v0, "First"

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    move-object v2, v5

    goto :goto_0

    :cond_2
    const-string v0, "Dest"

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFFile;->getRoot()Lcom/sun/pdfview/PDFObject;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sun/pdfview/PDFDestination;->getDestination(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/PDFDestination;

    move-result-object v6

    new-instance v0, Lcom/sun/pdfview/action/GoToAction;

    invoke-direct {v0, v6}, Lcom/sun/pdfview/action/GoToAction;-><init>(Lcom/sun/pdfview/PDFDestination;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_2

    :cond_3
    const-string v0, "Next"

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_4

    move-object v1, v2

    :goto_4
    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_4
    const-string v0, "Parent"

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v5

    const-string v0, "Next"

    invoke-virtual {v5, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    invoke-virtual {v2}, Lcom/sun/pdfview/OutlineNode;->getParent()La/a/a;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/OutlineNode;

    if-nez v0, :cond_5

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :cond_5
    move-object v2, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3

    :cond_6
    move-object v0, v4

    goto :goto_2

    :cond_7
    move-object v0, v4

    goto :goto_1
.end method

.method public getPage(I)Lcom/sun/pdfview/PDFPage;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/pdfview/PDFFile;->getPage(IZ)Lcom/sun/pdfview/PDFPage;

    move-result-object v0

    return-object v0
.end method

.method public getPage(IZ)Lcom/sun/pdfview/PDFPage;
    .locals 6

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->cache:Lcom/sun/pdfview/Cache;

    invoke-virtual {v1, v3}, Lcom/sun/pdfview/Cache;->getPage(Ljava/lang/Integer;)Lcom/sun/pdfview/PDFPage;

    move-result-object v2

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->cache:Lcom/sun/pdfview/Cache;

    invoke-virtual {v1, v3}, Lcom/sun/pdfview/Cache;->getPageParser(Ljava/lang/Integer;)Lcom/sun/pdfview/PDFParser;

    move-result-object v1

    if-nez v2, :cond_2

    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    const-string v2, "Pages"

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1, v4}, Lcom/sun/pdfview/PDFFile;->findPage(Lcom/sun/pdfview/PDFObject;IILjava/util/Map;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/sun/pdfview/PDFFile;->createPage(ILcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/PDFPage;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/sun/pdfview/PDFFile;->getContents(Lcom/sun/pdfview/PDFObject;)[B

    move-result-object v5

    new-instance v1, Lcom/sun/pdfview/PDFParser;

    invoke-direct {v1, v2, v5, v4}, Lcom/sun/pdfview/PDFParser;-><init>(Lcom/sun/pdfview/PDFPage;[BLjava/util/HashMap;)V

    iget-object v4, p0, Lcom/sun/pdfview/PDFFile;->cache:Lcom/sun/pdfview/Cache;

    invoke-virtual {v4, v3, v2, v1}, Lcom/sun/pdfview/Cache;->addPage(Ljava/lang/Integer;Lcom/sun/pdfview/PDFPage;Lcom/sun/pdfview/PDFParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFParser;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p2}, Lcom/sun/pdfview/PDFParser;->go(Z)V

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "GetPage inner loop:"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public getPageNumber(Lcom/sun/pdfview/PDFObject;)I
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object p1

    :cond_0
    const-string v0, "Type"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Page"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v0, v1

    :goto_0
    const-string v2, "Parent"

    invoke-virtual {p1, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "Kids"

    invoke-virtual {v2, v3}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v5

    move v3, v1

    :goto_1
    array-length v4, v5

    if-lt v3, v4, :cond_5

    :cond_4
    move-object p1, v2

    goto :goto_0

    :cond_5
    aget-object v4, v5, v3

    invoke-virtual {v4, p1}, Lcom/sun/pdfview/PDFObject;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    aget-object v4, v5, v3

    const-string v6, "Count"

    invoke-virtual {v4, v6}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v4

    add-int/2addr v4, v0

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v0, 0x1

    goto :goto_2
.end method

.method public getRoot()Lcom/sun/pdfview/PDFObject;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->root:Lcom/sun/pdfview/PDFObject;

    return-object v0
.end method

.method public getStringMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/pdfview/PDFFile;->info:Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v1, p1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getTextStringValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVersionString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->versionString:Ljava/lang/String;

    return-object v0
.end method

.method public isPrintable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/pdfview/PDFFile;->printable:Z

    return v0
.end method

.method public isSaveable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/pdfview/PDFFile;->saveable:Z

    return v0
.end method

.method public parseRect(Lcom/sun/pdfview/PDFObject;)Landroid/graphics/RectF;
    .locals 6

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v4

    const/4 v5, 0x3

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Rectangle definition didn\'t have 4 elements"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Rectangle definition not an array"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop(I)V
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFFile;->cache:Lcom/sun/pdfview/Cache;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/Cache;->getPageParser(Ljava/lang/Integer;)Lcom/sun/pdfview/PDFParser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFParser;->stop()V

    :cond_0
    return-void
.end method
