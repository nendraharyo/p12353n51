.class public Lcom/sun/pdfview/PDFDocCharsetEncoder;
.super Ljava/nio/charset/CharsetEncoder;


# static fields
.field static final EXTENDED_TO_PDF_DOC_ENCODING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field static final IDENT_PDF_DOC_ENCODING_MAP:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x0

    const/16 v0, 0x100

    new-array v0, v0, [Z

    sput-object v0, Lcom/sun/pdfview/PDFDocCharsetEncoder;->IDENT_PDF_DOC_ENCODING_MAP:[Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/pdfview/PDFDocCharsetEncoder;->EXTENDED_TO_PDF_DOC_ENCODING_MAP:Ljava/util/Map;

    move v0, v1

    :goto_0
    sget-object v2, Lcom/sun/pdfview/PDFStringUtil;->PDF_DOC_ENCODING_MAP:[C

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/sun/pdfview/PDFStringUtil;->PDF_DOC_ENCODING_MAP:[C

    aget-char v3, v2, v0

    if-ne v3, v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    sget-object v4, Lcom/sun/pdfview/PDFDocCharsetEncoder;->IDENT_PDF_DOC_ENCODING_MAP:[Z

    aput-boolean v2, v4, v0

    if-nez v2, :cond_1

    sget-object v2, Lcom/sun/pdfview/PDFDocCharsetEncoder;->EXTENDED_TO_PDF_DOC_ENCODING_MAP:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    return-void
.end method

.method public static isIdentityEncoding(C)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    sget-object v0, Lcom/sun/pdfview/PDFDocCharsetEncoder;->IDENT_PDF_DOC_ENCODING_MAP:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-ge v0, v2, :cond_1

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v0

    if-ltz v0, :cond_2

    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/sun/pdfview/PDFDocCharsetEncoder;->IDENT_PDF_DOC_ENCODING_MAP:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_2

    int-to-byte v0, v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sun/pdfview/PDFDocCharsetEncoder;->EXTENDED_TO_PDF_DOC_ENCODING_MAP:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_3
    invoke-static {v2}, Ljava/nio/charset/CoderResult;->unmappableForLength(I)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_1
.end method

.method public isLegalReplacement([B)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
