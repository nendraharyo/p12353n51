.class public Lcom/sun/pdfview/PDFNativeTextCmd;
.super Lcom/sun/pdfview/PDFCmd;


# static fields
.field public static final BOTH:I = 0x3

.field public static final CLIP:I = 0x4

.field public static final FILL:I = 0x2

.field public static final STROKE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ANDPDF.natTXT"


# instance fields
.field private bounds:Landroid/graphics/RectF;

.field private h:F

.field private mat:Landroid/graphics/Matrix;

.field private style:I

.field private text:Ljava/lang/String;

.field private w:F

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Matrix;)V
    .locals 6

    invoke-direct {p0}, Lcom/sun/pdfview/PDFCmd;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->text:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->mat:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->x:F

    const/4 v1, 0x5

    aget v1, v0, v1

    iput v1, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->y:F

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->w:F

    const/4 v1, 0x4

    aget v0, v0, v1

    iput v0, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->h:F

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->x:F

    iget v2, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->y:F

    iget v3, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->x:F

    iget v4, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->w:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->y:F

    iget v5, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->h:F

    add-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->bounds:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public execute(Lcom/sun/pdfview/PDFRenderer;)Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Lcom/sun/pdfview/PDFRenderer;->drawNativeText(Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NativeTextCommand Text: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "matrix: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->mat:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->style:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const-string v1, "FILL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    iget v1, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->style:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string v1, "STROKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget v1, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->style:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "CLIP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 2

    const/high16 v0, 0x40c00000    # 6.0f

    iget-object v1, p0, Lcom/sun/pdfview/PDFNativeTextCmd;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method
