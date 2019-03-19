.class Lcom/sun/pdfview/function/FunctionType4$36;
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

    iput-object p1, p0, Lcom/sun/pdfview/function/FunctionType4$36;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/function/FunctionType4$Operation;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method eval()V
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType4$36;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-static {v0}, Lcom/sun/pdfview/function/FunctionType4;->access$2(Lcom/sun/pdfview/function/FunctionType4;)J

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType4$36;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-static {v0}, Lcom/sun/pdfview/function/FunctionType4;->access$7(Lcom/sun/pdfview/function/FunctionType4;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/function/FunctionType4$36;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-static {v1}, Lcom/sun/pdfview/function/FunctionType4;->access$7(Lcom/sun/pdfview/function/FunctionType4;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/pdfview/function/FunctionType4$36;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-static {v1}, Lcom/sun/pdfview/function/FunctionType4;->access$7(Lcom/sun/pdfview/function/FunctionType4;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method
