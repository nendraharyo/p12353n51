.class public final Lcom/bumptech/glide/util/ByteBufferUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;,
        Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    }
.end annotation


# static fields
.field private static final BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final BUFFER_SIZE:I = 0x4000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromFile(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v4, v2

    if-lez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v2, "File too large to map into memory"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_2
    throw v0

    :cond_2
    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "File unsuitable for memory mapping"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v6, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    :try_start_5
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v1

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    :try_start_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    :goto_4
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v6

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v2, v6

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_0
.end method

.method public static fromStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 5

    const/16 v4, 0x4000

    const/4 v3, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v0, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    new-array v0, v4, [B

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private static getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;-><init>([BII)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toBytes(Ljava/nio/ByteBuffer;)[B
    .locals 3

    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    iget-object v0, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    array-length v0, v0

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static toFile(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v2, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_3
    :goto_4
    throw v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public static toStream(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static toStream(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    iget v2, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    iget v3, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    iget v0, v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    add-int/2addr v0, v3

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x4000

    new-array v0, v0, [B

    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v0, v3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
