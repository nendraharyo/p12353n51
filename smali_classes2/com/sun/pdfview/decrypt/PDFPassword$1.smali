.class Lcom/sun/pdfview/decrypt/PDFPassword$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/pdfview/decrypt/PDFPassword$PasswordByteGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/pdfview/decrypt/PDFPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateBytes(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p1}, Lcom/sun/pdfview/PDFStringUtil;->asBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
