.class Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/font/ttf/CMapFormat4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Segment"
.end annotation


# instance fields
.field endCode:I

.field hasMap:Z

.field startCode:I

.field final synthetic this$0:Lcom/sun/pdfview/font/ttf/CMapFormat4;


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/font/ttf/CMapFormat4;SSZ)V
    .locals 2

    const v1, 0xffff

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->this$0:Lcom/sun/pdfview/font/ttf/CMapFormat4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int v0, v1, p3

    iput v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    and-int v0, v1, p2

    iput v0, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->startCode:I

    iput-boolean p4, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->hasMap:Z

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, -0x1

    instance-of v2, p1, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;

    iget v2, p1, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    iget v3, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->startCode:I

    if-lt v2, v3, :cond_2

    iget v2, p1, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    iget v3, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    if-le v2, v3, :cond_3

    :cond_2
    iget v2, p1, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->startCode:I

    iget v3, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->startCode:I

    if-lt v2, v3, :cond_4

    iget v2, p1, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->startCode:I

    iget v3, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    if-gt v2, v3, :cond_4

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    iget v3, p1, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    if-le v2, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    iget v3, p1, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->endCode:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/CMapFormat4$Segment;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
