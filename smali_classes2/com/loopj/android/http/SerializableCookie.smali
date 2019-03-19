.class public Lcom/loopj/android/http/SerializableCookie;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x58765a8013aeb70cL


# instance fields
.field private transient clientCookie:Lb/a/a/a/i/d/c;

.field private final transient cookie:Lb/a/a/a/f/b;


# direct methods
.method public constructor <init>(Lb/a/a/a/f/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lb/a/a/a/f/b;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lb/a/a/a/i/d/c;

    invoke-direct {v2, v0, v1}, Lb/a/a/a/i/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lb/a/a/a/i/d/c;

    iget-object v1, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lb/a/a/a/i/d/c;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lb/a/a/a/i/d/c;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lb/a/a/a/i/d/c;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lb/a/a/a/i/d/c;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lb/a/a/a/i/d/c;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v1, v0}, Lb/a/a/a/i/d/c;->b(Ljava/util/Date;)V

    iget-object v1, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lb/a/a/a/i/d/c;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lb/a/a/a/i/d/c;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lb/a/a/a/i/d/c;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/a/a/i/d/c;->a(I)V

    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lb/a/a/a/i/d/c;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/a/a/i/d/c;->a(Z)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lb/a/a/a/f/b;

    invoke-interface {v0}, Lb/a/a/a/f/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lb/a/a/a/f/b;

    invoke-interface {v0}, Lb/a/a/a/f/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lb/a/a/a/f/b;

    invoke-interface {v0}, Lb/a/a/a/f/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lb/a/a/a/f/b;

    invoke-interface {v0}, Lb/a/a/a/f/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lb/a/a/a/f/b;

    invoke-interface {v0}, Lb/a/a/a/f/b;->d()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lb/a/a/a/f/b;

    invoke-interface {v0}, Lb/a/a/a/f/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lb/a/a/a/f/b;

    invoke-interface {v0}, Lb/a/a/a/f/b;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lb/a/a/a/f/b;

    invoke-interface {v0}, Lb/a/a/a/f/b;->i()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method


# virtual methods
.method public getCookie()Lb/a/a/a/f/b;
    .locals 2

    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->cookie:Lb/a/a/a/f/b;

    iget-object v1, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lb/a/a/a/i/d/c;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/SerializableCookie;->clientCookie:Lb/a/a/a/i/d/c;

    :cond_0
    return-object v0
.end method
