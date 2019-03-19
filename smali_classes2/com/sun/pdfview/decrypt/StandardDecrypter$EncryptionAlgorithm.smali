.class public final enum Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/decrypt/StandardDecrypter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AESV2:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

.field private static final synthetic ENUM$VALUES:[Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

.field public static final enum RC4:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    const-string v1, "RC4"

    invoke-direct {v0, v1, v2}, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->RC4:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    new-instance v0, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    const-string v1, "AESV2"

    invoke-direct {v0, v1, v3}, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->AESV2:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    sget-object v1, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->RC4:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->AESV2:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->ENUM$VALUES:[Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;
    .locals 1

    const-class v0, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    return-object v0
.end method

.method public static values()[Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->ENUM$VALUES:[Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    array-length v1, v0

    new-array v2, v1, [Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method isAES()Z
    .locals 1

    sget-object v0, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->AESV2:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRC4()Z
    .locals 1

    sget-object v0, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->RC4:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
