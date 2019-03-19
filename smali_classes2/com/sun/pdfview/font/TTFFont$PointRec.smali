.class Lcom/sun/pdfview/font/TTFFont$PointRec;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/font/TTFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PointRec"
.end annotation


# instance fields
.field onCurve:Z

.field final synthetic this$0:Lcom/sun/pdfview/font/TTFFont;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/font/TTFFont;IIZ)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/TTFFont$PointRec;->this$0:Lcom/sun/pdfview/font/TTFFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sun/pdfview/font/TTFFont$PointRec;->x:I

    iput p3, p0, Lcom/sun/pdfview/font/TTFFont$PointRec;->y:I

    iput-boolean p4, p0, Lcom/sun/pdfview/font/TTFFont$PointRec;->onCurve:Z

    return-void
.end method

.method public constructor <init>(Lcom/sun/pdfview/font/TTFFont;Lcom/sun/pdfview/font/ttf/GlyfSimple;I)V
    .locals 1

    iput-object p1, p0, Lcom/sun/pdfview/font/TTFFont$PointRec;->this$0:Lcom/sun/pdfview/font/TTFFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2, p3}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getXCoord(I)S

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/TTFFont$PointRec;->x:I

    invoke-virtual {p2, p3}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->getYCoord(I)S

    move-result v0

    iput v0, p0, Lcom/sun/pdfview/font/TTFFont$PointRec;->y:I

    invoke-virtual {p2, p3}, Lcom/sun/pdfview/font/ttf/GlyfSimple;->onCurve(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/pdfview/font/TTFFont$PointRec;->onCurve:Z

    return-void
.end method
