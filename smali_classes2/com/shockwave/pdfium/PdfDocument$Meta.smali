.class public Lcom/shockwave/pdfium/PdfDocument$Meta;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shockwave/pdfium/PdfDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Meta"
.end annotation


# instance fields
.field author:Ljava/lang/String;

.field creationDate:Ljava/lang/String;

.field creator:Ljava/lang/String;

.field keywords:Ljava/lang/String;

.field modDate:Ljava/lang/String;

.field producer:Ljava/lang/String;

.field subject:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Meta;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Meta;->creationDate:Ljava/lang/String;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Meta;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Meta;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public getModDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Meta;->modDate:Ljava/lang/String;

    return-object v0
.end method

.method public getProducer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Meta;->producer:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Meta;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shockwave/pdfium/PdfDocument$Meta;->title:Ljava/lang/String;

    return-object v0
.end method
