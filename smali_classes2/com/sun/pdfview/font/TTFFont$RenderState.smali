.class Lcom/sun/pdfview/font/TTFFont$RenderState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/font/TTFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenderState"
.end annotation


# instance fields
.field firstOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

.field firstOn:Lcom/sun/pdfview/font/TTFFont$PointRec;

.field gp:Landroid/graphics/Path;

.field prevOff:Lcom/sun/pdfview/font/TTFFont$PointRec;

.field final synthetic this$0:Lcom/sun/pdfview/font/TTFFont;


# direct methods
.method constructor <init>(Lcom/sun/pdfview/font/TTFFont;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/TTFFont$RenderState;->this$0:Lcom/sun/pdfview/font/TTFFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
