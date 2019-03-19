.class Lcom/sun/pdfview/PDFParser$ParserState;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/PDFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParserState"
.end annotation


# instance fields
.field fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

.field strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

.field textFormat:Lcom/sun/pdfview/PDFTextFormat;

.field final synthetic this$0:Lcom/sun/pdfview/PDFParser;


# direct methods
.method constructor <init>(Lcom/sun/pdfview/PDFParser;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/PDFParser$ParserState;->this$0:Lcom/sun/pdfview/PDFParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v1, Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser$ParserState;->this$0:Lcom/sun/pdfview/PDFParser;

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParser$ParserState;-><init>(Lcom/sun/pdfview/PDFParser;)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iput-object v0, v1, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iput-object v0, v1, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFTextFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFTextFormat;

    iput-object v0, v1, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    return-object v1
.end method
