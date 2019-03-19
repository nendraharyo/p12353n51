.class public final Lc/a/a/b/c;
.super Lc/a/a/b/b;


# instance fields
.field private b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Lc/a/a/b/b;-><init>()V

    iput-object p1, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static b(Ljava/nio/ByteBuffer;)Lc/a/a/b/c;
    .locals 1

    new-instance v0, Lc/a/a/b/c;

    invoke-direct {v0, p0}, Lc/a/a/b/c;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static b([B)Lc/a/a/b/c;
    .locals 2

    new-instance v0, Lc/a/a/b/c;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/c;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static c(I)Lc/a/a/b/c;
    .locals 2

    new-instance v0, Lc/a/a/b/c;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/c;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public a(B)V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(C)V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(J)V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(Lc/a/a/b/b;)V
    .locals 2

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lc/a/a/b/b;->r()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(S)V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a([B)V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a([BII)V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public b()B
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
.end method

.method public b(I)B
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public c([B)V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public synthetic d()Lc/a/a/b/b;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/b/c;->u()Lc/a/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method public e(I)C
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()[B
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public synthetic k()Lc/a/a/b/b;
    .locals 1

    invoke-virtual {p0}, Lc/a/a/b/c;->t()Lc/a/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method public m()J
    .locals 2

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public n()C
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v0

    return v0
.end method

.method public o()S
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    return-void
.end method

.method public q()V
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-void
.end method

.method public r()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public t()Lc/a/a/b/c;
    .locals 2

    new-instance v0, Lc/a/a/b/c;

    iget-object v1, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/c;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lc/a/a/b/c;
    .locals 2

    new-instance v0, Lc/a/a/b/c;

    iget-object v1, p0, Lc/a/a/b/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/a/a/b/c;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
