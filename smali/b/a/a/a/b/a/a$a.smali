.class public Lb/a/a/a/b/a/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Lb/a/a/a/n;

.field private c:Ljava/net/InetAddress;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lb/a/a/a/b/a/a$a;->d:Z

    iput-boolean v1, p0, Lb/a/a/a/b/a/a$a;->f:Z

    const/16 v0, 0x32

    iput v0, p0, Lb/a/a/a/b/a/a$a;->i:I

    iput-boolean v1, p0, Lb/a/a/a/b/a/a$a;->g:Z

    iput-boolean v1, p0, Lb/a/a/a/b/a/a$a;->j:Z

    iput v2, p0, Lb/a/a/a/b/a/a$a;->m:I

    iput v2, p0, Lb/a/a/a/b/a/a$a;->n:I

    iput v2, p0, Lb/a/a/a/b/a/a$a;->o:I

    return-void
.end method


# virtual methods
.method public a(I)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput p1, p0, Lb/a/a/a/b/a/a$a;->i:I

    return-object p0
.end method

.method public a(Lb/a/a/a/n;)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/a/a$a;->b:Lb/a/a/a/n;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/a/a$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/net/InetAddress;)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput-object p1, p0, Lb/a/a/a/b/a/a$a;->c:Ljava/net/InetAddress;

    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lb/a/a/a/b/a/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lb/a/a/a/b/a/a$a;"
        }
    .end annotation

    iput-object p1, p0, Lb/a/a/a/b/a/a$a;->k:Ljava/util/Collection;

    return-object p0
.end method

.method public a(Z)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput-boolean p1, p0, Lb/a/a/a/b/a/a$a;->a:Z

    return-object p0
.end method

.method public a()Lb/a/a/a/b/a/a;
    .locals 17

    new-instance v1, Lb/a/a/a/b/a/a;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lb/a/a/a/b/a/a$a;->a:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lb/a/a/a/b/a/a$a;->b:Lb/a/a/a/n;

    move-object/from16 v0, p0

    iget-object v4, v0, Lb/a/a/a/b/a/a$a;->c:Ljava/net/InetAddress;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lb/a/a/a/b/a/a$a;->d:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lb/a/a/a/b/a/a$a;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lb/a/a/a/b/a/a$a;->f:Z

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lb/a/a/a/b/a/a$a;->g:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lb/a/a/a/b/a/a$a;->h:Z

    move-object/from16 v0, p0

    iget v10, v0, Lb/a/a/a/b/a/a$a;->i:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lb/a/a/a/b/a/a$a;->j:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lb/a/a/a/b/a/a$a;->k:Ljava/util/Collection;

    move-object/from16 v0, p0

    iget-object v13, v0, Lb/a/a/a/b/a/a$a;->l:Ljava/util/Collection;

    move-object/from16 v0, p0

    iget v14, v0, Lb/a/a/a/b/a/a$a;->m:I

    move-object/from16 v0, p0

    iget v15, v0, Lb/a/a/a/b/a/a$a;->n:I

    move-object/from16 v0, p0

    iget v0, v0, Lb/a/a/a/b/a/a$a;->o:I

    move/from16 v16, v0

    invoke-direct/range {v1 .. v16}, Lb/a/a/a/b/a/a;-><init>(ZLb/a/a/a/n;Ljava/net/InetAddress;ZLjava/lang/String;ZZZIZLjava/util/Collection;Ljava/util/Collection;III)V

    return-object v1
.end method

.method public b(I)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput p1, p0, Lb/a/a/a/b/a/a$a;->m:I

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lb/a/a/a/b/a/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lb/a/a/a/b/a/a$a;"
        }
    .end annotation

    iput-object p1, p0, Lb/a/a/a/b/a/a$a;->l:Ljava/util/Collection;

    return-object p0
.end method

.method public b(Z)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput-boolean p1, p0, Lb/a/a/a/b/a/a$a;->d:Z

    return-object p0
.end method

.method public c(I)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput p1, p0, Lb/a/a/a/b/a/a$a;->n:I

    return-object p0
.end method

.method public c(Z)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput-boolean p1, p0, Lb/a/a/a/b/a/a$a;->f:Z

    return-object p0
.end method

.method public d(I)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput p1, p0, Lb/a/a/a/b/a/a$a;->o:I

    return-object p0
.end method

.method public d(Z)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput-boolean p1, p0, Lb/a/a/a/b/a/a$a;->g:Z

    return-object p0
.end method

.method public e(Z)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput-boolean p1, p0, Lb/a/a/a/b/a/a$a;->h:Z

    return-object p0
.end method

.method public f(Z)Lb/a/a/a/b/a/a$a;
    .locals 0

    iput-boolean p1, p0, Lb/a/a/a/b/a/a$a;->j:Z

    return-object p0
.end method
