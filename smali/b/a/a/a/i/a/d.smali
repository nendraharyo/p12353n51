.class public Lb/a/a/a/i/a/d;
.super Lb/a/a/a/i/a/m;


# static fields
.field private static final a:[C


# instance fields
.field private b:Z

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lb/a/a/a/i/a/d;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lb/a/a/a/c;->b:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0}, Lb/a/a/a/i/a/d;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0, p1}, Lb/a/a/a/i/a/m;-><init>(Ljava/nio/charset/Charset;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/a/a/a/i/a/d;->b:Z

    return-void
.end method

.method static a([B)Ljava/lang/String;
    .locals 7

    array-length v1, p0

    mul-int/lit8 v0, v1, 0x2

    new-array v2, v0, [C

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v0, 0x2

    sget-object v6, Lb/a/a/a/i/a/d;->a:[C

    aget-char v4, v6, v4

    aput-char v4, v2, v5

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Lb/a/a/a/i/a/d;->a:[C

    aget-char v3, v5, v3

    aput-char v3, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private b(Lb/a/a/a/a/m;Lb/a/a/a/q;)Lb/a/a/a/e;
    .locals 22

    const-string v2, "uri"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lb/a/a/a/i/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "realm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lb/a/a/a/i/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "nonce"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lb/a/a/a/i/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "opaque"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lb/a/a/a/i/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "methodname"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lb/a/a/a/i/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v2, "algorithm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lb/a/a/a/i/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "MD5"

    :cond_0
    new-instance v11, Ljava/util/HashSet;

    const/16 v3, 0x8

    invoke-direct {v11, v3}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, -0x1

    const-string v4, "qop"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lb/a/a/a/i/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v12, ","

    invoke-direct {v4, v5, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, p2

    instance-of v4, v0, Lb/a/a/a/l;

    if-eqz v4, :cond_3

    const-string v4, "auth-int"

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :cond_2
    :goto_1
    move v4, v3

    :goto_2
    const/4 v3, -0x1

    if-ne v4, v3, :cond_5

    new-instance v2, Lb/a/a/a/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "None of the qop methods is supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lb/a/a/a/a/i;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v4, "auth"

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const-string v3, "charset"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lb/a/a/a/i/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    const-string v3, "ISO-8859-1"

    :cond_6
    const-string v5, "MD5-sess"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const-string v5, "MD5"

    :goto_3
    :try_start_0
    invoke-static {v5}, Lb/a/a/a/i/a/d;->b(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Lb/a/a/a/i/a/n; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lb/a/a/a/a/m;->a()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lb/a/a/a/a/m;->b()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lb/a/a/a/i/a/d;->c:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-wide v14, v0, Lb/a/a/a/i/a/d;->d:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lb/a/a/a/i/a/d;->d:J

    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v15, 0x100

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v15, Ljava/util/Formatter;

    sget-object v16, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-direct {v15, v14, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const-string v16, "%08x"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lb/a/a/a/i/a/d;->d:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v15}, Ljava/util/Formatter;->close()V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lb/a/a/a/i/a/d;->e:Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    invoke-static {}, Lb/a/a/a/i/a/d;->f()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lb/a/a/a/i/a/d;->e:Ljava/lang/String;

    :cond_7
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lb/a/a/a/i/a/d;->f:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lb/a/a/a/i/a/d;->g:Ljava/lang/String;

    const-string v16, "MD5-sess"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3a

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3a

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lb/a/a/a/o/e;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-static {v5}, Lb/a/a/a/i/a/d;->a([B)Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v16, 0x3a

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v16, 0x3a

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lb/a/a/a/i/a/d;->e:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lb/a/a/a/i/a/d;->f:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lb/a/a/a/i/a/d;->f:Ljava/lang/String;

    invoke-static {v5, v3}, Lb/a/a/a/o/e;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-static {v5}, Lb/a/a/a/i/a/d;->a([B)Ljava/lang/String;

    move-result-object v16

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x3a

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lb/a/a/a/i/a/d;->g:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lb/a/a/a/i/a/d;->g:Ljava/lang/String;

    invoke-static {v5, v3}, Lb/a/a/a/o/e;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lb/a/a/a/i/a/d;->a([B)Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_14

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-static {v3}, Lb/a/a/a/o/e;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    invoke-static {v3}, Lb/a/a/a/i/a/d;->a([B)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lb/a/a/a/o/d;

    const/16 v10, 0x80

    invoke-direct {v5, v10}, Lb/a/a/a/o/d;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lb/a/a/a/i/a/d;->e()Z

    move-result v10

    if-eqz v10, :cond_16

    const-string v10, "Proxy-Authorization"

    invoke-virtual {v5, v10}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    :goto_8
    const-string v10, ": Digest "

    invoke-virtual {v5, v10}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0x14

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Lb/a/a/a/k/l;

    const-string v12, "username"

    invoke-direct {v11, v12, v13}, Lb/a/a/a/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Lb/a/a/a/k/l;

    const-string v12, "realm"

    invoke-direct {v11, v12, v7}, Lb/a/a/a/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lb/a/a/a/k/l;

    const-string v11, "nonce"

    invoke-direct {v7, v11, v8}, Lb/a/a/a/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Lb/a/a/a/k/l;

    const-string v8, "uri"

    invoke-direct {v7, v8, v6}, Lb/a/a/a/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Lb/a/a/a/k/l;

    const-string v7, "response"

    invoke-direct {v6, v7, v3}, Lb/a/a/a/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_8

    new-instance v6, Lb/a/a/a/k/l;

    const-string v7, "qop"

    const/4 v3, 0x1

    if-ne v4, v3, :cond_17

    const-string v3, "auth-int"

    :goto_9
    invoke-direct {v6, v7, v3}, Lb/a/a/a/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lb/a/a/a/k/l;

    const-string v4, "nc"

    invoke-direct {v3, v4, v15}, Lb/a/a/a/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lb/a/a/a/k/l;

    const-string v4, "cnonce"

    move-object/from16 v0, p0

    iget-object v6, v0, Lb/a/a/a/i/a/d;->e:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Lb/a/a/a/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v3, Lb/a/a/a/k/l;

    const-string v4, "algorithm"

    invoke-direct {v3, v4, v2}, Lb/a/a/a/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_9

    new-instance v2, Lb/a/a/a/k/l;

    const-string v3, "opaque"

    invoke-direct {v2, v3, v9}, Lb/a/a/a/k/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1a

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/k/l;

    if-lez v3, :cond_a

    const-string v4, ", "

    invoke-virtual {v5, v4}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v2}, Lb/a/a/a/k/l;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, "nc"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "qop"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    const-string v6, "algorithm"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_b
    const/4 v4, 0x1

    :goto_b
    sget-object v6, Lb/a/a/a/k/e;->b:Lb/a/a/a/k/e;

    if-nez v4, :cond_19

    const/4 v4, 0x1

    :goto_c
    invoke-virtual {v6, v5, v2, v4}, Lb/a/a/a/k/e;->a(Lb/a/a/a/o/d;Lb/a/a/a/y;Z)Lb/a/a/a/o/d;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_a

    :catch_0
    move-exception v2

    new-instance v2, Lb/a/a/a/a/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsuppported digest algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lb/a/a/a/a/i;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    const-wide/16 v14, 0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lb/a/a/a/i/a/d;->d:J

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lb/a/a/a/i/a/d;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v8, v0, Lb/a/a/a/i/a/d;->c:Ljava/lang/String;

    goto/16 :goto_4

    :cond_d
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3a

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x3a

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lb/a/a/a/i/a/d;->f:Ljava/lang/String;

    goto/16 :goto_5

    :cond_e
    const/4 v5, 0x1

    if-ne v4, v5, :cond_13

    const/4 v5, 0x0

    move-object/from16 v0, p2

    instance-of v0, v0, Lb/a/a/a/l;

    move/from16 v17, v0

    if-eqz v17, :cond_f

    check-cast p2, Lb/a/a/a/l;

    invoke-interface/range {p2 .. p2}, Lb/a/a/a/l;->getEntity()Lb/a/a/a/k;

    move-result-object v5

    :cond_f
    if-eqz v5, :cond_11

    invoke-interface {v5}, Lb/a/a/a/k;->isRepeatable()Z

    move-result v17

    if-nez v17, :cond_11

    const-string v4, "auth"

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x3a

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lb/a/a/a/i/a/d;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_10
    new-instance v2, Lb/a/a/a/a/i;

    const-string v3, "Qop auth-int cannot be used with a non-repeatable entity"

    invoke-direct {v2, v3}, Lb/a/a/a/a/i;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    new-instance v11, Lb/a/a/a/i/a/g;

    invoke-direct {v11, v12}, Lb/a/a/a/i/a/g;-><init>(Ljava/security/MessageDigest;)V

    if-eqz v5, :cond_12

    :try_start_1
    invoke-interface {v5, v11}, Lb/a/a/a/k;->writeTo(Ljava/io/OutputStream;)V

    :cond_12
    invoke-virtual {v11}, Lb/a/a/a/i/a/g;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x3a

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x3a

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lb/a/a/a/i/a/g;->a()[B

    move-result-object v10

    invoke-static {v10}, Lb/a/a/a/i/a/d;->a([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lb/a/a/a/i/a/d;->g:Ljava/lang/String;

    goto/16 :goto_6

    :catch_1
    move-exception v2

    new-instance v3, Lb/a/a/a/a/i;

    const-string v4, "I/O error reading entity content"

    invoke-direct {v3, v4, v2}, Lb/a/a/a/a/i;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v10, 0x3a

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lb/a/a/a/i/a/d;->g:Ljava/lang/String;

    goto/16 :goto_6

    :cond_14
    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lb/a/a/a/i/a/d;->e:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v3, 0x1

    if-ne v4, v3, :cond_15

    const-string v3, "auth-int"

    :goto_d
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    :cond_15
    const-string v3, "auth"

    goto :goto_d

    :cond_16
    const-string v10, "Authorization"

    invoke-virtual {v5, v10}, Lb/a/a/a/o/d;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_17
    const-string v3, "auth"

    goto/16 :goto_9

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_b

    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_c

    :cond_1a
    new-instance v2, Lb/a/a/a/k/p;

    invoke-direct {v2, v5}, Lb/a/a/a/k/p;-><init>(Lb/a/a/a/o/d;)V

    return-object v2

    :cond_1b
    move-object v5, v2

    goto/16 :goto_3
.end method

.method private static b(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lb/a/a/a/i/a/n;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm in HTTP Digest authentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a/i/a/n;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x8

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v1}, Lb/a/a/a/i/a/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lb/a/a/a/a/m;Lb/a/a/a/q;)Lb/a/a/a/e;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lb/a/a/a/n/a;

    invoke-direct {v0}, Lb/a/a/a/n/a;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lb/a/a/a/i/a/d;->a(Lb/a/a/a/a/m;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Lb/a/a/a/a/m;Lb/a/a/a/q;Lb/a/a/a/n/e;)Lb/a/a/a/e;
    .locals 3

    const-string v0, "Credentials"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP request"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "realm"

    invoke-virtual {p0, v0}, Lb/a/a/a/i/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lb/a/a/a/a/i;

    const-string v1, "missing realm in challenge"

    invoke-direct {v0, v1}, Lb/a/a/a/a/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "nonce"

    invoke-virtual {p0, v0}, Lb/a/a/a/i/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lb/a/a/a/a/i;

    const-string v1, "missing nonce in challenge"

    invoke-direct {v0, v1}, Lb/a/a/a/a/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lb/a/a/a/i/a/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string v1, "methodname"

    invoke-interface {p2}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v2

    invoke-interface {v2}, Lb/a/a/a/ae;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lb/a/a/a/i/a/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string v1, "uri"

    invoke-interface {p2}, Lb/a/a/a/q;->getRequestLine()Lb/a/a/a/ae;

    move-result-object v2

    invoke-interface {v2}, Lb/a/a/a/ae;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lb/a/a/a/i/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lb/a/a/a/i/a/d;->h()Ljava/util/Map;

    move-result-object v0

    const-string v1, "charset"

    invoke-virtual {p0, p2}, Lb/a/a/a/i/a/d;->a(Lb/a/a/a/q;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0, p1, p2}, Lb/a/a/a/i/a/d;->b(Lb/a/a/a/a/m;Lb/a/a/a/q;)Lb/a/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "digest"

    return-object v0
.end method

.method public a(Lb/a/a/a/e;)V
    .locals 1

    invoke-super {p0, p1}, Lb/a/a/a/i/a/m;->a(Lb/a/a/a/e;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/a/a/i/a/d;->b:Z

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 2

    const-string v0, "stale"

    invoke-virtual {p0, v0}, Lb/a/a/a/i/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lb/a/a/a/i/a/d;->b:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIGEST [complete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lb/a/a/a/i/a/d;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nonce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/a/a/a/i/a/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lb/a/a/a/i/a/d;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
