.class Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;
.super Lcom/sun/pdfview/decrypt/PDFPassword$CharsetEncoderGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/decrypt/PDFPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentityEncodingByteGenerator"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/Byte;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/pdfview/decrypt/PDFPassword$CharsetEncoderGenerator;-><init>(Ljava/lang/Byte;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Byte;Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/pdfview/decrypt/PDFPassword$IdentityEncodingByteGenerator;-><init>(Ljava/lang/Byte;)V

    return-void
.end method


# virtual methods
.method protected createCharsetEncoder()Ljava/nio/charset/CharsetEncoder;
    .locals 1

    new-instance v0, Lcom/sun/pdfview/Identity8BitCharsetEncoder;

    invoke-direct {v0}, Lcom/sun/pdfview/Identity8BitCharsetEncoder;-><init>()V

    return-object v0
.end method
