.class Lcom/sun/pdfview/function/FunctionType4$29;
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

    iput-object p1, p0, Lcom/sun/pdfview/function/FunctionType4$29;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/function/FunctionType4$Operation;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method eval()V
    .locals 3

    iget-object v1, p0, Lcom/sun/pdfview/function/FunctionType4$29;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType4$29;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-static {v0}, Lcom/sun/pdfview/function/FunctionType4;->access$4(Lcom/sun/pdfview/function/FunctionType4;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/pdfview/function/FunctionType4$29;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-static {v2}, Lcom/sun/pdfview/function/FunctionType4;->access$4(Lcom/sun/pdfview/function/FunctionType4;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/sun/pdfview/function/FunctionType4;->access$5(Lcom/sun/pdfview/function/FunctionType4;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
