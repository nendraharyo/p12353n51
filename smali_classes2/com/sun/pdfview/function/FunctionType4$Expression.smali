.class Lcom/sun/pdfview/function/FunctionType4$Expression;
.super Ljava/util/LinkedList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/function/FunctionType4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Expression"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/pdfview/function/FunctionType4;


# direct methods
.method constructor <init>(Lcom/sun/pdfview/function/FunctionType4;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/function/FunctionType4$Expression;->this$0:Lcom/sun/pdfview/function/FunctionType4;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/sun/pdfview/function/FunctionType4$Expression;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
