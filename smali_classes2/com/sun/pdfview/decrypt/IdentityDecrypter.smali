.class public Lcom/sun/pdfview/decrypt/IdentityDecrypter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/pdfview/decrypt/PDFDecrypter;


# static fields
.field private static INSTANCE:Lcom/sun/pdfview/decrypt/IdentityDecrypter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    invoke-direct {v0}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;-><init>()V

    sput-object v0, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->INSTANCE:Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;
    .locals 1

    sget-object v0, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->INSTANCE:Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    return-object v0
.end method


# virtual methods
.method public decryptBuffer(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;)Lc/a/a/b/b;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "This Encryption version does not support Crypt filters"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p3
.end method

.method public decryptString(IILjava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p3
.end method

.method public isEncryptionPresent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOwnerAuthorised()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
