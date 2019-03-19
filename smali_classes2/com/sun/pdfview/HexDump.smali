.class public Lcom/sun/pdfview/HexDump;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Usage: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "    HexDump <filename>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v1}, Lcom/sun/pdfview/HexDump;->printData([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static printData([B)V
    .locals 10

    const/16 v9, 0x20

    const/4 v1, 0x0

    const/16 v0, 0x11

    new-array v4, v0, [C

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    return-void

    :cond_0
    aget-byte v3, p0, v0

    and-int/lit16 v5, v3, 0xff

    if-nez v5, :cond_4

    add-int/lit8 v3, v2, 0x1

    const/16 v6, 0x2e

    aput-char v6, v4, v2

    move v2, v3

    :goto_1
    rem-int/lit8 v3, v0, 0x10

    if-nez v3, :cond_1

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_2
    if-gt v3, v6, :cond_7

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    const/16 v3, 0x10

    if-ge v5, v3, :cond_8

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_3
    and-int/lit8 v3, v0, 0xf

    const/16 v5, 0xf

    if-eq v3, v5, :cond_2

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_9

    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "      "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, v1

    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    if-lt v5, v9, :cond_5

    const/16 v3, 0x7f

    if-lt v5, v3, :cond_6

    :cond_5
    add-int/lit8 v3, v2, 0x1

    const/16 v6, 0x3f

    aput-char v6, v4, v2

    move v2, v3

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v3, v2, 0x1

    int-to-char v6, v5

    aput-char v6, v4, v2

    move v2, v3

    goto/16 :goto_1

    :cond_7
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    :cond_8
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    and-int/lit8 v3, v0, 0x7

    const/4 v5, 0x7

    if-ne v3, v5, :cond_a

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    aput-char v9, v4, v2

    move v2, v3

    goto :goto_4

    :cond_a
    and-int/lit8 v3, v0, 0x1

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4
.end method
