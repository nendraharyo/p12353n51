.class Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/font/ttf/NameTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NameRecord"
.end annotation


# instance fields
.field languageID:S

.field nameID:S

.field platformID:S

.field platformSpecificID:S

.field final synthetic this$0:Lcom/sun/pdfview/font/ttf/NameTable;


# direct methods
.method constructor <init>(Lcom/sun/pdfview/font/ttf/NameTable;SSSS)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->this$0:Lcom/sun/pdfview/font/ttf/NameTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p2, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformID:S

    iput-short p3, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformSpecificID:S

    iput-short p4, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->languageID:S

    iput-short p5, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->nameID:S

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    instance-of v2, p1, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;

    iget-short v2, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformID:S

    iget-short v3, p1, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformID:S

    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-short v2, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformID:S

    iget-short v3, p1, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformID:S

    if-lt v2, v3, :cond_0

    iget-short v2, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformSpecificID:S

    iget-short v3, p1, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformSpecificID:S

    if-le v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-short v2, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformSpecificID:S

    iget-short v3, p1, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->platformSpecificID:S

    if-lt v2, v3, :cond_0

    iget-short v2, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->languageID:S

    iget-short v3, p1, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->languageID:S

    if-le v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-short v2, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->languageID:S

    iget-short v3, p1, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->languageID:S

    if-lt v2, v3, :cond_0

    iget-short v2, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->nameID:S

    iget-short v3, p1, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->nameID:S

    if-le v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-short v1, p0, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->nameID:S

    iget-short v2, p1, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->nameID:S

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sun/pdfview/font/ttf/NameTable$NameRecord;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
