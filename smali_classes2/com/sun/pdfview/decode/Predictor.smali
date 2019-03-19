.class public abstract Lcom/sun/pdfview/decode/Predictor;
.super Ljava/lang/Object;


# static fields
.field public static final PNG:I = 0x1

.field public static final TIFF:I


# instance fields
.field private algorithm:I

.field private bpc:I

.field private colors:I

.field private columns:I


# direct methods
.method protected constructor <init>(I)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sun/pdfview/decode/Predictor;->colors:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/sun/pdfview/decode/Predictor;->bpc:I

    iput v1, p0, Lcom/sun/pdfview/decode/Predictor;->columns:I

    iput p1, p0, Lcom/sun/pdfview/decode/Predictor;->algorithm:I

    return-void
.end method

.method public static getPredictor(Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/decode/Predictor;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Predictor"

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown predictor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Tiff Predictor not supported"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Lcom/sun/pdfview/decode/PNGPredictor;

    invoke-direct {v0}, Lcom/sun/pdfview/decode/PNGPredictor;-><init>()V

    const-string v1, "Colors"

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/decode/Predictor;->setColors(I)V

    :cond_2
    const-string v1, "BitsPerComponent"

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/decode/Predictor;->setBitsPerComponent(I)V

    :cond_3
    const-string v1, "Columns"

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/decode/Predictor;->setColumns(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/decode/Predictor;->algorithm:I

    return v0
.end method

.method public getBitsPerComponent()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/decode/Predictor;->bpc:I

    return v0
.end method

.method public getColors()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/decode/Predictor;->colors:I

    return v0
.end method

.method public getColumns()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/decode/Predictor;->columns:I

    return v0
.end method

.method public setBitsPerComponent(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/decode/Predictor;->bpc:I

    return-void
.end method

.method protected setColors(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/decode/Predictor;->colors:I

    return-void
.end method

.method public setColumns(I)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/decode/Predictor;->columns:I

    return-void
.end method

.method public abstract unpredict(Lc/a/a/b/b;)Lc/a/a/b/b;
.end method
