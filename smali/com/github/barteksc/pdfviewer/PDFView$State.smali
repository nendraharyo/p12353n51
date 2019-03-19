.class final enum Lcom/github/barteksc/pdfviewer/PDFView$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/barteksc/pdfviewer/PDFView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/barteksc/pdfviewer/PDFView$State;

.field public static final enum DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field public static final enum ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field public static final enum LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

.field public static final enum SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v3}, Lcom/github/barteksc/pdfviewer/PDFView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    const-string v1, "SHOWN"

    invoke-direct {v0, v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    new-instance v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/github/barteksc/pdfviewer/PDFView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/github/barteksc/pdfviewer/PDFView$State;

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->DEFAULT:Lcom/github/barteksc/pdfviewer/PDFView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->LOADED:Lcom/github/barteksc/pdfviewer/PDFView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->SHOWN:Lcom/github/barteksc/pdfviewer/PDFView$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/barteksc/pdfviewer/PDFView$State;->ERROR:Lcom/github/barteksc/pdfviewer/PDFView$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->$VALUES:[Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$State;
    .locals 1

    const-class v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-object v0
.end method

.method public static values()[Lcom/github/barteksc/pdfviewer/PDFView$State;
    .locals 1

    sget-object v0, Lcom/github/barteksc/pdfviewer/PDFView$State;->$VALUES:[Lcom/github/barteksc/pdfviewer/PDFView$State;

    invoke-virtual {v0}, [Lcom/github/barteksc/pdfviewer/PDFView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/barteksc/pdfviewer/PDFView$State;

    return-object v0
.end method
