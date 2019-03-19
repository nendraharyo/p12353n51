.class Lcom/sun/pdfview/font/ttf/PostTable$PostMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/font/ttf/PostTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PostMap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/pdfview/font/ttf/PostTable;


# direct methods
.method constructor <init>(Lcom/sun/pdfview/font/ttf/PostTable;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/PostTable$PostMap;->this$0:Lcom/sun/pdfview/font/ttf/PostTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getCharIndex(Ljava/lang/String;)S
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getCharName(C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getData()Lc/a/a/b/b;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lc/a/a/b/b;->g(I)Lc/a/a/b/b;

    move-result-object v0

    return-object v0
.end method

.method getLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method setData(Lc/a/a/b/b;)V
    .locals 0

    return-void
.end method
