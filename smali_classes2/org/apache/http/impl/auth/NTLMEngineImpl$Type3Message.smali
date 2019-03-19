.class Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;
.super Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/impl/auth/NTLMEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Type3Message"
.end annotation


# instance fields
.field protected domainBytes:[B

.field protected hostBytes:[B

.field protected lmResp:[B

.field protected ntResp:[B

.field protected sessionKey:[B

.field protected type2Flags:I

.field protected userBytes:[B


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;[B)V
    .locals 8

    invoke-direct {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;-><init>()V

    iput p6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    invoke-static {p2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->access$1500(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;[B)V

    const/high16 v2, 0x800000

    and-int/2addr v2, p6

    if-eqz v2, :cond_1

    if-eqz p8, :cond_1

    if-eqz p7, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2Response()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMv2Response()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v2, p6, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B
    :try_end_0
    .catch Lorg/apache/http/impl/auth/NTLMEngineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    and-int/lit8 v3, p6, 0x10

    if-eqz v3, :cond_7

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p6

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getSecondaryKey()[B

    move-result-object v0

    invoke-static {v0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl;->RC4([B[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    :goto_1
    if-eqz v7, :cond_8

    :try_start_1
    const-string v0, "UnicodeLittleUnmarked"

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    if-eqz v1, :cond_9

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnicodeLittleUnmarked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    const-string v0, "UnicodeLittleUnmarked"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMv2UserSessionKey()[B

    move-result-object v2

    goto :goto_0

    :cond_1
    const/high16 v2, 0x80000

    and-int/2addr v2, p6

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponse()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLM2SessionResponse()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v2, p6, 0x80

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLM2SessionResponseUserSessionKey()[B

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMResponse()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v2, p6, 0x80

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getNTLMUserSessionKey()[B
    :try_end_2
    .catch Lorg/apache/http/impl/auth/NTLMEngineException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMResponse()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    and-int/lit16 v2, p6, 0x80

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLanManagerSessionKey()[B

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$CipherGen;->getLMUserSessionKey()[B

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    iput-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v1, Lorg/apache/http/impl/auth/NTLMEngineException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unicode not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/auth/NTLMEngineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method getResponse()Ljava/lang/String;
    .locals 13

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    array-length v3, v0

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    array-length v4, v0

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    array-length v0, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    array-length v2, v2

    :goto_1
    iget-object v5, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    array-length v5, v5

    iget-object v6, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v6, :cond_0

    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    array-length v1, v1

    :cond_0
    add-int/lit8 v6, v4, 0x48

    add-int v7, v6, v3

    add-int v8, v7, v0

    add-int v9, v8, v5

    add-int v10, v9, v2

    add-int v11, v10, v1

    const/4 v12, 0x3

    invoke-virtual {p0, v11, v12}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->prepareResponse(II)V

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    const/16 v4, 0x48

    invoke-virtual {p0, v4}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {p0, v3}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {p0, v6}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {p0, v7}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    invoke-virtual {p0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {p0, v5}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {p0, v8}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {p0, v2}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {p0, v9}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    invoke-virtual {p0, v10}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    iget v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    and-int/lit16 v0, v0, 0x80

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    and-int/lit16 v1, v1, 0x200

    or-int/2addr v0, v1

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    and-int/lit8 v1, v1, 0x20

    or-int/2addr v0, v1

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    and-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget v1, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->type2Flags:I

    and-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    const/16 v0, 0x105

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    const/16 v0, 0xa28

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addULong(I)V

    const/16 v0, 0xf00

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addUShort(I)V

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->lmResp:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->ntResp:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->domainBytes:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->userBytes:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->hostBytes:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->sessionKey:[B

    invoke-virtual {p0, v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$Type3Message;->addBytes([B)V

    :cond_1
    invoke-super {p0}, Lorg/apache/http/impl/auth/NTLMEngineImpl$NTLMMessage;->getResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v1

    goto/16 :goto_0

    :cond_3
    move v2, v1

    goto/16 :goto_1
.end method
