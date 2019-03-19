.class Lcom/sun/pdfview/font/Type1Font$PSParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/font/Type1Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PSParser"
.end annotation


# instance fields
.field data:[B

.field loc:I

.field final synthetic this$0:Lcom/sun/pdfview/font/Type1Font;


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/font/Type1Font;[BI)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->this$0:Lcom/sun/pdfview/font/Type1Font;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->data:[B

    iput p3, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    return-void
.end method


# virtual methods
.method public getLoc()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    return v0
.end method

.method public getNEncodedBytes(III)[B
    .locals 6

    iget-object v0, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->this$0:Lcom/sun/pdfview/font/Type1Font;

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->data:[B

    iget v2, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    iget v3, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    add-int/2addr v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sun/pdfview/font/Type1Font;->access$0(Lcom/sun/pdfview/font/Type1Font;[BIIII)[B

    move-result-object v0

    iget v1, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    return-object v0
.end method

.method public readArray(I)[F
    .locals 6

    const/4 v2, 0x0

    new-array v4, p1, [F

    move v1, v2

    :cond_0
    :goto_0
    if-lt v1, p1, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {p0}, Lcom/sun/pdfview/font/Type1Font$PSParser;->readThing()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x5b

    if-ne v3, v5, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v4, v1

    move v1, v3

    goto :goto_0
.end method

.method public readThing()Ljava/lang/String;
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->data:[B

    iget v1, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/sun/pdfview/PDFFile;->isWhiteSpace(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    :cond_0
    iget-object v1, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->data:[B

    iget v2, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/sun/pdfview/PDFFile;->isWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->data:[B

    iget v3, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v1

    :cond_1
    iget v0, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    iget-object v1, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->data:[B

    iget v2, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/sun/pdfview/PDFFile;->isRegularCharacter(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1
.end method

.method public setLoc(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/font/Type1Font$PSParser;->loc:I

    return-void
.end method
