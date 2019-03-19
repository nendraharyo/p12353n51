.class public Lcom/sun/pdfview/decrypt/StandardDecrypter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/pdfview/decrypt/PDFDecrypter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final AESV2_SALT:[B

.field private static final CIPHER_AES:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final CIPHER_RC4:Ljava/lang/String; = "RC4"

.field private static final KEY_AES:Ljava/lang/String; = "AES"

.field private static final KEY_RC4:Ljava/lang/String; = "RC4"

.field private static final PW_PADDING:[B


# instance fields
.field private encryptionAlgorithm:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

.field private generalKeyBytes:[B

.field private ownerAuthorised:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/16 v4, 0x4e

    const/4 v1, 0x1

    const-class v0, Lcom/sun/pdfview/decrypt/StandardDecrypter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->$assertionsDisabled:Z

    new-array v0, v5, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->AESV2_SALT:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    const/16 v3, 0x28

    aput-byte v3, v0, v2

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    aput-byte v4, v0, v2

    const/4 v2, 0x3

    const/16 v3, 0x5e

    aput-byte v3, v0, v2

    aput-byte v4, v0, v5

    const/4 v2, 0x5

    const/16 v3, 0x75

    aput-byte v3, v0, v2

    const/4 v2, 0x6

    const/16 v3, -0x76

    aput-byte v3, v0, v2

    const/4 v2, 0x7

    const/16 v3, 0x41

    aput-byte v3, v0, v2

    const/16 v2, 0x64

    aput-byte v2, v0, v6

    const/16 v2, 0xa

    aput-byte v4, v0, v2

    const/16 v2, 0xb

    const/16 v3, 0x56

    aput-byte v3, v0, v2

    const/16 v2, 0xc

    const/4 v3, -0x1

    aput-byte v3, v0, v2

    const/16 v2, 0xd

    const/4 v3, -0x6

    aput-byte v3, v0, v2

    const/16 v2, 0xe

    aput-byte v1, v0, v2

    const/16 v1, 0xf

    aput-byte v6, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, -0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    sput-object v0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->PW_PADDING:[B

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x73t
        0x41t
        0x6ct
        0x54t
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;Lcom/sun/pdfview/PDFObject;II[B[BIZLcom/sun/pdfview/decrypt/PDFPassword;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->ownerAuthorised:Z

    iput-object p1, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->encryptionAlgorithm:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    if-nez p2, :cond_1

    const/4 v1, 0x0

    check-cast v1, [B

    move-object v3, v1

    :goto_0
    invoke-direct {p0, p3}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->testJceAvailability(I)V

    const/4 v1, 0x0

    :try_start_0
    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/decrypt/PDFPassword;->getPasswordBytes(Z)Ljava/util/List;

    move-result-object v11

    const/4 v1, 0x0

    move v10, v1

    :goto_1
    iget-object v1, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->generalKeyBytes:[B

    if-nez v1, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lt v10, v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->generalKeyBytes:[B

    if-nez v1, :cond_4

    new-instance v1, Lcom/sun/pdfview/decrypt/PDFAuthenticationFailureException;

    const-string v2, "Password failed authentication for both owner and user password"

    invoke-direct {v1, v2}, Lcom/sun/pdfview/decrypt/PDFAuthenticationFailureException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v3

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v1, p0

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->checkOwnerPassword([B[BII[B[BIZ)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->generalKeyBytes:[B

    iget-object v1, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->generalKeyBytes:[B

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->ownerAuthorised:Z

    :goto_2
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_1

    :cond_3
    move-object v1, p0

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->checkUserPassword([B[BII[B[BIZ)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->generalKeyBytes:[B
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v2, Lcom/sun/pdfview/PDFParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to check passwords: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    return-void
.end method

.method private calculateGeneralEncryptionKey([B[BII[BIZ)[B
    .locals 6

    const/4 v4, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->padPassword([B)[B

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createMD5Digest()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2, p5}, Ljava/security/MessageDigest;->update([B)V

    and-int/lit16 v0, p6, 0xff

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update(B)V

    shr-int/lit8 v0, p6, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update(B)V

    shr-int/lit8 v0, p6, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update(B)V

    shr-int/lit8 v0, p6, 0x18

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update(B)V

    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Ljava/security/MessageDigest;->update([B)V

    :cond_0
    if-lt p4, v4, :cond_1

    if-nez p7, :cond_1

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_3

    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v0, 0x2

    if-ne p4, v0, :cond_4

    const/4 v0, 0x5

    :goto_1
    new-array v4, v0, [B

    const/4 v0, 0x3

    if-lt p4, v0, :cond_2

    move v0, v1

    :goto_2
    const/16 v5, 0x32

    if-lt v0, v5, :cond_5

    :cond_2
    array-length v0, v4

    invoke-static {v3, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_3
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    div-int/lit8 v0, p3, 0x8

    goto :goto_1

    :cond_5
    array-length v5, v4

    invoke-virtual {v2, v3, v1, v5}, Ljava/security/MessageDigest;->update([BII)V

    invoke-direct {p0, v2, v3}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->digestTo(Ljava/security/MessageDigest;[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private calculateUValue([B[BI)[B
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Cipher()Lc/a/a/a/a;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Key([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->initEncryption(Lc/a/a/a/a;Ljavax/crypto/SecretKey;)V

    sget-object v1, Lcom/sun/pdfview/decrypt/StandardDecrypter;->PW_PADDING:[B

    invoke-direct {p0, v0, v1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->crypt(Lc/a/a/a/a;[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-lt p3, v0, :cond_3

    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createMD5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Lcom/sun/pdfview/decrypt/StandardDecrypter;->PW_PADDING:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->update([B)V

    :cond_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Cipher()Lc/a/a/a/a;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Key([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->initEncryption(Lc/a/a/a/a;Ljavax/crypto/SecretKey;)V

    invoke-direct {p0, v1, v0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->crypt(Lc/a/a/a/a;[B)[B

    move-result-object v2

    invoke-direct {p0, v2, p1, v1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->rc4shuffle([B[BLc/a/a/a/a;)V

    sget-boolean v0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    array-length v0, v2

    if-eq v0, v4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/16 v0, 0x20

    new-array v0, v0, [B

    array-length v1, v2

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v2

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByProductException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported standard security handler revision "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByProductException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private calculuateOValue([B[BII)[B
    .locals 4

    invoke-direct {p0, p1, p3, p4}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->getInitialOwnerPasswordKeyBytes([BII)[B

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Cipher()Lc/a/a/a/a;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Key([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->initEncryption(Lc/a/a/a/a;Ljavax/crypto/SecretKey;)V

    invoke-direct {p0, p2}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->padPassword([B)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->crypt(Lc/a/a/a/a;[B)[B

    move-result-object v2

    const/4 v3, 0x3

    if-lt p4, v3, :cond_0

    invoke-direct {p0, v2, v0, v1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->rc4shuffle([B[BLc/a/a/a/a;)V

    :cond_0
    sget-boolean v0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    array-length v0, v2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    return-object v2
.end method

.method private checkNums(II)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Internal error: Object has bogus object number"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Internal error: Object has bogus generation number"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkOwnerPassword([B[BII[B[BIZ)[B
    .locals 9

    invoke-direct {p0, p1, p3, p4}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->getInitialOwnerPasswordKeyBytes([BII)[B

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Cipher()Lc/a/a/a/a;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Key([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->initDecryption(Lc/a/a/a/a;Ljava/security/Key;)V

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    invoke-direct {p0, v2, p5}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->crypt(Lc/a/a/a/a;[B)[B

    move-result-object v1

    :goto_0
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->checkUserPassword([B[BII[B[BIZ)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-lt p4, v1, :cond_1

    const/16 v1, 0x20

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {p5, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v2, v1, v0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->rc4unshuffle(Lc/a/a/a/a;[B[B)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByProductException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported revision: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByProductException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkUserPassword([B[BII[B[BIZ)[B
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->calculateGeneralEncryptionKey([B[BII[BIZ)[B

    move-result-object v1

    invoke-direct {p0, v1, p2, p4}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->calculateUValue([B[BI)[B

    move-result-object v3

    sget-boolean v0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    array-length v0, v3

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    array-length v0, p6

    array-length v2, v3

    if-eq v0, v2, :cond_1

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Improper U entry length; expected 32, is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    if-ne p4, v0, :cond_2

    const/16 v0, 0x20

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v0, :cond_3

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    const/16 v0, 0x10

    goto :goto_0

    :cond_3
    aget-byte v4, p6, v2

    aget-byte v5, v3, v2

    if-eq v4, v5, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private createAESCipher()Lc/a/a/a/a;
    .locals 1

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Lc/a/a/a/a;->a(Ljava/lang/String;)Lc/a/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method private createAndInitialiseContentCipher(Lc/a/a/b/b;[B)Lc/a/a/a/a;
    .locals 5

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->encryptionAlgorithm:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    invoke-virtual {v0}, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->isRC4()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RC4"

    invoke-static {v0}, Lc/a/a/a/a;->a(Ljava/lang/String;)Lc/a/a/a/a;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Key([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lc/a/a/a/a;->a(ILjavax/crypto/spec/SecretKeySpec;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->encryptionAlgorithm:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    invoke-virtual {v0}, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->isAES()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createAESCipher()Lc/a/a/a/a;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {p1}, Lc/a/a/b/b;->c()I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v1}, Lc/a/a/b/b;->a([B)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v4, v2, v3}, Lc/a/a/a/a;->a(ILjavax/crypto/spec/SecretKeySpec;Ljavax/crypto/spec/IvParameterSpec;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "AES encrypted stream too short - no room for initialisation vector"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal error - unhandled cipher type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->encryptionAlgorithm:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createMD5Digest()Ljava/security/MessageDigest;
    .locals 1

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private createRC4Cipher()Lc/a/a/a/a;
    .locals 1

    const-string v0, "RC4"

    invoke-static {v0}, Lc/a/a/a/a;->a(Ljava/lang/String;)Lc/a/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method private createRC4Key([B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 2

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "RC4"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private crypt(Lc/a/a/a/a;[B)[B
    .locals 1

    invoke-virtual {p1, p2}, Lc/a/a/a/a;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method private cryptInPlace(Lc/a/a/a/a;[B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1, p2}, Lc/a/a/a/a;->a([BII[B)V

    return-void
.end method

.method private decryptBuffer(Lc/a/a/b/b;[B)Lc/a/a/b/b;
    .locals 4

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createAndInitialiseContentCipher(Lc/a/a/b/b;[B)Lc/a/a/a/a;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {p1}, Lc/a/a/b/b;->c()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lc/a/a/b/b;->r()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lc/a/a/a/a;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {v1}, Lc/a/a/b/b;->a(Ljava/nio/ByteBuffer;)Lc/a/a/b/b;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to create cipher due to platform limitation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not decrypt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private digestTo(Ljava/security/MessageDigest;[B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Ljava/security/MessageDigest;->digest([BII)I

    return-void
.end method

.method private getInitialOwnerPasswordKeyBytes([BII)[B
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createMD5Digest()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->padPassword([B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v0, 0x3

    if-lt p3, v0, :cond_0

    move v0, v1

    :goto_0
    const/16 v4, 0x32

    if-lt v0, v4, :cond_1

    :cond_0
    div-int/lit8 v0, p2, 0x8

    new-array v0, v0, [B

    array-length v2, v0

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    invoke-direct {p0, v2, v3}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->digestTo(Ljava/security/MessageDigest;[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getObjectSaltedDecryptionKey(II)[B
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createMD5Digest()Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->generalKeyBytes:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    shr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    int-to-byte v1, p2

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    iget-object v1, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->encryptionAlgorithm:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    sget-object v2, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->AESV2:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sun/pdfview/decrypt/StandardDecrypter;->AESV2_SALT:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->getSaltedContentKeyByteLength()I

    move-result v1

    new-array v2, v1, [B

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    const-string v2, "Unable to get MD5 digester"

    invoke-direct {v1, v2, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSaltedContentKeyByteLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->generalKeyBytes:[B

    array-length v0, v0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->getSaltedContentKeyByteLength(I)I

    move-result v0

    return v0
.end method

.method private getSaltedContentKeyByteLength(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getUnsaltedDecryptionKey()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->generalKeyBytes:[B

    return-object v0
.end method

.method private initDecryption(Lc/a/a/a/a;Ljava/security/Key;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Lc/a/a/a/a;->a(ILjava/security/Key;)V

    return-void
.end method

.method private initEncryption(Lc/a/a/a/a;Ljavax/crypto/SecretKey;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lc/a/a/a/a;->a(ILjavax/crypto/SecretKey;)V

    return-void
.end method

.method private padPassword([B)[B
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-array p1, v5, [B

    :cond_0
    const/16 v0, 0x20

    new-array v1, v0, [B

    array-length v0, p1

    array-length v2, v1

    if-le v0, v2, :cond_2

    array-length v0, v1

    :goto_0
    invoke-static {p1, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v2, v1

    if-ge v0, v2, :cond_1

    sget-object v0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->PW_PADDING:[B

    array-length v2, p1

    array-length v3, v1

    array-length v4, p1

    sub-int/2addr v3, v4

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v1

    :cond_2
    array-length v0, p1

    goto :goto_0
.end method

.method private rc4shuffle([B[BLc/a/a/a/a;)V
    .locals 4

    array-length v0, p2

    new-array v2, v0, [B

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/16 v0, 0x13

    if-le v1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Key([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->initEncryption(Lc/a/a/a/a;Ljavax/crypto/SecretKey;)V

    invoke-direct {p0, p3, p1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->cryptInPlace(Lc/a/a/a/a;[B)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    aget-byte v3, p2, v0

    xor-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private rc4unshuffle(Lc/a/a/a/a;[B[B)V
    .locals 4

    array-length v0, p3

    new-array v2, v0, [B

    const/16 v0, 0x13

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_1

    invoke-direct {p0, v2}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Key([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->initDecryption(Lc/a/a/a/a;Ljava/security/Key;)V

    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->cryptInPlace(Lc/a/a/a/a;[B)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    aget-byte v3, p3, v0

    xor-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private testJceAvailability(I)V
    .locals 4

    const/16 v3, -0x52

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([BB)V

    div-int/lit8 v1, p1, 0x8

    invoke-direct {p0, v1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->getSaltedContentKeyByteLength(I)I

    move-result v1

    new-array v1, v1, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    :try_start_0
    invoke-static {v0}, Lc/a/a/b/b;->d([B)Lc/a/a/b/b;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createAndInitialiseContentCipher(Lc/a/a/b/b;[B)Lc/a/a/a/a;
    :try_end_0
    .catch Lcom/sun/pdfview/PDFParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createMD5Digest()Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_5

    iget-object v0, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->encryptionAlgorithm:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    sget-object v2, Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;->RC4:Lcom/sun/pdfview/decrypt/StandardDecrypter$EncryptionAlgorithm;

    if-eq v0, v2, :cond_0

    :try_start_2
    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Cipher()Lc/a/a/a/a;
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    :try_start_3
    invoke-direct {p0, v2}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->createRC4Key([B)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->initDecryption(Lc/a/a/a/a;Ljava/security/Key;)V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error; failed to produce test cipher: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;

    const-string v2, "JCE does not offer required cipher"

    invoke-direct {v1, v2, v0}, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;

    const-string v2, "JCE does not offer required padding"

    invoke-direct {v1, v2, v0}, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JCE does accept key size of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->getSaltedContentKeyByteLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bits- could it be a policy restriction?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;

    const-string v2, "JCE did not accept cipher parameter"

    invoke-direct {v1, v2, v0}, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;

    const-string v2, "No MD5 digest available from JCE"

    invoke-direct {v1, v2, v0}, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_6
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;

    const-string v2, "JCE did not offer RC4 cipher"

    invoke-direct {v1, v2, v0}, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_7
    move-exception v0

    new-instance v1, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;

    const-string v2, "JCE did not accept 40-bit RC4 key; policy problem?"

    invoke-direct {v1, v2, v0}, Lcom/sun/pdfview/decrypt/EncryptionUnsupportedByPlatformException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public decryptBuffer(Ljava/lang/String;Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;)Lc/a/a/b/b;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "This encryption version does not support Crypt filters"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sun/pdfview/PDFObject;->getObjNum()I

    move-result v0

    invoke-virtual {p2}, Lcom/sun/pdfview/PDFObject;->getObjGen()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->checkNums(II)V

    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->getUnsaltedDecryptionKey()[B

    move-result-object v0

    :goto_0
    invoke-direct {p0, p3, v0}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->decryptBuffer(Lc/a/a/b/b;[B)Lc/a/a/b/b;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p2}, Lcom/sun/pdfview/PDFObject;->getObjNum()I

    move-result v0

    invoke-virtual {p2}, Lcom/sun/pdfview/PDFObject;->getObjGen()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->getObjectSaltedDecryptionKey(II)[B

    move-result-object v0

    goto :goto_0
.end method

.method public decryptString(IILjava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p3}, Lcom/sun/pdfview/PDFStringUtil;->asBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->getObjectSaltedDecryptionKey(II)[B

    move-result-object v1

    invoke-static {v0}, Lc/a/a/b/b;->d([B)Lc/a/a/b/b;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/sun/pdfview/decrypt/StandardDecrypter;->decryptBuffer(Lc/a/a/b/b;[B)Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/b/b;->i()[B

    move-result-object v1

    invoke-virtual {v0}, Lc/a/a/b/b;->h()I

    move-result v2

    invoke-virtual {v0}, Lc/a/a/b/b;->f()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/sun/pdfview/PDFStringUtil;->asBasicString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncryptionPresent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isOwnerAuthorised()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/pdfview/decrypt/StandardDecrypter;->ownerAuthorised:Z

    return v0
.end method
