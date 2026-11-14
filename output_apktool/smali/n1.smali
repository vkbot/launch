.class public final Ln1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe;
.implements LG5;
.implements Lde;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ly1;


# direct methods
.method public synthetic constructor <init>(Ly1;I)V
    .locals 0

    iput p2, p0, Ln1;->a:I

    iput-object p1, p0, Ln1;->b:Ly1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(LLd;Z)V
    .locals 8

    iget v0, p0, Ln1;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, LLd;->k()LLd;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    move-object p1, v0

    :cond_1
    iget-object p0, p0, Ln1;->b:Ly1;

    iget-object v4, p0, Ly1;->L:[Lx1;

    if-eqz v4, :cond_2

    array-length v5, v4

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    if-eqz v6, :cond_3

    iget-object v7, v6, Lx1;->h:LLd;

    if-ne v7, p1, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_6

    if-eqz v3, :cond_5

    iget p1, v6, Lx1;->a:I

    invoke-virtual {p0, p1, v6, v0}, Ly1;->p(ILx1;LLd;)V

    invoke-virtual {p0, v6, v2}, Ly1;->r(Lx1;Z)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v6, p2}, Ly1;->r(Lx1;Z)V

    :cond_6
    :goto_3
    return-void

    :pswitch_0
    iget-object p0, p0, Ln1;->b:Ly1;

    invoke-virtual {p0, p1}, Ly1;->q(LLd;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public k(Landroid/view/View;Lyo;)Lyo;
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Lyo;->d()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ln1;->b:Ly1;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Lyo;->d()I

    move-result v5

    iget-object v0, v4, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_f

    iget-object v0, v4, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, v4, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_d

    iget-object v0, v4, Ly1;->c0:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v4, Ly1;->c0:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v4, Ly1;->d0:Landroid/graphics/Rect;

    :cond_0
    iget-object v10, v4, Ly1;->c0:Landroid/graphics/Rect;

    iget-object v0, v4, Ly1;->d0:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lyo;->b()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lyo;->d()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lyo;->c()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lyo;->a()I

    move-result v14

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v11, v4, Ly1;->A:Landroid/view/ViewGroup;

    sget-object v12, LDn;->a:Ljava/lang/reflect/Method;

    if-eqz v12, :cond_1

    :try_start_0
    filled-new-array {v10, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v11, "ViewUtils"

    const-string v12, "Could not invoke computeFitSystemWindows"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget v0, v10, Landroid/graphics/Rect;->top:I

    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v12, v4, Ly1;->A:Landroid/view/ViewGroup;

    sget-object v13, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v12}, LYm;->a(Landroid/view/View;)Lyo;

    move-result-object v12

    if-nez v12, :cond_2

    move v13, v6

    goto :goto_1

    :cond_2
    invoke-virtual {v12}, Lyo;->b()I

    move-result v13

    :goto_1
    if-nez v12, :cond_3

    move v12, v6

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Lyo;->c()I

    move-result v12

    :goto_2
    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v14, v0, :cond_5

    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v14, v11, :cond_5

    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v14, v10, :cond_4

    goto :goto_3

    :cond_4
    move v10, v6

    goto :goto_4

    :cond_5
    :goto_3
    iput v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v11, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v10, v9

    :goto_4
    iget-object v11, v4, Ly1;->k:Landroid/content/Context;

    if-lez v0, :cond_6

    iget-object v0, v4, Ly1;->C:Landroid/view/View;

    if-nez v0, :cond_6

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v11}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Ly1;->C:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v15, 0x33

    const/4 v7, -0x1

    invoke-direct {v0, v7, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v13, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v12, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v12, v4, Ly1;->A:Landroid/view/ViewGroup;

    iget-object v13, v4, Ly1;->C:Landroid/view/View;

    invoke-virtual {v12, v13, v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_6
    iget-object v0, v4, Ly1;->C:Landroid/view/View;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v14, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v7, v14, :cond_7

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v7, v13, :cond_7

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v7, v12, :cond_8

    :cond_7
    iput v14, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v12, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v7, v4, Ly1;->C:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    :goto_5
    iget-object v0, v4, Ly1;->C:Landroid/view/View;

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move v9, v6

    :goto_6
    if-eqz v9, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v4, Ly1;->C:Landroid/view/View;

    invoke-static {v0}, LRm;->g(Landroid/view/View;)I

    move-result v7

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_a

    const v7, 0x7f050006

    invoke-static {v11, v7}, LO5;->a(Landroid/content/Context;I)I

    move-result v7

    goto :goto_7

    :cond_a
    const v7, 0x7f050005

    invoke-static {v11, v7}, LO5;->a(Landroid/content/Context;I)I

    move-result v7

    :goto_7
    invoke-virtual {v0, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_b
    iget-boolean v0, v4, Ly1;->H:Z

    if-nez v0, :cond_c

    if-eqz v9, :cond_c

    move v5, v6

    :cond_c
    move v0, v9

    move v9, v10

    goto :goto_8

    :cond_d
    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v0, :cond_e

    iput v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v0, v6

    goto :goto_8

    :cond_e
    move v0, v6

    move v9, v0

    :goto_8
    if-eqz v9, :cond_10

    iget-object v7, v4, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_f
    move v0, v6

    :cond_10
    :goto_9
    iget-object v4, v4, Ly1;->C:Landroid/view/View;

    if-eqz v4, :cond_12

    if-eqz v0, :cond_11

    goto :goto_a

    :cond_11
    const/16 v6, 0x8

    :goto_a
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    if-eq v3, v5, :cond_14

    invoke-virtual/range {p2 .. p2}, Lyo;->b()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Lyo;->c()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lyo;->a()I

    move-result v4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_13

    new-instance v6, Lpo;

    invoke-direct {v6, v2}, Lpo;-><init>(Lyo;)V

    goto :goto_b

    :cond_13
    new-instance v6, Loo;

    invoke-direct {v6, v2}, Loo;-><init>(Lyo;)V

    :goto_b
    invoke-static {v0, v5, v3, v4}, Ldb;->b(IIII)Ldb;

    move-result-object v0

    invoke-virtual {v6, v0}, Loo;->f(Ldb;)V

    invoke-virtual {v6}, Loo;->b()Lyo;

    move-result-object v0

    goto :goto_c

    :cond_14
    move-object v0, v2

    :goto_c
    sget-object v2, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Lyo;->e()Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-static {v1, v2}, LVm;->b(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {v1, v3}, Lyo;->f(Landroid/view/View;Landroid/view/WindowInsets;)Lyo;

    move-result-object v0

    :cond_15
    return-object v0
.end method

.method public p(LLd;)Z
    .locals 1

    iget v0, p0, Ln1;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, LLd;->k()LLd;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Ln1;->b:Ly1;

    iget-boolean v0, p0, Ly1;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Ly1;->Q:Z

    if-nez p0, :cond_0

    const/16 p0, 0x6c

    invoke-interface {v0, p0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :pswitch_0
    iget-object p0, p0, Ln1;->b:Ly1;

    iget-object p0, p0, Ly1;->l:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    if-eqz p0, :cond_1

    const/16 v0, 0x6c

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
