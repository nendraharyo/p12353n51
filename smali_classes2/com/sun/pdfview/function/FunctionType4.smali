.class public Lcom/sun/pdfview/function/FunctionType4;
.super Lcom/sun/pdfview/function/PDFFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/function/FunctionType4$Expression;,
        Lcom/sun/pdfview/function/FunctionType4$Operation;
    }
.end annotation


# static fields
.field private static operationSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sun/pdfview/function/FunctionType4$Operation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private stack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private tokens:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sun/pdfview/function/PDFFunction;-><init>(I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/function/FunctionType4;->tokens:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/function/FunctionType4;->stack:Ljava/util/LinkedList;

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/pdfview/function/FunctionType4;->initOperations()V

    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/sun/pdfview/function/FunctionType4;)D
    .locals 2

    invoke-direct {p0}, Lcom/sun/pdfview/function/FunctionType4;->popDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1(Lcom/sun/pdfview/function/FunctionType4;D)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/function/FunctionType4;->pushDouble(D)V

    return-void
.end method

.method static synthetic access$2(Lcom/sun/pdfview/function/FunctionType4;)J
    .locals 2

    invoke-direct {p0}, Lcom/sun/pdfview/function/FunctionType4;->popLong()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3(Lcom/sun/pdfview/function/FunctionType4;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sun/pdfview/function/FunctionType4;->pushLong(J)V

    return-void
.end method

.method static synthetic access$4(Lcom/sun/pdfview/function/FunctionType4;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/sun/pdfview/function/FunctionType4;->popObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/sun/pdfview/function/FunctionType4;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/pdfview/function/FunctionType4;->pushBoolean(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/sun/pdfview/function/FunctionType4;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sun/pdfview/function/FunctionType4;->popBoolean()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/sun/pdfview/function/FunctionType4;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType4;->stack:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sun/pdfview/function/FunctionType4;)Lcom/sun/pdfview/function/FunctionType4$Expression;
    .locals 1

    invoke-direct {p0}, Lcom/sun/pdfview/function/FunctionType4;->popExpression()Lcom/sun/pdfview/function/FunctionType4$Expression;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/pdfview/function/FunctionType4;->pushObject(Ljava/lang/Object;)V

    return-void
.end method

.method private initOperations()V
    .locals 3

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$1;

    const-string v2, "abs"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$1;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$2;

    const-string v2, "add"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$2;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$3;

    const-string v2, "atan"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$3;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$4;

    const-string v2, "ceiling"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$4;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$5;

    const-string v2, "cvi"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$5;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$6;

    const-string v2, "cvr"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$6;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$7;

    const-string v2, "div"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$7;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$8;

    const-string v2, "exp"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$8;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$9;

    const-string v2, "floor"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$9;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$10;

    const-string v2, "idiv"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$10;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$11;

    const-string v2, "ln"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$11;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$12;

    const-string v2, "log"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$12;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$13;

    const-string v2, "mod"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$13;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$14;

    const-string v2, "mul"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$14;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$15;

    const-string v2, "neg"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$15;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$16;

    const-string v2, "round"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$16;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$17;

    const-string v2, "sin"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$17;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$18;

    const-string v2, "sqrt"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$18;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$19;

    const-string v2, "sub"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$19;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$20;

    const-string v2, "truncate"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$20;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$21;

    const-string v2, "and"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$21;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$22;

    const-string v2, "bitshift"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$22;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$23;

    const-string v2, "eq"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$23;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$24;

    const-string v2, "false"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$24;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$25;

    const-string v2, "ge"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$25;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$26;

    const-string v2, "gt"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$26;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$27;

    const-string v2, "le"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$27;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$28;

    const-string v2, "lt"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$28;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$29;

    const-string v2, "ne"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$29;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$30;

    const-string v2, "not"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$30;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$31;

    const-string v2, "or"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$31;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$32;

    const-string v2, "true"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$32;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$33;

    const-string v2, "xor"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$33;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$34;

    const-string v2, "if"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$34;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$35;

    const-string v2, "ifelse"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$35;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$36;

    const-string v2, "copy"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$36;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$37;

    const-string v2, "dup"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$37;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$38;

    const-string v2, "exch"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$38;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$39;

    const-string v2, "index"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$39;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$40;

    const-string v2, "pop"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$40;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sun/pdfview/function/FunctionType4;->operationSet:Ljava/util/HashSet;

    new-instance v1, Lcom/sun/pdfview/function/FunctionType4$41;

    const-string v2, "roll"

    invoke-direct {v1, p0, v2}, Lcom/sun/pdfview/function/FunctionType4$41;-><init>(Lcom/sun/pdfview/function/FunctionType4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private popBoolean()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private popDouble()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private popExpression()Lcom/sun/pdfview/function/FunctionType4$Expression;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private popLong()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private popObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType4;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private pushBoolean(Z)V
    .locals 0

    return-void
.end method

.method private pushDouble(D)V
    .locals 0

    return-void
.end method

.method private pushExpression(Lcom/sun/pdfview/function/FunctionType4$Expression;)V
    .locals 0

    return-void
.end method

.method private pushLong(J)V
    .locals 0

    return-void
.end method

.method private pushObject(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/function/FunctionType4;->stack:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method private readPS(Lc/a/a/b/b;)V
    .locals 0

    return-void
.end method


# virtual methods
.method protected doFunction([FI[FI)V
    .locals 0

    return-void
.end method

.method protected parse(Lcom/sun/pdfview/PDFObject;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getStreamBuffer()Lc/a/a/b/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/function/FunctionType4;->readPS(Lc/a/a/b/b;)V

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Unsupported function type 4."

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
