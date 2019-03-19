.class public Landroid/support/v4/app/k;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/app/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/l",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/support/v4/app/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/l",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    return-void
.end method

.method public static a(Landroid/support/v4/app/l;)Landroid/support/v4/app/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/l",
            "<*>;)",
            "Landroid/support/v4/app/k;"
        }
    .end annotation

    new-instance v0, Landroid/support/v4/app/k;

    invoke-direct {v0, p0}, Landroid/support/v4/app/k;-><init>(Landroid/support/v4/app/l;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a()Landroid/support/v4/app/m;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->k()Landroid/support/v4/app/n;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/n;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/n;->a(Landroid/os/Parcelable;Landroid/support/v4/app/o;)V

    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    iget-object v1, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v2, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/l;Landroid/support/v4/app/j;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->a(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/n;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->o()V

    return-void
.end method

.method public b(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->b(Z)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->n()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/support/v4/app/o;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->l()Landroid/support/v4/app/o;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->p()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->q()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->r()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->s()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->t()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->u()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->v()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->x()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->y()V

    return-void
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/k;->a:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->d:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->i()Z

    move-result v0

    return v0
.end method
