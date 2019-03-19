.class Lcom/sun/pdfview/font/Type1CFont$Range;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/font/Type1CFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Range"
.end annotation


# instance fields
.field private len:I

.field private start:I

.field final synthetic this$0:Lcom/sun/pdfview/font/Type1CFont;


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/font/Type1CFont;II)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/Type1CFont$Range;->this$0:Lcom/sun/pdfview/font/Type1CFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sun/pdfview/font/Type1CFont$Range;->start:I

    iput p3, p0, Lcom/sun/pdfview/font/Type1CFont$Range;->len:I

    return-void
.end method


# virtual methods
.method public final getEnd()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont$Range;->start:I

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont$Range;->len:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getLen()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont$Range;->len:I

    return v0
.end method

.method public final getStart()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/Type1CFont$Range;->start:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Range: start: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont$Range;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", len: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sun/pdfview/font/Type1CFont$Range;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
