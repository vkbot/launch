.class public final Lho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final a:LI5;

.field public b:Lyo;


# direct methods
.method public constructor <init>(Landroid/view/View;LI5;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lho;->a:LI5;

    sget-object p2, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LYm;->a(Landroid/view/View;)Lyo;

    move-result-object p1

    if-eqz p1, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_0

    new-instance p2, Lpo;

    invoke-direct {p2, p1}, Lpo;-><init>(Lyo;)V

    goto :goto_0

    :cond_0
    new-instance p2, Loo;

    invoke-direct {p2, p1}, Loo;-><init>(Lyo;)V

    :goto_0
    invoke-virtual {p2}, Loo;->b()Lyo;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lho;->b:Lyo;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const/4 v9, 0x2

    const/16 v1, 0x8

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLaidOut()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p1 .. p2}, Lyo;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lyo;

    move-result-object v1

    iput-object v1, v0, Lho;->b:Lyo;

    invoke-static/range {p1 .. p2}, Lio;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static/range {p1 .. p2}, Lyo;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lyo;

    move-result-object v10

    iget-object v4, v0, Lho;->b:Lyo;

    if-nez v4, :cond_1

    sget-object v4, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static/range {p1 .. p1}, LYm;->a(Landroid/view/View;)Lyo;

    move-result-object v4

    iput-object v4, v0, Lho;->b:Lyo;

    :cond_1
    iget-object v4, v0, Lho;->b:Lyo;

    if-nez v4, :cond_2

    iput-object v10, v0, Lho;->b:Lyo;

    invoke-static/range {p1 .. p2}, Lio;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static/range {p1 .. p1}, Lio;->j(Landroid/view/View;)LI5;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, v4, LI5;->b:Ljava/lang/Object;

    check-cast v4, Landroid/view/WindowInsets;

    invoke-static {v4, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static/range {p1 .. p2}, Lio;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v4, v0, Lho;->b:Lyo;

    move v6, v3

    const/4 v5, 0x0

    :goto_0
    iget-object v11, v10, Lyo;->a:Lwo;

    const/16 v12, 0x100

    if-gt v6, v12, :cond_5

    invoke-virtual {v11, v6}, Lwo;->f(I)Ldb;

    move-result-object v11

    iget-object v12, v4, Lyo;->a:Lwo;

    invoke-virtual {v12, v6}, Lwo;->f(I)Ldb;

    move-result-object v12

    invoke-virtual {v11, v12}, Ldb;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    or-int/2addr v5, v6

    :cond_4
    shl-int/2addr v6, v3

    goto :goto_0

    :cond_5
    if-nez v5, :cond_6

    invoke-static/range {p1 .. p2}, Lio;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v4, v0, Lho;->b:Lyo;

    and-int/lit8 v3, v5, 0x8

    if-eqz v3, :cond_8

    invoke-virtual {v11, v1}, Lwo;->f(I)Ldb;

    move-result-object v3

    iget v3, v3, Ldb;->d:I

    iget-object v6, v4, Lyo;->a:Lwo;

    invoke-virtual {v6, v1}, Lwo;->f(I)Ldb;

    move-result-object v1

    iget v1, v1, Ldb;->d:I

    if-le v3, v1, :cond_7

    sget-object v1, Lio;->e:Landroid/view/animation/PathInterpolator;

    goto :goto_1

    :cond_7
    sget-object v1, Lio;->f:LV8;

    goto :goto_1

    :cond_8
    sget-object v1, Lio;->g:Landroid/view/animation/DecelerateInterpolator;

    :goto_1
    new-instance v12, Lmo;

    const-wide/16 v13, 0xa0

    invoke-direct {v12, v5, v1, v13, v14}, Lmo;-><init>(ILandroid/view/animation/Interpolator;J)V

    iget-object v1, v12, Lmo;->a:Llo;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Llo;->d(F)V

    new-array v1, v9, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v3, v12, Lmo;->a:Llo;

    invoke-virtual {v3}, Llo;->a()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v13

    invoke-virtual {v11, v5}, Lwo;->f(I)Ldb;

    move-result-object v1

    iget-object v3, v4, Lyo;->a:Lwo;

    invoke-virtual {v3, v5}, Lwo;->f(I)Ldb;

    move-result-object v3

    iget v6, v1, Ldb;->a:I

    iget v11, v3, Ldb;->a:I

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v11, v1, Ldb;->b:I

    iget v14, v3, Ldb;->b:I

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v15

    iget v9, v1, Ldb;->c:I

    iget v2, v3, Ldb;->c:I

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    move-object/from16 v16, v13

    iget v13, v1, Ldb;->d:I

    move/from16 v17, v5

    iget v5, v3, Ldb;->d:I

    move-object/from16 v18, v4

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v15, v0, v4}, Ldb;->b(IIII)Ldb;

    move-result-object v0

    iget v1, v1, Ldb;->a:I

    iget v3, v3, Ldb;->a:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v11, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v13, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v3, v2, v4}, Ldb;->b(IIII)Ldb;

    move-result-object v1

    new-instance v9, LK1;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-direct {v9, v0, v1, v2, v3}, LK1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-static {v7, v8, v3}, Lio;->f(Landroid/view/View;Landroid/view/WindowInsets;Z)V

    new-instance v0, Lgo;

    move-object v1, v0

    move-object v2, v12

    move-object v3, v10

    move-object/from16 v4, v18

    move/from16 v5, v17

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lgo;-><init>(Lmo;Lyo;Lyo;ILandroid/view/View;)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, LUl;

    const/4 v2, 0x2

    invoke-direct {v0, v12, v7, v2}, LUl;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, LU6;

    invoke-direct {v0, v7, v12, v9, v1}, LU6;-><init>(Landroid/view/View;Lmo;LK1;Landroid/animation/ValueAnimator;)V

    invoke-static {v7, v0}, LUe;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lho;->b:Lyo;

    invoke-static/range {p1 .. p2}, Lio;->i(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
