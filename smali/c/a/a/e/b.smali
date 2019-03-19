.class public Lc/a/a/e/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(FFFFFF)Landroid/graphics/Matrix;
    .locals 7

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;FFFFFF)V

    return-object v0
.end method

.method public static a([F)Landroid/graphics/Matrix;
    .locals 6

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget v3, p0, v3

    const/4 v4, 0x4

    aget v4, p0, v4

    const/4 v5, 0x5

    aget v5, p0, v5

    invoke-static/range {v0 .. v5}, Lc/a/a/e/b;->a(FFFFFF)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/graphics/Matrix;FFFFFF)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x2

    aput p5, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p4, v0, v1

    const/4 v1, 0x5

    aput p6, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->setValues([F)V

    return-void
.end method

.method public static a(Landroid/graphics/Matrix;[F)V
    .locals 7

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v0, 0x1

    aget v2, p1, v0

    const/4 v0, 0x2

    aget v3, p1, v0

    const/4 v0, 0x3

    aget v4, p1, v0

    const/4 v0, 0x4

    aget v5, p1, v0

    const/4 v0, 0x5

    aget v6, p1, v0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lc/a/a/e/b;->a(Landroid/graphics/Matrix;FFFFFF)V

    return-void
.end method
