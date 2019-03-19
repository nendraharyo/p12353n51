.class public final Lcom/bumptech/glide/load/Options;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# instance fields
.field private final values:Landroid/support/v4/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/h/a",
            "<",
            "Lcom/bumptech/glide/load/Option",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v0}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    return-void
.end method

.method private static updateDiskCacheKey(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/Option;->update(Ljava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/bumptech/glide/load/Options;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/bumptech/glide/load/Options;

    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    iget-object v1, p1, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/h/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1}, Landroid/support/v4/h/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/bumptech/glide/load/Option;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    invoke-virtual {v0}, Landroid/support/v4/h/a;->hashCode()I

    move-result v0

    return v0
.end method

.method public putAll(Lcom/bumptech/glide/load/Options;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    iget-object v1, p1, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/h/a;->putAll(Landroid/support/v4/h/m;)V

    return-void
.end method

.method public set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/load/Options;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/Option",
            "<TT;>;TT;)",
            "Lcom/bumptech/glide/load/Options;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/h/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Options{values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    invoke-virtual {v0}, Landroid/support/v4/h/a;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    invoke-virtual {v0, v1}, Landroid/support/v4/h/a;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/Option;

    iget-object v2, p0, Lcom/bumptech/glide/load/Options;->values:Landroid/support/v4/h/a;

    invoke-virtual {v2, v1}, Landroid/support/v4/h/a;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/bumptech/glide/load/Options;->updateDiskCacheKey(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
