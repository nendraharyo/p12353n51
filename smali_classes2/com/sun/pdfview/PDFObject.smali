.class public Lcom/sun/pdfview/PDFObject;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final ARRAY:I = 0x5

.field public static final BOOLEAN:I = 0x1

.field public static final DICTIONARY:I = 0x6

.field public static final INDIRECT:I = 0x0

.field public static final KEYWORD:I = 0x9

.field public static final NAME:I = 0x4

.field public static final NULL:I = 0x8

.field public static final NUMBER:I = 0x2

.field public static final OBJ_NUM_EMBEDDED:I = -0x2

.field public static final OBJ_NUM_TRAILER:I = -0x1

.field public static final STREAM:I = 0x7

.field public static final STRING:I = 0x3

.field public static final nullObj:Lcom/sun/pdfview/PDFObject;


# instance fields
.field private cache:Lc/a/a/d/b;

.field private decodedStream:Lc/a/a/d/b;

.field private objGen:I

.field private objNum:I

.field private owner:Lcom/sun/pdfview/PDFFile;

.field private stream:Lc/a/a/b/b;

.field private type:I

.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-class v0, Lcom/sun/pdfview/PDFObject;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/pdfview/PDFObject;->$assertionsDisabled:Z

    new-instance v0, Lcom/sun/pdfview/PDFObject;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v1, v2}, Lcom/sun/pdfview/PDFObject;-><init>(Lcom/sun/pdfview/PDFFile;ILjava/lang/Object;)V

    sput-object v0, Lcom/sun/pdfview/PDFObject;->nullObj:Lcom/sun/pdfview/PDFObject;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/pdfview/PDFFile;ILjava/lang/Object;)V
    .locals 3

    const/16 v2, 0x9

    const/4 v1, 0x1

    const/4 v0, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sun/pdfview/PDFObject;->objNum:I

    iput v0, p0, Lcom/sun/pdfview/PDFObject;->objGen:I

    iput p2, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sun/pdfview/PDFObject;->owner:Lcom/sun/pdfview/PDFFile;

    return-void

    :cond_1
    if-ne p2, v2, :cond_2

    const-string v0, "true"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_0

    const-string v0, "false"

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/pdfview/PDFFile;Lcom/sun/pdfview/PDFXref;)V
    .locals 1

    const/4 v0, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sun/pdfview/PDFObject;->objNum:I

    iput v0, p0, Lcom/sun/pdfview/PDFObject;->objGen:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    iput-object p2, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sun/pdfview/PDFObject;->owner:Lcom/sun/pdfview/PDFFile;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v0, -0x2

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sun/pdfview/PDFObject;->objNum:I

    iput v0, p0, Lcom/sun/pdfview/PDFObject;->objGen:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/pdfview/PDFObject;->owner:Lcom/sun/pdfview/PDFFile;

    iput-object p1, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    iput v3, p0, Lcom/sun/pdfview/PDFObject;->type:I

    goto :goto_0

    :cond_2
    instance-of v0, p1, [Lcom/sun/pdfview/PDFObject;

    if-eqz v0, :cond_3

    iput v4, p0, Lcom/sun/pdfview/PDFObject;->type:I

    goto :goto_0

    :cond_3
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    new-array v1, v0, [Lcom/sun/pdfview/PDFObject;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_4

    iput-object v1, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    iput v4, p0, Lcom/sun/pdfview/PDFObject;->type:I

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/sun/pdfview/PDFObject;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/sun/pdfview/PDFObject;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    iput v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    goto :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iput v2, p0, Lcom/sun/pdfview/PDFObject;->type:I

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/sun/pdfview/PDFParser$Tok;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/sun/pdfview/PDFParser$Tok;

    iget-object v0, p1, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    iput v2, p0, Lcom/sun/pdfview/PDFObject;->type:I

    goto :goto_0

    :cond_8
    iget-object v0, p1, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    iput v2, p0, Lcom/sun/pdfview/PDFObject;->type:I

    goto :goto_0

    :cond_9
    iget-object v0, p1, Lcom/sun/pdfview/PDFParser$Tok;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    iput v3, p0, Lcom/sun/pdfview/PDFObject;->type:I

    goto :goto_0

    :cond_a
    new-instance v0, Lcom/sun/pdfview/PDFParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad type for raw PDFObject: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/pdfview/PDFParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeStream()Lc/a/a/b/b;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/pdfview/PDFObject;->decodedStream:Lc/a/a/d/b;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->decodedStream:Lc/a/a/d/b;

    invoke-virtual {v0}, Lc/a/a/d/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/b/b;

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->stream:Lc/a/a/b/b;

    invoke-virtual {v0}, Lc/a/a/b/b;->e()V

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->stream:Lc/a/a/b/b;

    invoke-static {p0, v0}, Lcom/sun/pdfview/decode/PDFDecoder;->decodeStream(Lcom/sun/pdfview/PDFObject;Lc/a/a/b/b;)Lc/a/a/b/b;

    move-result-object v0

    new-instance v1, Lc/a/a/d/b;

    invoke-direct {v1, v0}, Lc/a/a/d/b;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sun/pdfview/PDFObject;->decodedStream:Lc/a/a/d/b;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public cachedDereference()Lcom/sun/pdfview/PDFObject;
    .locals 4

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/pdfview/PDFObject;->cache:Lc/a/a/d/b;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->cache:Lc/a/a/d/b;

    invoke-virtual {v0}, Lc/a/a/d/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sun/pdfview/PDFObject;->owner:Lcom/sun/pdfview/PDFFile;

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad seed (owner==null)!  Object="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    move-object p0, v0

    :cond_3
    return-object p0
.end method

.method public dereference()Lcom/sun/pdfview/PDFObject;
    .locals 3

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/pdfview/PDFObject;->cache:Lc/a/a/d/b;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->cache:Lc/a/a/d/b;

    invoke-virtual {v0}, Lc/a/a/d/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    if-nez v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->owner:Lcom/sun/pdfview/PDFFile;

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad seed (owner==null)!  Object="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/sun/pdfview/PDFObject;->owner:Lcom/sun/pdfview/PDFFile;

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, Lcom/sun/pdfview/PDFXref;

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getDecrypter()Lcom/sun/pdfview/decrypt/PDFDecrypter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sun/pdfview/PDFFile;->dereference(Lcom/sun/pdfview/PDFXref;Lcom/sun/pdfview/decrypt/PDFDecrypter;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    new-instance v1, Lc/a/a/d/b;

    invoke-direct {v1, v0}, Lc/a/a/d/b;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sun/pdfview/PDFObject;->cache:Lc/a/a/d/b;

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sun/pdfview/PDFObject;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sun/pdfview/PDFObject;

    iget v0, p1, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, Lcom/sun/pdfview/PDFXref;

    iget-object v1, p1, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v1, Lcom/sun/pdfview/PDFXref;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFXref;->getID()I

    move-result v4

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFXref;->getID()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFXref;->getGeneration()I

    move-result v4

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFXref;->getGeneration()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFXref;->getCompressed()Z

    move-result v0

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFXref;->getCompressed()Z

    move-result v1

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public getArray()[Lcom/sun/pdfview/PDFObject;
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getArray()[Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/sun/pdfview/PDFObject;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sun/pdfview/PDFObject;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_0
.end method

.method public getAt(I)Lcom/sun/pdfview/PDFObject;
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/pdfview/PDFObject;->getAt(I)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/sun/pdfview/PDFObject;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBooleanValue()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getBooleanValue()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getCache()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getCache()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->cache:Lc/a/a/d/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->cache:Lc/a/a/d/b;

    invoke-virtual {v0}, Lc/a/a/d/b;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDecrypter()Lcom/sun/pdfview/decrypt/PDFDecrypter;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->owner:Lcom/sun/pdfview/PDFFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->owner:Lcom/sun/pdfview/PDFFile;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFFile;->getDefaultDecrypter()Lcom/sun/pdfview/decrypt/PDFDecrypter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/sun/pdfview/decrypt/IdentityDecrypter;->getInstance()Lcom/sun/pdfview/decrypt/IdentityDecrypter;

    move-result-object v0

    goto :goto_0
.end method

.method public getDictKeys()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getDictKeys()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/pdfview/PDFObject;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDictionary()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sun/pdfview/PDFObject;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getDictionary()Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public getDoubleValue()D
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getDoubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFloatValue()F
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getFloatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntValue()I
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getIntValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjGen()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->objGen:I

    return v0
.end method

.method public getObjNum()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->objNum:I

    return v0
.end method

.method public getStream()[B
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStream()[B

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/sun/pdfview/PDFObject;->stream:Lc/a/a/b/b;

    if-eqz v1, :cond_3

    check-cast v0, [B

    iget-object v1, p0, Lcom/sun/pdfview/PDFObject;->stream:Lc/a/a/b/b;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/sun/pdfview/PDFObject;->decodeStream()Lc/a/a/b/b;

    move-result-object v2

    invoke-virtual {v2}, Lc/a/a/b/b;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lc/a/a/b/b;->h()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lc/a/a/b/b;->i()[B

    move-result-object v0

    array-length v3, v0

    invoke-virtual {v2}, Lc/a/a/b/b;->c()I

    move-result v4

    if-ne v3, v4, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lc/a/a/b/b;->c()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Lc/a/a/b/b;->a([B)V

    invoke-virtual {v2}, Lc/a/a/b/b;->j()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/pdfview/PDFStringUtil;->asBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getStreamBuffer()Lc/a/a/b/b;
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStreamBuffer()Lc/a/a/b/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->stream:Lc/a/a/b/b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sun/pdfview/PDFObject;->stream:Lc/a/a/b/b;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/sun/pdfview/PDFObject;->decodeStream()Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/b/b;->k()Lc/a/a/b/b;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lc/a/a/b/b;->d([B)Lc/a/a/b/b;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextStringValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/pdfview/PDFStringUtil;->asTextString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    goto :goto_0
.end method

.method public isDictType(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/pdfview/PDFObject;->isDictType(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    :cond_2
    const-string v1, "Type"

    invoke-virtual {p0, v1}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIndirect()Z
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCache(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->dereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/pdfview/PDFObject;->setCache(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lc/a/a/d/b;

    invoke-direct {v0, p1}, Lc/a/a/d/b;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/pdfview/PDFObject;->cache:Lc/a/a/d/b;

    goto :goto_0
.end method

.method public setObjectId(II)V
    .locals 2

    const/4 v1, -0x1

    sget-boolean v0, Lcom/sun/pdfview/PDFObject;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-ge p1, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/sun/pdfview/PDFObject;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ge p2, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Lcom/sun/pdfview/PDFObject;->objNum:I

    iput p2, p0, Lcom/sun/pdfview/PDFObject;->objGen:I

    return-void
.end method

.method public setStream(Lc/a/a/b/b;)V
    .locals 1

    const/4 v0, 0x7

    iput v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    iput-object p1, p0, Lcom/sun/pdfview/PDFObject;->stream:Lc/a/a/b/b;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x1e

    :try_start_0
    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Indirect to #"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, Lcom/sun/pdfview/PDFXref;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFXref;->getID()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, Lcom/sun/pdfview/PDFXref;

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFXref;->getCompressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " comp"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->cachedDereference()Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v0, "<ref>"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_0
    const-string v0, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caught an error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_2
    :try_start_5
    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Boolean: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getBooleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "true"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    const-string v0, "false"

    goto :goto_4

    :cond_4
    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getDoubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "String: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Name: /"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_7
    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Array, length="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, [Lcom/sun/pdfview/PDFObject;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_8
    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_d

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Type"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "Subtype"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "S"

    invoke-virtual {p0, v0}, Lcom/sun/pdfview/PDFObject;->getDictRef(Ljava/lang/String;)Lcom/sun/pdfview/PDFObject;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    :goto_5
    const-string v0, " dictionary. Keys:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/sun/pdfview/PDFObject;->value:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_b
    const-string v0, "Untyped"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_d
    iget v1, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getStream()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v1

    if-nez v1, :cond_e

    const-string v0, "Broken stream"

    goto/16 :goto_3

    :cond_e
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stream: [["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    array-length v5, v1

    if-le v5, v0, :cond_f

    :goto_7
    invoke-direct {v3, v1, v4, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_f
    array-length v0, v1

    goto :goto_7

    :cond_10
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    const-string v0, "Null"

    goto/16 :goto_3

    :cond_11
    :try_start_7
    iget v0, p0, Lcom/sun/pdfview/PDFObject;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keyword: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/PDFObject;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v0

    goto/16 :goto_3

    :cond_12
    const-string v0, "Whoops!  big error!  Unknown type"

    goto/16 :goto_3
.end method
