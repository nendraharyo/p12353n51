.class Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/font/ttf/GlyfCompound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlyfComponent"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field componentPoint:I

.field compoundPoint:I

.field d:F

.field e:F

.field f:F

.field flags:S

.field glyphIndex:S

.field final synthetic this$0:Lcom/sun/pdfview/font/ttf/GlyfCompound;


# direct methods
.method constructor <init>(Lcom/sun/pdfview/font/ttf/GlyfCompound;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->this$0:Lcom/sun/pdfview/font/ttf/GlyfCompound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->a:F

    iput v0, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->b:F

    iput v0, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->c:F

    iput v1, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->d:F

    iput v0, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->e:F

    iput v0, p0, Lcom/sun/pdfview/font/ttf/GlyfCompound$GlyfComponent;->f:F

    return-void
.end method
