.class public Lcom/sun/pdfview/PDFParser;
.super Lcom/sun/pdfview/BaseWatchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/pdfview/PDFParser$ParserState;,
        Lcom/sun/pdfview/PDFParser$Tok;
    }
.end annotation


# static fields
.field public static final DEBUG_DCTDECODE_DATA:Ljava/lang/String; = "debugdctdecode"

.field static final PDF_CMDS_RANGE1_MAX:I = 0x7fffffff

.field static final PDF_CMDS_RANGE1_MIN:I = 0x1

.field static final PDF_CMDS_RANGE2_MAX:I = 0x0

.field static final PDF_CMDS_RANGE2_MIN:I = 0x0

.field static final PDF_CMDS_RANGE3_MAX:I = 0x0

.field static final PDF_CMDS_RANGE3_MIN:I = 0x0

.field static final RELEASE:Z = true

.field private static final TAG:Ljava/lang/String; = "ANDPDF.pdfparser"

.field public static debuglevel:I


# instance fields
.field private catchexceptions:Z

.field private clip:I

.field private cmdCnt:I

.field private cmds:Lcom/sun/pdfview/PDFPage;

.field errorwritten:Z

.field private loc:I

.field private pageRef:Lc/a/a/d/c;

.field private parserStates:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sun/pdfview/PDFParser$ParserState;",
            ">;"
        }
    .end annotation
.end field

.field private path:Landroid/graphics/Path;

.field private resend:Z

.field resources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/pdfview/PDFObject;",
            ">;"
        }
    .end annotation
.end field

.field private stack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/sun/pdfview/PDFParser$ParserState;

