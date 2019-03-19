.class public Lcom/sun/pdfview/font/ttf/TrueTypeTable;
.super Ljava/lang/Object;


# static fields
.field public static final CMAP_TABLE:I = 0x636d6170

.field public static final GLYF_TABLE:I = 0x676c7966

.field public static final HEAD_TABLE:I = 0x68656164

.field public static final HHEA_TABLE:I = 0x68686561

.field public static final HMTX_TABLE:I = 0x686d7478

.field public static final LOCA_TABLE:I = 0x6c6f6361

.field public static final MAXP_TABLE:I = 0x6d617870

.field public static final NAME_TABLE:I = 0x6e616d65

.field public static final POST_TABLE:I = 0x706f7374


# instance fields
.field private data:Lc/a/a/b/b;

.field private tag:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->tag:I

    return-void
.end method

.method public static createTable(Lcom/sun/pdfview/font/ttf/TrueTypeFont;Ljava/lang/String;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->createTable(Lcom/sun/pdfview/font/ttf/TrueTypeFont;Ljava/lang/String;Lc/a/a/b/b;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    move-result-object v0

    return-object v0
.end method

.method public static createTable(Lcom/sun/pdfview/font/ttf/TrueTypeFont;Ljava/lang/String;Lc/a/a/b/b;)Lcom/sun/pdfview/font/ttf/TrueTypeTable;
    .locals 2

    invoke-static {p1}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->stringToTag(Ljava/lang/String;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Lcom/sun/pdfview/font/ttf/TrueTypeTable;

    invoke-direct {v0, v1}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;-><init>(I)V

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->setData(Lc/a/a/b/b;)V

    :cond_0
    return-object v0

    :sswitch_0
    new-instance v0, Lcom/sun/pdfview/font/ttf/CmapTable;

    invoke-direct {v0}, Lcom/sun/pdfview/font/ttf/CmapTable;-><init>()V

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/sun/pdfview/font/ttf/GlyfTable;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/font/ttf/GlyfTable;-><init>(Lcom/sun/pdfview/font/ttf/TrueTypeFont;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/sun/pdfview/font/ttf/HeadTable;

    invoke-direct {v0}, Lcom/sun/pdfview/font/ttf/HeadTable;-><init>()V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/sun/pdfview/font/ttf/HheaTable;

    invoke-direct {v0}, Lcom/sun/pdfview/font/ttf/HheaTable;-><init>()V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/sun/pdfview/font/ttf/HmtxTable;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/font/ttf/HmtxTable;-><init>(Lcom/sun/pdfview/font/ttf/TrueTypeFont;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/sun/pdfview/font/ttf/LocaTable;

    invoke-direct {v0, p0}, Lcom/sun/pdfview/font/ttf/LocaTable;-><init>(Lcom/sun/pdfview/font/ttf/TrueTypeFont;)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/sun/pdfview/font/ttf/MaxpTable;

    invoke-direct {v0}, Lcom/sun/pdfview/font/ttf/MaxpTable;-><init>()V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/sun/pdfview/font/ttf/NameTable;

    invoke-direct {v0}, Lcom/sun/pdfview/font/ttf/NameTable;-><init>()V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/sun/pdfview/font/ttf/PostTable;

    invoke-direct {v0}, Lcom/sun/pdfview/font/ttf/PostTable;-><init>()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x636d6170 -> :sswitch_0
        0x676c7966 -> :sswitch_1
        0x68656164 -> :sswitch_2
        0x68686561 -> :sswitch_3
        0x686d7478 -> :sswitch_4
        0x6c6f6361 -> :sswitch_5
        0x6d617870 -> :sswitch_6
        0x6e616d65 -> :sswitch_7
        0x706f7374 -> :sswitch_8
    .end sparse-switch
.end method

.method public static stringToTag(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad tag length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    aget-char v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-char v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-char v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-char v0, v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [C

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method public getData()Lc/a/a/b/b;
    .locals 1

    iget-object v0, p0, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->data:Lc/a/a/b/b;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->getData()Lc/a/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lc/a/a/b/b;->c()I

    move-result v0

    return v0
.end method

.method public getTag()I
    .locals 1

    iget v0, p0, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->tag:I

    return v0
.end method

.method public setData(Lc/a/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->data:Lc/a/a/b/b;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->getTag()I

    move-result v1

    invoke-static {v1}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Table.  Data is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/pdfview/font/ttf/TrueTypeTable;->getData()Lc/a/a/b/b;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "not set"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "set"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
