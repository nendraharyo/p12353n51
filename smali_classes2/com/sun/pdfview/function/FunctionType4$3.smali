.class Lcom/sun/pdfview/function/FunctionType4$3;
.super Lcom/sun/pdfview/function/FunctionType4$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/pdfview/function/FunctionType4;->initOperations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/pdfview/function/FunctionType4;


# direct methods
.method constructor <init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/function/FunctionType4$3;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/function/FunctionType4$Operation;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method eval()V
    .locals 6

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType4$3;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-static {v0}, Lcom/sun/pdfview/function/FunctionType4;->access$0(Lcom/sun/pdfview/function/FunctionType4;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/sun/pdfview/function/FunctionType4$3;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-static {v2}, Lcom/sun/pdfview/function/FunctionType4;->access$0(Lcom/sun/pdfview/function/FunctionType4;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType4$3;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    const-wide v2, 0x4056800000000000L    # 90.0

    invoke-static {v0, v2, v3}, Lcom/sun/pdfview/function/FunctionType4;->access$1(Lcom/sun/pdfview/function/FunctionType4;D)V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sun/pdfview/function/FunctionType4$3;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-static {v4, v0, v1}, Lcom/sun/pdfview/function/FunctionType4;->access$1(Lcom/sun/pdfview/function/FunctionType4;D)V

    goto :goto_0
.end method
