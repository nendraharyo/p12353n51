.class public Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/pdfview/decrypt/PDFDecrypter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private decrypters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/pdfview/decrypt/PDFDecrypter;",
            ">;"
        }
    .end annotation
.end field

.field private defaultStreamDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;

.field private defaultStringDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/pdfview/decrypt/PDFDecrypter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->decrypters:Ljava/util/Map;

    sget-boolean v0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->decrypters:Ljava/util/Map;

    const-string v1, "Identity"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Crypt Filter map does not contain required Identity filter"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->decrypters:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/decrypt/PDFDecrypter;

    iput-object v0, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->defaultStreamDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->defaultStreamDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown crypt filter specified as default for streams: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->decrypters:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/decrypt/PDFDecrypter;

    iput-object v0, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->defaultStringDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->defaultStringDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown crypt filter specified as default for strings: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public decryptBuffer(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;)Lc/a/a/b/b;
    .locals 3

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->defaultStreamDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;

    :cond_0
    if-eqz p1, :cond_1

    move-object p2, v1

    :cond_1
    invoke-interface {v0, v1, p2, p3}, Lcom/sun/pdfview/decrypt/PDFDecrypter;->decryptBuffer(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;)Lc/a/a/b/b;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->decrypters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/decrypt/PDFDecrypter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown CryptFilter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decryptString(IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->defaultStringDecrypter:Lcom/sun/pdfview/decrypt/PDFDecrypter;

    invoke-interface {v0, p1, p2, p3}, Lcom/sun/pdfview/decrypt/PDFDecrypter;->decryptString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncryptionPresent()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->decrypters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

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

    check-cast v0, Lcom/sun/pdfview/decrypt/PDFDecrypter;

    invoke-interface {v0}, Lcom/sun/pdfview/decrypt/PDFDecrypter;->isEncryptionPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOwnerAuthorised()Z
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/CryptFilterDecrypter;->decrypters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

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

    check-cast v0, Lcom/sun/pdfview/decrypt/PDFDecrypter;

    invoke-interface {v0}, Lcom/sun/pdfview/decrypt/PDFDecrypter;->isOwnerAuthorised()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
