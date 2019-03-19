.class Lcom/sun/pdfview/PDFParser$Tok;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/PDFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tok"
.end annotation


# static fields
.field public static final ARYB:I = 0x9

.field public static final ARYE:I = 0x8

.field public static final BRCB:I = 0x5

.field public static final BRCE:I = 0x4

.field public static final BRKB:I = 0xb

.field public static final BRKE:I = 0xa

.field public static final CMD:I = 0x2

.field public static final EOF:I = -0x1

.field public static final NAME:I = 0x1

.field public static final NUM:I = 0x3

.field public static final STR:I = 0x7

.field public static final UNK:I


# instance fields
.field public name:Ljava/lang/String;

.field public type:I

.field public value:D


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v2, 0x2

    iget v0, p0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NUM: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sun/pdfview/PDFParser$Tok;->value:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CMD: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    if-nez v0, :cond_2

    const-string v0, "UNK"

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string v0, "EOF"

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NAME: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    if-ne v0, v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CMD: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STR: ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    const-string v0, "ARY ["

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const-string v0, "ARY ]"

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "some kind of brace ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
