.class public Lcom/sun/pdfview/PDFDestination;
.super Ljava/lang/Object;


# static fields
.field public static final FIT:I = 0x1

.field public static final FITB:I = 0x5

.field public static final FITBH:I = 0x6

.field public static final FITBV:I = 0x7

.field public static final FITH:I = 0x2

.field public static final FITR:I = 0x4

.field public static final FITV:I = 0x3

.field public static final XYZ:I


# instance fields
.field private bottom:F

.field private left:F

.field private pageObj:Lcom/sun/pdfview/PDFObject;

.field private right:F

.field private top:F

.field private type:I

.field private zoom:F


# direct methods
.method protected constructor <init>(Lcom/sun/pdfview/PDFObject;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/pdfview/PDFDestination;->pageObj:Lcom/sun/pdfview/PDFObject;

    iput p2, p0, Lcom/sun/pdfview/PDFDestination;->type:I

    return-void
.end method

.method private static getDestFromName(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/PDFObject;
    .locals 2

    const-string v0, "Dests"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDestFromString(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/PDFObject;
    .locals 3

    const-string v0, "Names"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Dests"

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/sun/pdfview/NameTree;

    invoke-direct {v1, v0}, Lcom/sun/pdfview/NameTree;-><init>(Lcom/sun/pdfview/PDFObject;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/NameTree;->find(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDestination(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/PDFDestination;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v0

    if-ne v0, v6, :cond_2

    invoke-static {p0, p1}, Lcom/sun/pdfview/PDFDestination;->getDestFromName(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/PDFObject;

    move-result-object p0

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v0

    if-eq v0, v7, :cond_3

    :cond_1
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t create destination from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-static {p0, p1}, Lcom/sun/pdfview/PDFDestination;->getDestFromString(Lcom/sun/pdfview/PDFObject;Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/PDFObject;

    move-result-object p0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "XYZ"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/sun/pdfview/PDFDestination;

    aget-object v2, v1, v3

    invoke-direct {v0, v2, v3}, Lcom/sun/pdfview/PDFDestination;-><init>(Lcom/sun/pdfview/PDFObject;I)V

    :goto_1
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFDestination;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_2
    :pswitch_0
    return-object v0

    :cond_4
    const-string v2, "Fit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v0, Lcom/sun/pdfview/PDFDestination;

    aget-object v2, v1, v3

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/sun/pdfview/PDFDestination;-><init>(Lcom/sun/pdfview/PDFObject;I)V

    goto :goto_1

    :cond_5
    const-string v2, "FitH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v0, Lcom/sun/pdfview/PDFDestination;

    aget-object v2, v1, v3

    invoke-direct {v0, v2, v4}, Lcom/sun/pdfview/PDFDestination;-><init>(Lcom/sun/pdfview/PDFObject;I)V

    goto :goto_1

    :cond_6
    const-string v2, "FitV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v0, Lcom/sun/pdfview/PDFDestination;

    aget-object v2, v1, v3

    invoke-direct {v0, v2, v5}, Lcom/sun/pdfview/PDFDestination;-><init>(Lcom/sun/pdfview/PDFObject;I)V

    goto :goto_1

    :cond_7
    const-string v2, "FitR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v0, Lcom/sun/pdfview/PDFDestination;

    aget-object v2, v1, v3

    invoke-direct {v0, v2, v6}, Lcom/sun/pdfview/PDFDestination;-><init>(Lcom/sun/pdfview/PDFObject;I)V

    goto :goto_1

    :cond_8
    const-string v2, "FitB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance v0, Lcom/sun/pdfview/PDFDestination;

    aget-object v2, v1, v3

    invoke-direct {v0, v2, v7}, Lcom/sun/pdfview/PDFDestination;-><init>(Lcom/sun/pdfview/PDFObject;I)V

    goto :goto_1

    :cond_9
    const-string v2, "FitBH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v0, Lcom/sun/pdfview/PDFDestination;

    aget-object v2, v1, v3

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3}, Lcom/sun/pdfview/PDFDestination;-><init>(Lcom/sun/pdfview/PDFObject;I)V

    goto :goto_1

    :cond_a
    const-string v2, "FitBV"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v0, Lcom/sun/pdfview/PDFDestination;

    aget-object v2, v1, v3

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3}, Lcom/sun/pdfview/PDFDestination;-><init>(Lcom/sun/pdfview/PDFObject;I)V

    goto :goto_1

    :cond_b
    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown destination type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    aget-object v2, v1, v4

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/pdfview/PDFDestination;->setLeft(F)V

    aget-object v2, v1, v5

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/pdfview/PDFDestination;->setTop(F)V

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFDestination;->setZoom(F)V

    goto/16 :goto_2

    :pswitch_2
    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFDestination;->setTop(F)V

    goto/16 :goto_2

    :pswitch_3
    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFDestination;->setLeft(F)V

    goto/16 :goto_2

    :pswitch_4
    aget-object v2, v1, v4

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/pdfview/PDFDestination;->setLeft(F)V

    aget-object v2, v1, v5

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/pdfview/PDFDestination;->setBottom(F)V

    aget-object v2, v1, v6

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/pdfview/PDFDestination;->setRight(F)V

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFDestination;->setTop(F)V

    goto/16 :goto_2

    :pswitch_5
    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFDestination;->setTop(F)V

    goto/16 :goto_2

    :pswitch_6
    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFDestination;->setLeft(F)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFDestination;->bottom:F

    return v0
.end method

.method public getLeft()F
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFDestination;->left:F

    return v0
.end method

.method public getPage()Lcom/sun/pdfview/PDFObject;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFDestination;->pageObj:Lcom/sun/pdfview/PDFObject;

    return-object v0
.end method

.method public getRight()F
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFDestination;->right:F

    return v0
.end method

.method public getTop()F
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFDestination;->top:F

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFDestination;->type:I

    return v0
.end method

.method public getZoom()F
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFDestination;->zoom:F

    return v0
.end method

.method public setBottom(F)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFDestination;->bottom:F

    return-void
.end method

.method public setLeft(F)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFDestination;->left:F

    return-void
.end method

.method public setRight(F)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFDestination;->right:F

    return-void
.end method

.method public setTop(F)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFDestination;->top:F

    return-void
.end method

.method public setZoom(F)V
    .locals 0

    iput p1, p0, Lcom/sun/pdfview/PDFDestination;->zoom:F

    return-void
.end method