.field stream:[B

.field private tok:Lcom/sun/pdfview/PDFParser$Tok;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sun/pdfview/PDFParser;->debuglevel:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/pdfview/PDFPage;[BLjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/pdfview/PDFPage;",
            "[B",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/pdfview/PDFObject;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sun/pdfview/BaseWatchable;-><init>()V

    iput-boolean v1, p0, Lcom/sun/pdfview/PDFParser;->resend:Z

    iput-boolean v1, p0, Lcom/sun/pdfview/PDFParser;->errorwritten:Z

    new-instance v0, Lc/a/a/d/c;

    invoke-direct {v0, p1}, Lc/a/a/d/c;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->pageRef:Lc/a/a/d/c;

    iput-object p3, p0, Lcom/sun/pdfview/PDFParser;->resources:Ljava/util/HashMap;

    if-nez p3, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->resources:Ljava/util/HashMap;

    :cond_0
    iput-object p2, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iput v1, p0, Lcom/sun/pdfview/PDFParser;->cmdCnt:I

    return-void
.end method

.method public static debug(Ljava/lang/String;I)V
    .locals 2

    sget v0, Lcom/sun/pdfview/PDFParser;->debuglevel:I

    if-le p1, v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Lcom/sun/pdfview/PDFParser;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private doForm(Lcom/sun/pdfview/PDFObject;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getCache()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFPage;

    if-nez v0, :cond_1

    const-string v0, "Matrix"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    :goto_0
    const-string v2, "BBox"

    invoke-virtual {p1, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v4

    invoke-virtual {v2, v8}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v2

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Lcom/sun/pdfview/PDFPage;

    invoke-direct {v2, v3, v1}, Lcom/sun/pdfview/PDFPage;-><init>(Landroid/graphics/RectF;I)V

    invoke-virtual {v2, v0}, Lcom/sun/pdfview/PDFPage;->addXform(Landroid/graphics/Matrix;)V

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->resources:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    const-string v1, "Resources"

    invoke-virtual {p1, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    new-instance v1, Lcom/sun/pdfview/PDFParser;

    invoke-virtual {p1}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/sun/pdfview/PDFParser;-><init>(Lcom/sun/pdfview/PDFPage;[BLjava/util/HashMap;)V

    invoke-virtual {v1, v8}, Lcom/sun/pdfview/PDFParser;->go(Z)V

    invoke-virtual {p1, v2}, Lcom/sun/pdfview/PDFObject;->setCache(Ljava/lang/Object;)V

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFPage;->addPush()V

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFPage;->addCommands(Lcom/sun/pdfview/PDFPage;)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPage;->addPop()V

    return-void

    :cond_2
    const/4 v0, 0x6

    new-array v3, v0, [F

    move v0, v1

    :goto_1
    array-length v4, v3

    if-lt v0, v4, :cond_3

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v0, v3}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;[F)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v0}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private doImage(Lcom/sun/pdfview/PDFObject;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->resources:Ljava/util/HashMap;

    invoke-static {p1, v1}, Lcom/sun/pdfview/PDFImage;->createImage(Lcom/sun/pdfview/PDFObject;Ljava/util/Map;)Lcom/sun/pdfview/PDFImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFPage;->addImage(Lcom/sun/pdfview/PDFImage;)V

    return-void
.end method

.method private doShader(Lcom/sun/pdfview/PDFObject;)V
    .locals 0

    return-void
.end method

.method private doXObject(Lcom/sun/pdfview/PDFObject;)V
    .locals 4

    const-string v0, "Subtype"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "S"

    invoke-virtual {p1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "Image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/pdfview/PDFParser;->doImage(Lcom/sun/pdfview/PDFObject;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "Form"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sun/pdfview/PDFParser;->doForm(Lcom/sun/pdfview/PDFObject;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown XObject subtype: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private dump(Ljava/util/Stack;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "<null>"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "[]"

    goto :goto_0

    :cond_1
    const-string v1, ""

    const-string v0, "["

    invoke-virtual {p1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/sun/pdfview/PDFParser;->dumpObj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, ","

    goto :goto_1
.end method

.method private dumpArray([Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string v0, "<null>"

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    const-string v0, "[]"

    goto :goto_0

    :cond_1
    const-string v2, ""

    const-string v1, "["

    array-length v3, p1

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    aget-object v4, p1, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v4}, Lcom/sun/pdfview/PDFParser;->dumpObj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, ","

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private dumpObj(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "<null>"

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sun/pdfview/PDFParser;->dumpArray([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static emitDataFile([BLjava/lang/String;)V
    .locals 5

    :try_start_0
    const-string v0, "DateFile"

    invoke-static {v0, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Write: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    const/16 v3, 0x20

    if-lt v1, v3, :cond_1

    const/16 v3, 0x7f

    if-lt v1, v3, :cond_2

    :cond_1
    const/16 v1, 0x3f

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private findResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;
    .locals 3

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->resources:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No dictionary called "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found in the resources"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->resources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    goto :goto_0
.end method

.method private getFontFrom(Ljava/lang/String;)Lcom/sun/pdfview/font/PDFFont;
    .locals 2

    const-string v0, "Font"

    invoke-direct {p0, p1, v0}, Lcom/sun/pdfview/PDFParser;->findResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->resources:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/sun/pdfview/font/PDFFont;->getFont(Lcom/sun/pdfview/PDFObject;Ljava/util/HashMap;)Lcom/sun/pdfview/font/PDFFont;

    move-result-object v0

    return-object v0
.end method

.method private nextToken()Lcom/sun/pdfview/PDFParser$Tok;
    .locals 9

    const/16 v8, 0x3e

    const/16 v7, 0xa

    const/4 v6, 0x7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    array-length v1, v0

    iget-boolean v0, p0, Lcom/sun/pdfview/PDFParser;->resend:Z

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/sun/pdfview/PDFParser;->resend:Z

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sun/pdfview/PDFParser$Tok;

    invoke-direct {v0}, Lcom/sun/pdfview/PDFParser$Tok;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    :goto_1
    iget v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v0, v0, v2

    invoke-static {v0}, Lcom/sun/pdfview/PDFFile;->isWhiteSpace(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    const/4 v1, -0x1

    iput v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v0, v0, v2

    :cond_4
    :goto_2
    const/16 v2, 0x25

    if-eq v0, v2, :cond_5

    sparse-switch v0, :sswitch_data_0

    if-ne v0, v8, :cond_9

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v1, v1, v2

    if-ne v1, v8, :cond_9

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    iput v7, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    :goto_3
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_4
    iget v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    if-ge v3, v1, :cond_6

    if-ne v0, v7, :cond_7

    :cond_6
    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    if-ge v2, v1, :cond_4

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v0, v0, v2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v0, v0, v2

    goto :goto_2

    :cond_7
    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v0, v0, v3

    goto :goto_4

    :sswitch_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    const/16 v1, 0x9

    iput v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    goto :goto_3

    :sswitch_1
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    const/16 v1, 0x8

    iput v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    goto :goto_3

    :sswitch_2
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    iput v6, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    goto :goto_3

    :sswitch_3
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    const/4 v1, 0x5

    iput v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    goto :goto_3

    :sswitch_4
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    goto :goto_3

    :sswitch_5
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v1, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v0, v0, v1

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    const/16 v1, 0xb

    iput v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    goto :goto_3

    :cond_8
    iget v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    iput v6, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->readByteArray()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    goto/16 :goto_3

    :sswitch_6
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->readName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    goto/16 :goto_3

    :sswitch_7
    iget v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->readNum()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/sun/pdfview/PDFParser$Tok;->value:D

    goto/16 :goto_3

    :cond_9
    const/16 v1, 0x61

    if-lt v0, v1, :cond_a

    const/16 v1, 0x7a

    if-le v0, v1, :cond_c

    :cond_a
    const/16 v1, 0x41

    if-lt v0, v1, :cond_b

    const/16 v1, 0x5a

    if-le v0, v1, :cond_c

    :cond_b
    const/16 v1, 0x27

    if-eq v0, v1, :cond_c

    const/16 v1, 0x22

    if-ne v0, v1, :cond_d

    :cond_c
    iget v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    const/4 v1, 0x2

    iput v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->readName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    goto/16 :goto_3

    :cond_d
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encountered character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    iput v5, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_2
        0x2d -> :sswitch_7
        0x2e -> :sswitch_7
        0x2f -> :sswitch_6
        0x30 -> :sswitch_7
        0x31 -> :sswitch_7
        0x32 -> :sswitch_7
        0x33 -> :sswitch_7
        0x34 -> :sswitch_7
        0x35 -> :sswitch_7
        0x36 -> :sswitch_7
        0x37 -> :sswitch_7
        0x38 -> :sswitch_7
        0x39 -> :sswitch_7
        0x3c -> :sswitch_5
        0x5b -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_3
        0x7d -> :sswitch_4
    .end sparse-switch
.end method

.method private parseColorSpace(Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/colorspace/PDFColorSpace;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->resources:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(Lcom/sun/pdfview/PDFObject;Ljava/util/Map;)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v0

    goto :goto_0
.end method

.method private parseInlineImage()V
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->nextToken()Lcom/sun/pdfview/PDFParser$Tok;

    move-result-object v0

    iget v2, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    if-ne v2, v4, :cond_5

    iget-object v2, v0, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v0, v0, v2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v0, v0, v2

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v0, v0, v2

    const/16 v2, 0x20

    if-ne v0, v2, :cond_2

    :cond_1
    iget v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    :cond_2
    const-string v0, "ImageMask"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v2, v4, [Ljava/lang/Double;

    new-instance v0, Ljava/lang/Double;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/lang/Double;-><init>(D)V

    aput-object v0, v2, v6

    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v4, v5}, Ljava/lang/Double;-><init>(D)V

    aput-object v0, v2, v7

    const-string v0, "Decode"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v0, v6}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getDoubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/Double;

    invoke-virtual {v0, v7}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getDoubleValue()D

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/lang/Double;-><init>(D)V

    aput-object v3, v2, v7

    :cond_3
    const-string v0, "Decode"

    new-instance v3, Lcom/sun/pdfview/PDFObject;

    invoke-direct {v3, v2}, Lcom/sun/pdfview/PDFObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v0, Lcom/sun/pdfview/PDFObject;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/sun/pdfview/PDFObject;-><init>(Lcom/sun/pdfview/PDFFile;ILjava/lang/Object;)V

    iget v1, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    :goto_1
    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/sun/pdfview/PDFFile;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    const/16 v3, 0x45

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    const/16 v3, 0x49

    if-ne v2, v3, :cond_f

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v4, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    sub-int/2addr v4, v1

    invoke-static {v3, v1, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lc/a/a/b/b;->d([B)Lc/a/a/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFObject;->setStream(Lc/a/a/b/b;)V

    iget v1, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->doImage(Lcom/sun/pdfview/PDFObject;)V

    return-void

    :cond_5
    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    const-string v2, "BPC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "BitsPerComponent"

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->parseObject()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/sun/pdfview/PDFObject;

    invoke-direct {v3, v2}, Lcom/sun/pdfview/PDFObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const-string v2, "CS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "ColorSpace"

    goto :goto_2

    :cond_8
    const-string v2, "D"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "Decode"

    goto :goto_2

    :cond_9
    const-string v2, "DP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v0, "DecodeParms"

    goto :goto_2

    :cond_a
    const-string v2, "F"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "Filter"

    goto :goto_2

    :cond_b
    const-string v2, "H"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v0, "Height"

    goto :goto_2

    :cond_c
    const-string v2, "IM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, "ImageMask"

    goto :goto_2

    :cond_d
    const-string v2, "W"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v0, "Width"

    goto :goto_2

    :cond_e
    const-string v2, "I"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "Interpolate"

    goto :goto_2

    :cond_f
    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    goto/16 :goto_1
.end method

.method private parseObject()Ljava/lang/Object;
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->nextToken()Lcom/sun/pdfview/PDFParser$Tok;

    move-result-object v0

    iget v1, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v2

    :pswitch_1
    new-instance v2, Ljava/lang/Double;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    iget-wide v0, v0, Lcom/sun/pdfview/PDFParser$Tok;->value:D

    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    iget-object v2, v0, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    :goto_1
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->parseObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    iget v0, v0, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Inline dict should have ended with \'>>\'"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v1, :cond_1

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/sun/pdfview/PDFObject;

    invoke-direct {v4, v0}, Lcom/sun/pdfview/PDFObject;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->parseObject()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->tok:Lcom/sun/pdfview/PDFParser$Tok;

    iget v1, v1, Lcom/sun/pdfview/PDFParser$Tok;->type:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Expected \']\'"

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    move-object v2, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private popArray()[Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected an [array] here: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private popFloat()F
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Expected a number here."

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private popFloat(I)[F
    .locals 3

    new-array v1, p1, [F

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private popFloatArray()[F
    .locals 4

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [Ljava/lang/Object;

    if-nez v1, :cond_0

    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Expected an [array] here."

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    new-array v3, v1, [F

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v1, v3

    if-lt v2, v1, :cond_1

    return-object v3

    :cond_1
    aget-object v1, v0, v2

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_2

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "This array doesn\'t consist only of floats."

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private popInt()I
    .locals 2

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    const-string v1, "Expected a number here."

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private popObject()Lcom/sun/pdfview/PDFObject;
    .locals 4

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/sun/pdfview/PDFObject;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected a reference here: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Lcom/sun/pdfview/PDFObject;

    return-object v0
.end method

.method private popString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sun/pdfview/PDFParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected string here: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private processBTCmd()V
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFTextFormat;->reset()V

    return-void
.end method

.method private processQCmd()V
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPage;->addPop()V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->parserStates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFParser$ParserState;

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    return-void
.end method

.method private readByteArray()Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    array-length v6, v4

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    if-ge v3, v6, :cond_0

    iget v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v3, v4, v3

    const/16 v7, 0x3e

    if-ne v3, v7, :cond_1

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v3, v4, v3

    int-to-char v3, v3

    const/16 v7, 0x30

    if-lt v3, v7, :cond_3

    const/16 v7, 0x39

    if-gt v3, v7, :cond_3

    add-int/lit8 v3, v3, -0x30

    int-to-byte v3, v3

    :goto_1
    rem-int/lit8 v7, v2, 0x2

    rsub-int/lit8 v7, v7, 0x1

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v8, v7, 0x2

    shl-int/2addr v3, v8

    or-int/2addr v0, v3

    int-to-char v0, v0

    if-nez v7, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    goto :goto_0

    :cond_3
    const/16 v7, 0x61

    if-lt v3, v7, :cond_4

    const/16 v7, 0x66

    if-gt v3, v7, :cond_4

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    goto :goto_1

    :cond_4
    const/16 v7, 0x41

    if-lt v3, v7, :cond_5

    const/16 v7, 0x46

    if-gt v3, v7, :cond_5

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    int-to-byte v3, v3

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    goto :goto_0
.end method

.method private readName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v1, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    :goto_0
    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    array-length v3, v0

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v2, v0, v2

    invoke-static {v2}, Lcom/sun/pdfview/PDFFile;->isRegularCharacter(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    sub-int/2addr v3, v1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    :cond_1
    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    goto :goto_0
.end method

.method private readNum()D
    .locals 10

    iget-object v6, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    iget v0, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v1, v6, v0

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    move v5, v0

    :goto_0
    const/16 v0, 0x2e

    if-ne v1, v0, :cond_2

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_3

    const-wide v2, 0x3fb999999999999aL    # 0.1

    :goto_2
    const/16 v0, 0x30

    if-lt v1, v0, :cond_4

    const/16 v0, 0x39

    if-gt v1, v0, :cond_4

    add-int/lit8 v0, v1, -0x30

    :goto_3
    int-to-double v0, v0

    :goto_4
    iget v7, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v7, v6, v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_6

    if-eqz v4, :cond_5

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    :goto_5
    if-eqz v5, :cond_0

    neg-double v0, v0

    :cond_0
    return-wide v0

    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    const/4 v4, 0x1

    const-wide v2, 0x3fb999999999999aL    # 0.1

    goto :goto_4

    :cond_6
    const/16 v8, 0x30

    if-lt v7, v8, :cond_8

    const/16 v8, 0x39

    if-gt v7, v8, :cond_8

    add-int/lit8 v7, v7, -0x30

    if-eqz v4, :cond_7

    int-to-double v8, v7

    mul-double/2addr v8, v2

    add-double/2addr v0, v8

    const-wide v8, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v2, v8

    goto :goto_4

    :cond_7
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v8

    int-to-double v8, v7

    add-double/2addr v0, v8

    goto :goto_4

    :cond_8
    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    goto :goto_5
.end method

.method private readString()Ljava/lang/String;
    .locals 11

    const/16 v10, 0x38

    const/16 v9, 0x30

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    array-length v8, v6

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    if-lt v2, v8, :cond_1

    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v2, v6, v2

    const/16 v3, 0x29

    if-ne v2, v3, :cond_3

    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_0

    move v0, v3

    :cond_2
    :goto_1
    int-to-char v2, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const/16 v3, 0x28

    if-ne v2, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v2, v6, v2

    if-lt v2, v9, :cond_7

    if-ge v2, v10, :cond_7

    move v3, v1

    move v4, v2

    move v2, v1

    :goto_2
    if-lt v4, v9, :cond_5

    if-ge v4, v10, :cond_5

    const/4 v5, 0x3

    if-lt v3, v5, :cond_6

    :cond_5
    iget v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    goto :goto_1

    :cond_6
    shl-int/lit8 v2, v2, 0x3

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, -0x30

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    aget-byte v5, v6, v2

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    move v4, v5

    goto :goto_2

    :cond_7
    const/16 v3, 0x6e

    if-ne v2, v3, :cond_8

    const/16 v2, 0xa

    goto :goto_1

    :cond_8
    const/16 v3, 0x72

    if-ne v2, v3, :cond_9

    const/16 v2, 0xd

    goto :goto_1

    :cond_9
    const/16 v3, 0x74

    if-ne v2, v3, :cond_a

    const/16 v2, 0x9

    goto :goto_1

    :cond_a
    const/16 v3, 0x62

    if-ne v2, v3, :cond_b

    const/16 v2, 0x8

    goto :goto_1

    :cond_b
    const/16 v3, 0x66

    if-ne v2, v3, :cond_2

    const/16 v2, 0xc

    goto :goto_1
.end method

.method public static setDebugLevel(I)V
    .locals 0

    sput p0, Lcom/sun/pdfview/PDFParser;->debuglevel:I

    return-void
.end method

.method private setGSState(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    const-string v1, "ExtGState"

    invoke-direct {p0, p1, v1}, Lcom/sun/pdfview/PDFParser;->findResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    const-string v2, "LW"

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sun/pdfview/PDFPage;->addStrokeWidth(F)V

    :cond_0
    const-string v2, "LC"

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sun/pdfview/PDFPage;->addEndCap(I)V

    :cond_1
    const-string v2, "LJ"

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sun/pdfview/PDFPage;->addLineJoin(I)V

    :cond_2
    const-string v2, "Font"

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v3, v3, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-virtual {v2, v0}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/pdfview/PDFParser;->getFontFrom(Ljava/lang/String;)Lcom/sun/pdfview/font/PDFFont;

    move-result-object v4

    invoke-virtual {v2, v6}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/sun/pdfview/PDFTextFormat;->setFont(Lcom/sun/pdfview/font/PDFFont;F)V

    :cond_3
    const-string v2, "ML"

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sun/pdfview/PDFPage;->addMiterLimit(F)V

    :cond_4
    const-string v2, "D"

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v3

    array-length v4, v3

    new-array v4, v4, [F

    :goto_0
    array-length v5, v3

    if-lt v0, v5, :cond_8

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v2, v6}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v2

    invoke-virtual {v0, v4, v2}, Lcom/sun/pdfview/PDFPage;->addDash([FF)V

    :cond_5
    const-string v0, "CA"

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/sun/pdfview/PDFPage;->addStrokeAlpha(F)V

    :cond_6
    const-string v0, "ca"

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFPage;->addFillAlpha(F)V

    :cond_7
    return-void

    :cond_8
    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private throwback()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/pdfview/PDFParser;->resend:Z

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFTextFormat;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPage;->finish()V

    :cond_1
    iput-object v1, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    iput-object v1, p0, Lcom/sun/pdfview/PDFParser;->parserStates:Ljava/util/Stack;

    iput-object v1, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iput-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    iput-object v1, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    return-void
.end method

.method public dumpStream()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v1, 0xd

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/pdfview/PDFParser;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dumpStreamToError()V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/pdfview/PDFParser;->errorwritten:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/pdfview/PDFParser;->errorwritten:Z

    :try_start_0
    const-string v0, "PDFError"

    const-string v1, ".err"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stream:[B

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public iterate()I
    .locals 11

    const/4 v7, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->pageRef:Lc/a/a/d/c;

    invoke-virtual {v0}, Lc/a/a/d/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFPage;

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Page gone.  Stopping"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->parseObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/sun/pdfview/PDFParser$Tok;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/sun/pdfview/PDFParser$Tok;

    iget-object v9, v0, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v0

    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    :goto_2
    add-int/2addr v1, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_5

    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    :goto_3
    add-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    iget-boolean v0, p0, Lcom/sun/pdfview/PDFParser;->catchexceptions:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_7

    :goto_4
    :sswitch_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0, v8}, Ljava/util/Stack;->setSize(I)V

    :cond_2
    :goto_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    move v0, v7

    goto :goto_0

    :cond_3
    move v1, v8

    goto :goto_1

    :cond_4
    move v0, v8

    goto :goto_2

    :cond_5
    move v0, v8

    goto :goto_3

    :sswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->parserStates:Ljava/util/Stack;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFParser$ParserState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFParser$ParserState;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPage;->addPush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "ANDPDF.pdfparser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cmd=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :sswitch_2
    :try_start_2
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->processQCmd()V

    goto :goto_4

    :sswitch_3
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {v1, v0}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;[F)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFPage;->addXform(Landroid/graphics/Matrix;)V

    goto :goto_4

    :sswitch_4
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFPage;->addStrokeWidth(F)V

    goto :goto_4

    :sswitch_5
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFPage;->addEndCap(I)V

    goto :goto_4

    :sswitch_6
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFPage;->addLineJoin(I)V

    goto/16 :goto_4

    :sswitch_7
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popInt()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFPage;->addMiterLimit(F)V

    goto/16 :goto_4

    :sswitch_8
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloatArray()[F

    move-result-object v1

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v2, v1, v0}, Lcom/sun/pdfview/PDFPage;->addDash([FF)V

    goto/16 :goto_4

    :sswitch_9
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    goto/16 :goto_4

    :sswitch_a
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->setGSState(Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_b
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v1

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    goto/16 :goto_4

    :sswitch_c
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v1

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_4

    :sswitch_d
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v6

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget v1, v6, v1

    const/4 v2, 0x1

    aget v2, v6, v2

    const/4 v3, 0x2

    aget v3, v6, v3

    const/4 v4, 0x3

    aget v4, v6, v4

    const/4 v5, 0x4

    aget v5, v6, v5

    const/4 v10, 0x5

    aget v6, v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_4

    :sswitch_e
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto/16 :goto_4

    :sswitch_f
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v6

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    aget v1, v6, v1

    const/4 v2, 0x1

    aget v2, v6, v2

    const/4 v3, 0x2

    aget v3, v6, v3

    const/4 v4, 0x3

    aget v4, v6, v4

    const/4 v5, 0x2

    aget v5, v6, v5

    const/4 v10, 0x3

    aget v6, v6, v10

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/16 :goto_4

    :sswitch_10
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_4

    :sswitch_11
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    add-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    add-float/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    add-float/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto/16 :goto_4

    :sswitch_12
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFPage;->addPath(Landroid/graphics/Path;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    goto/16 :goto_4

    :sswitch_13
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFPage;->addPath(Landroid/graphics/Path;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    goto/16 :goto_4

    :sswitch_14
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    or-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFPage;->addPath(Landroid/graphics/Path;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    goto/16 :goto_4

    :sswitch_15
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    or-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFPage;->addPath(Landroid/graphics/Path;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    goto/16 :goto_4

    :sswitch_16
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    or-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFPage;->addPath(Landroid/graphics/Path;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    goto/16 :goto_4

    :sswitch_17
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    or-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFPage;->addPath(Landroid/graphics/Path;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    goto/16 :goto_4

    :sswitch_18
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    or-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFPage;->addPath(Landroid/graphics/Path;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    goto/16 :goto_4

    :sswitch_19
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    or-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFPage;->addPath(Landroid/graphics/Path;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    goto/16 :goto_4

    :sswitch_1a
    iget v0, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFPage;->addPath(Landroid/graphics/Path;I)V

    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    goto/16 :goto_4

    :sswitch_1b
    const/4 v0, 0x4

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    goto/16 :goto_4

    :sswitch_1c
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    goto/16 :goto_4

    :sswitch_1d
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Shading"

    invoke-direct {p0, v0, v1}, Lcom/sun/pdfview/PDFParser;->findResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->doShader(Lcom/sun/pdfview/PDFObject;)V

    goto/16 :goto_4

    :sswitch_1e
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    new-instance v1, Lcom/sun/pdfview/PDFObject;

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/pdfview/PDFObject;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/sun/pdfview/PDFParser;->parseColorSpace(Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    goto/16 :goto_4

    :sswitch_1f
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    new-instance v1, Lcom/sun/pdfview/PDFObject;

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/pdfview/PDFObject;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/sun/pdfview/PDFParser;->parseColorSpace(Lcom/sun/pdfview/PDFObject;)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    goto/16 :goto_4

    :sswitch_20
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-virtual {v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getNumComponents()I

    move-result v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v2, v2, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getPaint([F)Lcom/sun/pdfview/PDFPaint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFPage;->addStrokePaint(Lcom/sun/pdfview/PDFPaint;)V

    goto/16 :goto_4

    :sswitch_21
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-virtual {v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getNumComponents()I

    move-result v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v2, v2, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getPaint([F)Lcom/sun/pdfview/PDFPaint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFPage;->addStrokePaint(Lcom/sun/pdfview/PDFPaint;)V

    goto/16 :goto_4

    :sswitch_22
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-virtual {v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getNumComponents()I

    move-result v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v2, v2, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getFillPaint([F)Lcom/sun/pdfview/PDFPaint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFPage;->addFillPaint(Lcom/sun/pdfview/PDFPaint;)V

    goto/16 :goto_4

    :sswitch_23
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-virtual {v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getNumComponents()I

    move-result v0

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v2, v2, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getFillPaint([F)Lcom/sun/pdfview/PDFPaint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/pdfview/PDFPage;->addFillPaint(Lcom/sun/pdfview/PDFPaint;)V

    goto/16 :goto_4

    :sswitch_24
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v1, v1, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getPaint([F)Lcom/sun/pdfview/PDFPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFPage;->addStrokePaint(Lcom/sun/pdfview/PDFPaint;)V

    goto/16 :goto_4

    :sswitch_25
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v1, v1, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getFillPaint([F)Lcom/sun/pdfview/PDFPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFPage;->addFillPaint(Lcom/sun/pdfview/PDFPaint;)V

    goto/16 :goto_4

    :sswitch_26
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v1, v1, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getPaint([F)Lcom/sun/pdfview/PDFPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFPage;->addStrokePaint(Lcom/sun/pdfview/PDFPaint;)V

    goto/16 :goto_4

    :sswitch_27
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v1, v1, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getFillPaint([F)Lcom/sun/pdfview/PDFPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFPage;->addFillPaint(Lcom/sun/pdfview/PDFPaint;)V

    goto/16 :goto_4

    :sswitch_28
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v1, v1, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getPaint([F)Lcom/sun/pdfview/PDFPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFPage;->addStrokePaint(Lcom/sun/pdfview/PDFPaint;)V

    goto/16 :goto_4

    :sswitch_29
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v1, v1, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getFillPaint([F)Lcom/sun/pdfview/PDFPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFPage;->addFillPaint(Lcom/sun/pdfview/PDFPaint;)V

    goto/16 :goto_4

    :sswitch_2a
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XObject"

    invoke-direct {p0, v0, v1}, Lcom/sun/pdfview/PDFParser;->findResource(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->doXObject(Lcom/sun/pdfview/PDFObject;)V

    goto/16 :goto_4

    :sswitch_2b
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->processBTCmd()V

    goto/16 :goto_4

    :sswitch_2c
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFTextFormat;->end()V

    goto/16 :goto_4

    :sswitch_2d
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setCharSpacing(F)V

    goto/16 :goto_4

    :sswitch_2e
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setWordSpacing(F)V

    goto/16 :goto_4

    :sswitch_2f
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setHorizontalScale(F)V

    goto/16 :goto_4

    :sswitch_30
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setLeading(F)V

    goto/16 :goto_4

    :sswitch_31
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v2, v2, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-direct {p0, v1}, Lcom/sun/pdfview/PDFParser;->getFontFrom(Ljava/lang/String;)Lcom/sun/pdfview/font/PDFFont;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/sun/pdfview/PDFTextFormat;->setFont(Lcom/sun/pdfview/font/PDFFont;F)V

    goto/16 :goto_4

    :sswitch_32
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setMode(I)V

    goto/16 :goto_4

    :sswitch_33
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setRise(F)V

    goto/16 :goto_4

    :sswitch_34
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v1

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v2, v2, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-virtual {v2, v1, v0}, Lcom/sun/pdfview/PDFTextFormat;->carriageReturn(FF)V

    goto/16 :goto_4

    :sswitch_35
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v0

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v1

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v2, v2, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    neg-float v3, v0

    invoke-virtual {v2, v3}, Lcom/sun/pdfview/PDFTextFormat;->setLeading(F)V

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v2, v2, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-virtual {v2, v1, v0}, Lcom/sun/pdfview/PDFTextFormat;->carriageReturn(FF)V

    goto/16 :goto_4

    :sswitch_36
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/pdfview/PDFTextFormat;->setMatrix([F)V

    goto/16 :goto_4

    :sswitch_37
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFTextFormat;->carriageReturn()V

    goto/16 :goto_4

    :sswitch_38
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFTextFormat;->doText(Lcom/sun/pdfview/PDFPage;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_39
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFTextFormat;->carriageReturn()V

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFTextFormat;->doText(Lcom/sun/pdfview/PDFPage;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_3a
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v1

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popFloat()F

    move-result v2

    iget-object v3, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v3, v3, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-virtual {v3, v2}, Lcom/sun/pdfview/PDFTextFormat;->setWordSpacing(F)V

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v2, v2, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    invoke-virtual {v2, v1}, Lcom/sun/pdfview/PDFTextFormat;->setCharSpacing(F)V

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v1, v1, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    iget-object v2, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v1, v2, v0}, Lcom/sun/pdfview/PDFTextFormat;->doText(Lcom/sun/pdfview/PDFPage;Ljava/lang/String;)V

    goto/16 :goto_4

    :sswitch_3b
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    iget-object v0, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/pdfview/PDFTextFormat;->doText(Lcom/sun/pdfview/PDFPage;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :sswitch_3c
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->parseInlineImage()V

    goto/16 :goto_4

    :sswitch_3d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/pdfview/PDFParser;->catchexceptions:Z

    goto/16 :goto_4

    :sswitch_3e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/pdfview/PDFParser;->catchexceptions:Z

    goto/16 :goto_4

    :sswitch_3f
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popString()Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_40
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popString()Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_41
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popString()Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_42
    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->popString()Ljava/lang/String;

    goto/16 :goto_4

    :sswitch_43
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    goto/16 :goto_4

    :sswitch_44
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/sun/pdfview/PDFParser;->popFloat(I)[F

    goto/16 :goto_4

    :sswitch_45
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->processQCmd()V

    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->processBTCmd()V

    goto/16 :goto_4

    :sswitch_46
    invoke-direct {p0}, Lcom/sun/pdfview/PDFParser;->processQCmd()V

    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->parserStates:Ljava/util/Stack;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFParser$ParserState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFParser$ParserState;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->cmds:Lcom/sun/pdfview/PDFPage;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFPage;->addPush()V

    goto/16 :goto_4

    :cond_7
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown command: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    iget-object v1, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3a
        0x27 -> :sswitch_39
        0x42 -> :sswitch_16
        0x46 -> :sswitch_14
        0x47 -> :sswitch_24
        0x4a -> :sswitch_5
        0x4b -> :sswitch_28
        0x4d -> :sswitch_7
        0x51 -> :sswitch_2
        0x53 -> :sswitch_12
        0x57 -> :sswitch_1b
        0x62 -> :sswitch_18
        0x63 -> :sswitch_d
        0x64 -> :sswitch_8
        0x66 -> :sswitch_14
        0x67 -> :sswitch_25
        0x68 -> :sswitch_10
        0x69 -> :sswitch_9
        0x6a -> :sswitch_6
        0x6b -> :sswitch_29
        0x6c -> :sswitch_c
        0x6d -> :sswitch_b
        0x6e -> :sswitch_1a
        0x71 -> :sswitch_1
        0x73 -> :sswitch_13
        0x76 -> :sswitch_e
        0x77 -> :sswitch_4
        0x79 -> :sswitch_f
        0x2a42 -> :sswitch_17
        0x2a54 -> :sswitch_37
        0x2a57 -> :sswitch_1c
        0x2a62 -> :sswitch_19
        0x2a66 -> :sswitch_15
        0x3064 -> :sswitch_43
        0x3164 -> :sswitch_44
        0x4353 -> :sswitch_20
        0x4454 -> :sswitch_35
        0x4752 -> :sswitch_26
        0x4942 -> :sswitch_3c
        0x4a54 -> :sswitch_3b
        0x4c54 -> :sswitch_30
        0x5044 -> :sswitch_40
        0x504d -> :sswitch_3f
        0x5343 -> :sswitch_1e
        0x5442 -> :sswitch_2b
        0x5445 -> :sswitch_2c
        0x5842 -> :sswitch_3d
        0x5845 -> :sswitch_3e
        0x6354 -> :sswitch_2d
        0x6373 -> :sswitch_22
        0x6454 -> :sswitch_34
        0x6572 -> :sswitch_11
        0x6654 -> :sswitch_31
        0x6772 -> :sswitch_27
        0x6873 -> :sswitch_1d
        0x6972 -> :sswitch_0
        0x6a54 -> :sswitch_38
        0x6d54 -> :sswitch_36
        0x6d63 -> :sswitch_3
        0x6f44 -> :sswitch_2a
        0x7151 -> :sswitch_46
        0x7254 -> :sswitch_32
        0x7354 -> :sswitch_33
        0x7363 -> :sswitch_1f
        0x7367 -> :sswitch_a
        0x7754 -> :sswitch_2e
        0x7a54 -> :sswitch_2f
        0x434442 -> :sswitch_42
        0x434d42 -> :sswitch_41
        0x434d45 -> :sswitch_0
        0x4e4353 -> :sswitch_21
        0x544251 -> :sswitch_45
        0x6e6373 -> :sswitch_23
    .end sparse-switch
.end method

.method public setup()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->stack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->parserStates:Ljava/util/Stack;

    new-instance v0, Lcom/sun/pdfview/PDFParser$ParserState;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/PDFParser$ParserState;-><init>(Lcom/sun/pdfview/PDFParser;)V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/sun/pdfview/PDFParser;->path:Landroid/graphics/Path;

    iput v2, p0, Lcom/sun/pdfview/PDFParser;->loc:I

    iput v2, p0, Lcom/sun/pdfview/PDFParser;->clip:I

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    invoke-static {v2}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$ParserState;->fillCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    invoke-static {v2}, Lcom/sun/pdfview/colorspace/PDFColorSpace;->getColorSpace(I)Lcom/sun/pdfview/colorspace/PDFColorSpace;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$ParserState;->strokeCS:Lcom/sun/pdfview/colorspace/PDFColorSpace;

    iget-object v0, p0, Lcom/sun/pdfview/PDFParser;->state:Lcom/sun/pdfview/PDFParser$ParserState;

    new-instance v1, Lcom/sun/pdfview/PDFTextFormat;

    invoke-direct {v1}, Lcom/sun/pdfview/PDFTextFormat;-><init>()V

    iput-object v1, v0, Lcom/sun/pdfview/PDFParser$ParserState;->textFormat:Lcom/sun/pdfview/PDFTextFormat;

    return-void
.end method
