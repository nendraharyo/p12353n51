.class Lb/a/a/a/e/c/g;
.super Lb/a/a/a/e/c/k;

# interfaces
.implements Lb/a/a/a/e/c/f;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lb/a/a/a/e/c/c;


# direct methods
.method constructor <init>(Lb/a/a/a/e/c/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/a/a/e/c/k;-><init>(Lb/a/a/a/e/c/l;)V

    iput-object p1, p0, Lb/a/a/a/e/c/g;->a:Lb/a/a/a/e/c/c;

    return-void
.end method


# virtual methods
.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILb/a/a/a/l/e;)Ljava/net/Socket;
    .locals 2

    iget-object v0, p0, Lb/a/a/a/e/c/g;->a:Lb/a/a/a/e/c/c;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, p3, v1}, Lb/a/a/a/e/c/c;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
