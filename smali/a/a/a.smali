.class public La/a/a;
.super Ljava/lang/Object;


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "La/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private parent:La/a/a;

.field private userObject:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/a/a;->parent:La/a/a;

    iput-object v0, p0, La/a/a;->userObject:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/a/a;->children:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(La/a/a;)V
    .locals 1

    iput-object p0, p1, La/a/a;->parent:La/a/a;

    iget-object v0, p0, La/a/a;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getParent()La/a/a;
    .locals 1

    iget-object v0, p0, La/a/a;->parent:La/a/a;

    return-object v0
.end method

.method protected getUserObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/a/a;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method protected setUserObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, La/a/a;->userObject:Ljava/lang/Object;

    return-void
.end method
