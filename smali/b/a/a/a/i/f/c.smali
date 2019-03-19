.class public abstract Lb/a/a/a/i/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a/j/a;
.implements Lb/a/a/a/j/f;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[B

.field private c:Lb/a/a/a/o/c;

.field private d:Ljava/nio/charset/Charset;

.field private e:Z

.field private f:I

.field private g:I

.field private h:Lb/a/a/a/i/f/k;

.field private i:Ljava/nio/charset/CodingErrorAction;

.field private j:Ljava/nio/charset/CodingErrorAction;

.field private k:I

.field private l:I

.field private m:Ljava/nio/charset/CharsetDecoder;

.field private n:Ljava/nio/CharBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lb/a/a/a/o/d;I)I
    .locals 3

    iget v1, p0, Lb/a/a/a/i/f/c;->k:I

    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lb/a/a/a/i/f/c;->k:I

    if-le p2, v1, :cond_0

    iget-object v0, p0, Lb/a/a/a/i/f/c;->b:[B

    add-int/lit8 v2, p2, -0x1

    aget-byte v0, v0, v2

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    add-int/lit8 p2, p2, -0x1

    :cond_0
    sub-int v0, p2, v1

    iget-boolean v2, p0, Lb/a/a/a/i/f/c;->e:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lb/a/a/a/i/f/c;->b:[B

    invoke-virtual {p1, v2, v1, v0}, Lb/a/a/a/o/d;->a([BII)V

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lb/a/a/a/i/f/c;->b:[B

    invoke-static {v2, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lb/a/a/a/i/f/c;->a(Lb/a/a/a/o/d;Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method private a(Lb/a/a/a/o/d;Ljava/nio/ByteBuffer;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lb/a/a/a/i/f/c;->m:Ljava/nio/charset/CharsetDecoder;

    if-nez v1, :cond_1

    iget-object v1, p0, Lb/a/a/a/i/f/c;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/i/f/c;->m:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lb/a/a/a/i/f/c;->m:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lb/a/a/a/i/f/c;->i:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lb/a/a/a/i/f/c;->m:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lb/a/a/a/i/f/c;->j:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    :cond_1
    iget-object v1, p0, Lb/a/a/a/i/f/c;->n:Ljava/nio/CharBuffer;

    if-nez v1, :cond_2

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Lb/a/a/a/i/f/c;->n:Ljava/nio/CharBuffer;

    :cond_2
    iget-object v1, p0, Lb/a/a/a/i/f/c;->m:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lb/a/a/a/i/f/c;->m:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lb/a/a/a/i/f/c;->n:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lb/a/a/a/i/f/c;->a(Ljava/nio/charset/CoderResult;Lb/a/a/a/o/d;Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lb/a/a/a/i/f/c;->m:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lb/a/a/a/i/f/c;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lb/a/a/a/i/f/c;->a(Ljava/nio/charset/CoderResult;Lb/a/a/a/o/d;Ljava/nio/ByteBuffer;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lb/a/a/a/i/f/c;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private a(Ljava/nio/charset/CoderResult;Lb/a/a/a/o/d;Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_0
    iget-object v0, p0, Lb/a/a/a/i/f/c;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lb/a/a/a/i/f/c;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lb/a/a/a/i/f/c;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/a/a/a/i/f/c;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {p2, v1}, Lb/a/a/a/o/d;->a(C)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lb/a/a/a/i/f/c;->n:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    return v0
.end method

.method private b(Lb/a/a/a/o/d;)I
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lb/a/a/a/i/f/c;->c:Lb/a/a/a/o/c;

    invoke-virtual {v0}, Lb/a/a/a/o/c;->d()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lb/a/a/a/i/f/c;->c:Lb/a/a/a/o/c;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lb/a/a/a/o/c;->b(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lb/a/a/a/i/f/c;->c:Lb/a/a/a/o/c;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lb/a/a/a/o/c;->b(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    iget-boolean v1, p0, Lb/a/a/a/i/f/c;->e:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/a/a/a/i/f/c;->c:Lb/a/a/a/o/c;

    invoke-virtual {p1, v1, v3, v0}, Lb/a/a/a/o/d;->a(Lb/a/a/a/o/c;II)V

    :goto_0
    iget-object v1, p0, Lb/a/a/a/i/f/c;->c:Lb/a/a/a/o/c;

    invoke-virtual {v1}, Lb/a/a/a/o/c;->a()V

    return v0

    :cond_2
    iget-object v1, p0, Lb/a/a/a/i/f/c;->c:Lb/a/a/a/o/c;

    invoke-virtual {v1}, Lb/a/a/a/o/c;->e()[B

    move-result-object v1

    invoke-static {v1, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lb/a/a/a/i/f/c;->a(Lb/a/a/a/o/d;Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0
.end method

.method private c()I
    .locals 3

    iget v0, p0, Lb/a/a/a/i/f/c;->k:I

    :goto_0
    iget v1, p0, Lb/a/a/a/i/f/c;->l:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lb/a/a/a/i/f/c;->b:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 3

    const/4 v0, -0x1

    :cond_0
    invoke-virtual {p0}, Lb/a/a/a/i/f/c;->g()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lb/a/a/a/i/f/c;->f()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lb/a/a/a/i/f/c;->b:[B

    iget v1, p0, Lb/a/a/a/i/f/c;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/a/a/i/f/c;->k:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public a(Lb/a/a/a/o/d;)I
    .locals 8

    const/4 v1, 0x0

    const/4 v3, -0x1

    const-string v0, "Char array buffer"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    move v2, v1

    :cond_0
    if-eqz v0, :cond_5

    invoke-direct {p0}, Lb/a/a/a/i/f/c;->c()I

    move-result v4

    if-eq v4, v3, :cond_3

    iget-object v0, p0, Lb/a/a/a/i/f/c;->c:Lb/a/a/a/o/c;

    invoke-virtual {v0}, Lb/a/a/a/o/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v4}, Lb/a/a/a/i/f/c;->a(Lb/a/a/a/o/d;I)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, v4, 0x1

    iget v5, p0, Lb/a/a/a/i/f/c;->k:I

    sub-int/2addr v0, v5

    iget-object v5, p0, Lb/a/a/a/i/f/c;->c:Lb/a/a/a/o/c;

    iget-object v6, p0, Lb/a/a/a/i/f/c;->b:[B

    iget v7, p0, Lb/a/a/a/i/f/c;->k:I

    invoke-virtual {v5, v6, v7, v0}, Lb/a/a/a/o/c;->a([BII)V

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Lb/a/a/a/i/f/c;->k:I

    move v0, v1

    :cond_2
    :goto_1
    iget v4, p0, Lb/a/a/a/i/f/c;->f:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lb/a/a/a/i/f/c;->c:Lb/a/a/a/o/c;

    invoke-virtual {v4}, Lb/a/a/a/o/c;->d()I

    move-result v4

    iget v5, p0, Lb/a/a/a/i/f/c;->f:I

    if-lt v4, v5, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Maximum line length limit exceeded"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lb/a/a/a/i/f/c;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lb/a/a/a/i/f/c;->l:I

    iget v4, p0, Lb/a/a/a/i/f/c;->k:I

    sub-int/2addr v2, v4

    iget-object v4, p0, Lb/a/a/a/i/f/c;->c:Lb/a/a/a/o/c;

    iget-object v5, p0, Lb/a/a/a/i/f/c;->b:[B

    iget v6, p0, Lb/a/a/a/i/f/c;->k:I

    invoke-virtual {v4, v5, v6, v2}, Lb/a/a/a/o/c;->a([BII)V

    iget v2, p0, Lb/a/a/a/i/f/c;->l:I

    iput v2, p0, Lb/a/a/a/i/f/c;->k:I

    :cond_4
    invoke-virtual {p0}, Lb/a/a/a/i/f/c;->f()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_1

    :cond_5
    if-ne v2, v3, :cond_6

    iget-object v0, p0, Lb/a/a/a/i/f/c;->c:Lb/a/a/a/o/c;

    invoke-virtual {v0}, Lb/a/a/a/o/c;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1}, Lb/a/a/a/i/f/c;->b(Lb/a/a/a/o/d;)I

    move-result v0

    goto :goto_0
.end method

.method public a([BII)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lb/a/a/a/i/f/c;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, p0, Lb/a/a/a/i/f/c;->l:I

    iget v1, p0, Lb/a/a/a/i/f/c;->k:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lb/a/a/a/i/f/c;->b:[B

    iget v2, p0, Lb/a/a/a/i/f/c;->k:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lb/a/a/a/i/f/c;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lb/a/a/a/i/f/c;->k:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lb/a/a/a/i/f/c;->g:I

    if-le p3, v1, :cond_3

    iget-object v0, p0, Lb/a/a/a/i/f/c;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lb/a/a/a/i/f/c;->h:Lb/a/a/a/i/f/k;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lb/a/a/a/i/f/k;->a(J)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lb/a/a/a/i/f/c;->g()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lb/a/a/a/i/f/c;->f()I

    move-result v1

    if-ne v1, v0, :cond_3

    goto :goto_0

    :cond_4
    iget v0, p0, Lb/a/a/a/i/f/c;->l:I

    iget v1, p0, Lb/a/a/a/i/f/c;->k:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lb/a/a/a/i/f/c;->b:[B

    iget v2, p0, Lb/a/a/a/i/f/c;->k:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lb/a/a/a/i/f/c;->k:I

    add-int/2addr v1, v0

    iput v1, p0, Lb/a/a/a/i/f/c;->k:I

    goto :goto_0
.end method

.method protected a(Ljava/io/InputStream;ILb/a/a/a/l/e;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "Input stream"

    invoke-static {p1, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Buffer size"

    invoke-static {p2, v0}, Lb/a/a/a/o/a;->b(ILjava/lang/String;)I

    const-string v0, "HTTP parameters"

    invoke-static {p3, v0}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lb/a/a/a/i/f/c;->a:Ljava/io/InputStream;

    new-array v0, p2, [B

    iput-object v0, p0, Lb/a/a/a/i/f/c;->b:[B

    iput v1, p0, Lb/a/a/a/i/f/c;->k:I

    iput v1, p0, Lb/a/a/a/i/f/c;->l:I

    new-instance v0, Lb/a/a/a/o/c;

    invoke-direct {v0, p2}, Lb/a/a/a/o/c;-><init>(I)V

    iput-object v0, p0, Lb/a/a/a/i/f/c;->c:Lb/a/a/a/o/c;

    const-string v0, "http.protocol.element-charset"

    invoke-interface {p3, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lb/a/a/a/i/f/c;->d:Ljava/nio/charset/Charset;

    iget-object v0, p0, Lb/a/a/a/i/f/c;->d:Ljava/nio/charset/Charset;

    sget-object v1, Lb/a/a/a/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lb/a/a/a/i/f/c;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/a/i/f/c;->m:Ljava/nio/charset/CharsetDecoder;

    const-string v0, "http.connection.max-line-length"

    const/4 v1, -0x1

    invoke-interface {p3, v0, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lb/a/a/a/i/f/c;->f:I

    const-string v0, "http.connection.min-chunk-limit"

    const/16 v1, 0x200

    invoke-interface {p3, v0, v1}, Lb/a/a/a/l/e;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lb/a/a/a/i/f/c;->g:I

    invoke-virtual {p0}, Lb/a/a/a/i/f/c;->d()Lb/a/a/a/i/f/k;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/i/f/c;->h:Lb/a/a/a/i/f/k;

    const-string v0, "http.malformed.input.action"

    invoke-interface {p3, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CodingErrorAction;

    if-eqz v0, :cond_1

    :goto_1
    iput-object v0, p0, Lb/a/a/a/i/f/c;->i:Ljava/nio/charset/CodingErrorAction;

    const-string v0, "http.unmappable.input.action"

    invoke-interface {p3, v0}, Lb/a/a/a/l/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CodingErrorAction;

    if-eqz v0, :cond_2

    :goto_2
    iput-object v0, p0, Lb/a/a/a/i/f/c;->j:Ljava/nio/charset/CodingErrorAction;

    return-void

    :cond_0
    sget-object v0, Lb/a/a/a/c;->b:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_2
.end method

.method public b()Lb/a/a/a/j/e;
    .locals 1

    iget-object v0, p0, Lb/a/a/a/i/f/c;->h:Lb/a/a/a/i/f/k;

    return-object v0
.end method

.method protected d()Lb/a/a/a/i/f/k;
    .locals 1

    new-instance v0, Lb/a/a/a/i/f/k;

    invoke-direct {v0}, Lb/a/a/a/i/f/k;-><init>()V

    return-object v0
.end method

.method public e()I
    .locals 2

    iget v0, p0, Lb/a/a/a/i/f/c;->l:I

    iget v1, p0, Lb/a/a/a/i/f/c;->k:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected f()I
    .locals 6

    const/4 v5, 0x0

    const/4 v0, -0x1

    iget v1, p0, Lb/a/a/a/i/f/c;->k:I

    if-lez v1, :cond_1

    iget v1, p0, Lb/a/a/a/i/f/c;->l:I

    iget v2, p0, Lb/a/a/a/i/f/c;->k:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget-object v2, p0, Lb/a/a/a/i/f/c;->b:[B

    iget v3, p0, Lb/a/a/a/i/f/c;->k:I

    iget-object v4, p0, Lb/a/a/a/i/f/c;->b:[B

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput v5, p0, Lb/a/a/a/i/f/c;->k:I

    iput v1, p0, Lb/a/a/a/i/f/c;->l:I

    :cond_1
    iget v2, p0, Lb/a/a/a/i/f/c;->l:I

    iget-object v1, p0, Lb/a/a/a/i/f/c;->b:[B

    array-length v1, v1

    sub-int/2addr v1, v2

    iget-object v3, p0, Lb/a/a/a/i/f/c;->a:Ljava/io/InputStream;

    iget-object v4, p0, Lb/a/a/a/i/f/c;->b:[B

    invoke-virtual {v3, v4, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v0, :cond_2

    :goto_0
    return v0

    :cond_2
    add-int v0, v2, v1

    iput v0, p0, Lb/a/a/a/i/f/c;->l:I

    iget-object v0, p0, Lb/a/a/a/i/f/c;->h:Lb/a/a/a/i/f/k;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lb/a/a/a/i/f/k;->a(J)V

    move v0, v1

    goto :goto_0
.end method

.method protected g()Z
    .locals 2

    iget v0, p0, Lb/a/a/a/i/f/c;->k:I

    iget v1, p0, Lb/a/a/a/i/f/c;->l:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
