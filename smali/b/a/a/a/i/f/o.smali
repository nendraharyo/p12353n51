.class public Lb/a/a/a/i/f/o;
.super Lb/a/a/a/i/f/d;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/net/Socket;ILb/a/a/a/l/e;)V
    .locals 2

    const/16 v0, 0x400

    invoke-direct {p0}, Lb/a/a/a/i/f/d;-><init>()V

    const-string v1, "Socket"

    invoke-static {p1, v1}, Lb/a/a/a/o/a;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-gez p2, :cond_1

    invoke-virtual {p1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_0

    :goto_1
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lb/a/a/a/i/f/o;->a(Ljava/io/OutputStream;ILb/a/a/a/l/e;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p2

    goto :goto_0
.end method
