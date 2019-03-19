.class public Lcom/sun/pdfview/decrypt/PDFDecrypterFactory;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CF_IDENTITY:Ljava/lang/String; = "Identity"

.field private static final DEFAULT_KEY_LENGTH:I = 0x28


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sun/pdfview/decrypt/PDFDecrypterFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/pdfview/decrypt/PDFDecrypterFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createCryptFilterDecrypter(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/decrypt/PDFPassword;I)Lcom/sun/pdfview/decrypt/PDFDecrypter;
    .locals 10

    const/4 v4, 0x1

    sget-boolean v0, Lcom/sun/pdfview/decrypt/PDFDecrypterFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ge p3, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "crypt filter decrypter not supported for standard encryption prior to version 4"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    const-string v0, "EncryptMetadata"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getBooleanValue()Z

    move-result v4

    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "CF"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "No CF value present in Encrypt dict for V4 encryption"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v8}, Lcom/sun/pdfview/PDFObject;->getDictKeys()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Identity"

    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "StmF"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "StrF"

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;

    invoke-direct {v2, v7, v0, v1}, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    const-string v1, "Length"

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    const-string v1, "CFM"

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    :goto_4
    const-string v1, "None"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v0

    :goto_5
    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    const-string v0, "None"

    goto :goto_4

    :cond_6
    const-string v1, "V2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v5, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->RC4:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/pdfview/decrypt/PDFDecrypterFactory;->createStandardDecrypter(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/decrypt/PDFPassword;Ljava/lang/Integer;ZLcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;)Lcom/sun/pdfview/decrypt/PDFDecrypter;

    move-result-object v0

    goto :goto_5

    :cond_7
    const-string v1, "AESV2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v5, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->AESV2:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sun/pdfview/decrypt/PDFDecrypterFactory;->createStandardDecrypter(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/decrypt/PDFPassword;Ljava/lang/Integer;ZLcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;)Lcom/sun/pdfview/decrypt/PDFDecrypter;

    move-result-object v0

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown CryptFilter method: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const-string v0, "Identity"

    goto/16 :goto_1

    :cond_a
    const-string v1, "Identity"

    goto/16 :goto_2
.end method

.method public static createDecryptor(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/decrypt/PDFPassword;)Lcom/sun/pdfview/decrypt/PDFDecrypter;
    .locals 6

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/sun/pdfview/decrypt/PDFPassword;->nonNullPassword(Lcom/sun/pdfview/decrypt/PDFPassword;)Lcom/sun/pdfview/decrypt/PDFPassword;

    move-result-object v2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Filter"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "Standard"

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "V"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    :goto_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :cond_1
    const-string v0, "Length"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    sget-object v5, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->RC4:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sun/pdfview/decrypt/PDFDecrypterFactory;->createStandardDecrypter(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/decrypt/PDFPassword;Ljava/lang/Integer;ZLcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;)Lcom/sun/pdfview/decrypt/PDFDecrypter;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    invoke-static {p0, p1, v2, v0}, Lcom/sun/pdfview/decrypt/PDFDecrypterFactory;->createCryptFilterDecrypter(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/decrypt/PDFPassword;I)Lcom/sun/pdfview/decrypt/PDFDecrypter;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v1, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported encryption version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "No Filter specified in Encrypt dictionary"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v1, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported encryption Filter: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; only Standard is supported."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createStandardDecrypter(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/decrypt/PDFPassword;Ljava/lang/Integer;ZLcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;)Lcom/sun/pdfview/decrypt/PDFDecrypter;
    .locals 10

    const/16 v1, 0x20

    if-nez p3, :cond_0

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_0
    const-string v0, "R"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "No R entry present in Encrypt dictionary"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v4

    const/4 v0, 0x2

    if-lt v4, v0, :cond_2

    const/4 v0, 0x4

    if-le v4, v0, :cond_3

    :cond_2
    new-instance v0, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported Standard security handler revision; R="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "O"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "No O entry present in Encrypt dictionary"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v5

    array-length v0, v5

    if-eq v0, v1, :cond_5

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected owner key O value of 32 bytes; found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const-string v0, "U"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "No U entry present in Encrypt dictionary"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v6

    array-length v0, v6

    if-eq v0, v1, :cond_7

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected user key U value of 32 bytes; found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string v0, "P"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Required P entry in Encrypt dictionary not found"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Lcom/sun/pdfview/decrypt/StandardDecrypter;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v7

    move-object v1, p5

    move-object v2, p1

    move v8, p4

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/sun/pdfview/decrypt/StandardDecrypter;-><init>(Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;Lcom/sun/pdfview/PDFObject;II[B[BIZLcom/sun/pdfview/decrypt/PDFPassword;)V

    return-object v0
.end method
