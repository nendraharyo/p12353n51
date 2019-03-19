.class public Lcom/sun/pdfview/font/PDFGlyph;
.super Ljava/lang/Object;


# instance fields
.field private advance:Landroid/graphics/PointF;

.field private name:Ljava/lang/String;

.field private page:Lcom/sun/pdfview/PDFPage;

.field private shape:Landroid/graphics/Path;

.field private src:C


# direct methods
.method public constructor <init>(CLjava/lang/String;Landroid/graphics/Path;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sun/pdfview/font/PDFGlyph;->shape:Landroid/graphics/Path;

    iput-object p4, p0, Lcom/sun/pdfview/font/PDFGlyph;->advance:Landroid/graphics/PointF;

    iput-char p1, p0, Lcom/sun/pdfview/font/PDFGlyph;->src:C

    iput-object p2, p0, Lcom/sun/pdfview/font/PDFGlyph;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(CLjava/lang/String;Lcom/sun/pdfview/PDFPage;Landroid/graphics/PointF;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sun/pdfview/font/PDFGlyph;->page:Lcom/sun/pdfview/PDFPage;

    iput-object p4, p0, Lcom/sun/pdfview/font/PDFGlyph;->advance:Landroid/graphics/PointF;

    iput-char p1, p0, Lcom/sun/pdfview/font/PDFGlyph;->src:C

    iput-object p2, p0, Lcom/sun/pdfview/font/PDFGlyph;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addCommands(Lcom/sun/pdfview/PDFPage;Landroid/graphics/Matrix;I)Landroid/graphics/PointF;
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFGlyph;->shape:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/sun/pdfview/font/PDFGlyph;->shape:Landroid/graphics/Path;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    new-instance v1, Lcom/sun/pdfview/PDFShapeCmd;

    invoke-direct {v1, v0, p3}, Lcom/sun/pdfview/PDFShapeCmd;-><init>(Landroid/graphics/Path;I)V

    invoke-virtual {p1, v1}, Lcom/sun/pdfview/PDFPage;->addCommand(Lcom/sun/pdfview/PDFCmd;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/pdfview/font/PDFGlyph;->advance:Landroid/graphics/PointF;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/font/PDFGlyph;->page:Lcom/sun/pdfview/PDFPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFGlyph;->page:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {p1, v0, p2}, Lcom/sun/pdfview/PDFPage;->addCommands(Lcom/sun/pdfview/PDFPage;Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public getChar()C
    .locals 1

    iget-char v0, p0, Lcom/sun/pdfview/font/PDFGlyph;->src:C

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFGlyph;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Lcom/sun/pdfview/PDFPage;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFGlyph;->page:Lcom/sun/pdfview/PDFPage;

    return-object v0
.end method

.method public getShape()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/PDFGlyph;->shape:Landroid/graphics/Path;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/sun/pdfview/font/PDFGlyph;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
