.class Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/font/ttf/CmapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CmapSubtable"
.end annotation


# instance fields
.field platformID:S

.field platformSpecificID:S

.field final synthetic this$0:Lcom/sun/pdfview/font/ttf/CmapTable;


# direct methods
.method protected constructor <init>(Lcom/sun/pdfview/font/ttf/CmapTable;SS)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->this$0:Lcom/sun/pdfview/font/ttf/CmapTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p2, p0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformID:S

    iput-short p3, p0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformSpecificID:S

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    instance-of v2, p1, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;

    iget-short v2, p0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformID:S

    iget-short v3, p1, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformID:S

    if-lt v2, v3, :cond_0

    iget-short v2, p0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformID:S

    iget-short v3, p1, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformID:S

    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-short v2, p0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformSpecificID:S

    iget-short v3, p1, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformSpecificID:S

    if-lt v2, v3, :cond_0

    iget-short v0, p0, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformSpecificID:S

    iget-short v2, p1, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->platformSpecificID:S

    if-le v0, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/CmapTable$CmapSubtable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
