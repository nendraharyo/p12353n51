.class abstract Lcom/sun/pdfview/decrypt/PDFPassword$CharsetEncoderGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/pdfview/decrypt/PDFPassword$PasswordByteGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/decrypt/PDFPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CharsetEncoderGenerator"
.end annotation


# instance fields
.field private replacementByte:Ljava/lang/Byte;


# direct methods
.method protected constructor <init>(Ljava/lang/Byte;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/decrypt/PDFPassword$CharsetEncoderGenerator;->replacementByte:Ljava/lang/Byte;

    return-void
.end method


# virtual methods
.method protected abstract createCharsetEncoder()Ljava/nio/charset/CharsetEncoder;
.end method

.method public generateBytes(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p0}, Lcom/sun/pdfview/decrypt/PDFPassword$CharsetEncoderGenerator;->createCharsetEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/decrypt/PDFPassword$CharsetEncoderGenerator;->replacementByte:Ljava/lang/Byte;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sun/pdfview/decrypt/PDFPassword$CharsetEncoderGenerator;->replacementByte:Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->replaceWith([B)Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    :goto_0
    :try_start_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method
