.class public Lcom/sun/pdfview/decrypt/PDFPassword;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/decrypt/PDFPassword$CharsetEncoderGenerator;,
        Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;,
        Lcom/sun/pdfview/decrypt/PDFPassword$PDFDocEncodingByteGenerator;,
        Lcom/sun/pdfview/decrypt/PDFPassword$PasswordByteGenerator;
    }
.end annotation


# static fields
.field public static final EMPTY_PASSWORD:Lcom/sun/pdfview/decrypt/PDFPassword;

.field private static final PASSWORD_BYTE_GENERATORS:[Lcom/sun/pdfview/decrypt/PDFPassword$PasswordByteGenerator;


# instance fields
.field private passwordBytes:[B

.field private passwordString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x3f

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/sun/pdfview/decrypt/PDFPassword;

    new-array v1, v5, [B

    invoke-direct {v0, v1}, Lcom/sun/pdfview/decrypt/PDFPassword;-><init>([B)V

    sput-object v0, Lcom/sun/pdfview/decrypt/PDFPassword;->EMPTY_PASSWORD:Lcom/sun/pdfview/decrypt/PDFPassword;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sun/pdfview/decrypt/PDFPassword$PasswordByteGenerator;

    new-instance v1, Lcom/sun/pdfview/decrypt/PDFPassword$PDFDocEncodingByteGenerator;

    invoke-direct {v1, v4, v4}, Lcom/sun/pdfview/decrypt/PDFPassword$PDFDocEncodingByteGenerator;-><init>(Ljava/lang/Byte;Lcom/sun/pdfview/decrypt/PDFPassword$PDFDocEncodingByteGenerator;)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lcom/sun/pdfview/decrypt/PDFPassword$PDFDocEncodingByteGenerator;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/sun/pdfview/decrypt/PDFPassword$PDFDocEncodingByteGenerator;-><init>(Ljava/lang/Byte;Lcom/sun/pdfview/decrypt/PDFPassword$PDFDocEncodingByteGenerator;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/sun/pdfview/decrypt/PDFPassword$PDFDocEncodingByteGenerator;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/sun/pdfview/decrypt/PDFPassword$PDFDocEncodingByteGenerator;-><init>(Ljava/lang/Byte;Lcom/sun/pdfview/decrypt/PDFPassword$PDFDocEncodingByteGenerator;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/sun/pdfview/decrypt/PDFPassword$1;

    invoke-direct {v2}, Lcom/sun/pdfview/decrypt/PDFPassword$1;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;

    invoke-direct {v2, v4, v4}, Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;-><init>(Ljava/lang/Byte;Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;-><init>(Ljava/lang/Byte;Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;-><init>(Ljava/lang/Byte;Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/decrypt/PDFPassword;->PASSWORD_BYTE_GENERATORS:[Lcom/sun/pdfview/decrypt/PDFPassword$PasswordByteGenerator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/decrypt/PDFPassword;->passwordBytes:[B

    iput-object v0, p0, Lcom/sun/pdfview/decrypt/PDFPassword;->passwordString:Ljava/lang/String;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/sun/pdfview/decrypt/PDFPassword;->passwordString:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/decrypt/PDFPassword;->passwordBytes:[B

    iput-object v0, p0, Lcom/sun/pdfview/decrypt/PDFPassword;->passwordString:Ljava/lang/String;

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/sun/pdfview/decrypt/PDFPassword;->passwordBytes:[B

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array p1, v0, [B

    goto :goto_0
.end method

.method private static generatePossiblePasswordBytes(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/sun/pdfview/decrypt/PDFPassword;->PASSWORD_BYTE_GENERATORS:[Lcom/sun/pdfview/decrypt/PDFPassword$PasswordByteGenerator;

    array-length v7, v6

    move v4, v3

    :goto_0
    if-lt v4, v7, :cond_0

    return-object v5

    :cond_0
    aget-object v0, v6, v4

    invoke-interface {v0, p0}, Lcom/sun/pdfview/decrypt/PDFPassword$PasswordByteGenerator;->generateBytes(Ljava/lang/String;)[B

    move-result-object v8

    move v2, v3

    move v1, v3

    :goto_1
    if-nez v1, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    :cond_1
    if-nez v1, :cond_2

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private isAlphaNum7BitString(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static nonNullPassword(Lcom/sun/pdfview/decrypt/PDFPassword;)Lcom/sun/pdfview/decrypt/PDFPassword;
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object p0, Lcom/sun/pdfview/decrypt/PDFPassword;->EMPTY_PASSWORD:Lcom/sun/pdfview/decrypt/PDFPassword;

    goto :goto_0
.end method


# virtual methods
.method getPasswordBytes(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/PDFPassword;->passwordBytes:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/PDFPassword;->passwordString:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/decrypt/PDFPassword;->passwordBytes:[B

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/decrypt/PDFPassword;->passwordString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decrypt/PDFPassword;->isAlphaNum7BitString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/PDFPassword;->passwordString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/pdfview/PDFStringUtil;->asBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/pdfview/decrypt/PDFPassword;->passwordString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sun/pdfview/decrypt/PDFPassword;->generatePossiblePasswordBytes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
