.class public Lcom/sun/pdfview/font/FlPoint;
.super Ljava/lang/Object;


# instance fields
.field public open:Z

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sun/pdfview/font/FlPoint;->x:F

    iput v0, p0, Lcom/sun/pdfview/font/FlPoint;->y:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/pdfview/font/FlPoint;->open:Z

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/font/FlPoint;->x:F

    iput v0, p0, Lcom/sun/pdfview/font/FlPoint;->y:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/pdfview/font/FlPoint;->open:Z

    return-void
.end method
