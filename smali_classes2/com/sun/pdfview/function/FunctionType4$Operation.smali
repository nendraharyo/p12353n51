.class abstract Lcom/sun/pdfview/function/FunctionType4$Operation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/function/FunctionType4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Operation"
.end annotation


# instance fields
.field private operatorName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sun/pdfview/function/FunctionType4;


# direct methods
.method public constructor <init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/sun/pdfview/function/FunctionType4$Operation;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot have a null operator name"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/sun/pdfview/function/FunctionType4$Operation;->operatorName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/sun/pdfview/function/FunctionType4$Operation;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/pdfview/function/FunctionType4$Operation;

    iget-object v0, p1, Lcom/sun/pdfview/function/FunctionType4$Operation;->operatorName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/pdfview/function/FunctionType4$Operation;->operatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType4$Operation;->operatorName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract eval()V
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType4$Operation;->operatorName:Ljava/lang/String;

    return-object v0
.end method
