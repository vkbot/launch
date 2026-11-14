.class public final LY0;
.super Lfg;
.source "SourceFile"


# instance fields
.field public final d:Ldl;

.field public final e:Lel;

.field public final f:Lel;

.field public final g:LIa;

.field public h:Ljava/lang/Object;

.field public i:Ljava/util/List;

.field public j:Ljava/util/List;

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldl;Lel;Lel;LIa;)V
    .locals 0

    invoke-direct {p0}, Lfg;-><init>()V

    iput-object p1, p0, LY0;->d:Ldl;

    iput-object p2, p0, LY0;->e:Lel;

    iput-object p3, p0, LY0;->f:Lel;

    iput-object p4, p0, LY0;->g:LIa;

    sget-object p1, Lv8;->a:Lv8;

    iput-object p1, p0, LY0;->h:Ljava/lang/Object;

    iput-object p1, p0, LY0;->i:Ljava/util/List;

    iput-object p1, p0, LY0;->j:Ljava/util/List;

    iput-object p1, p0, LY0;->m:Ljava/lang/Object;

    return-void
.end method

.method public static g(Landroidx/recyclerview/widget/RecyclerView;FF)Ljava/lang/Integer;
    .locals 11

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->E(FF)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/view/View;)LEg;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LEg;->b()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v2

    sub-float/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_8

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    check-cast v5, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_3
    move-object v5, v0

    :goto_2
    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, p2, v6

    if-ltz v6, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_7

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    add-int/2addr v10, v9

    int-to-float v9, v10

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_6

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    add-int/2addr v8, v9

    int-to-float v8, v8

    cmpg-float v8, p1, v8

    if-gez v8, :cond_6

    mul-int/lit8 v4, v4, 0x5

    add-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    move-object p0, v0

    :goto_5
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v1, p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, LY0;->h:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final c(LEg;I)V
    .locals 25

    move-object/from16 v0, p1

    check-cast v0, LW0;

    move-object/from16 v1, p0

    iget-object v1, v1, LY0;->h:Ljava/lang/Object;

    move/from16 v2, p2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "items"

    invoke-static {v1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, LW0;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v3, v0, LW0;->w:[Landroid/widget/ImageView;

    array-length v4, v3

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, LZ2;->V([Ljava/lang/Object;II)V

    iget-object v4, v0, LW0;->x:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060057

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060056

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget v11, v0, LW0;->v:I

    const/4 v12, 0x2

    div-int/2addr v11, v12

    move v13, v5

    :goto_0
    if-ge v13, v12, :cond_f

    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v15, 0x800013

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v15, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v12, v5

    :goto_1
    const/4 v15, 0x5

    if-ge v12, v15, :cond_e

    mul-int/lit8 v15, v13, 0x5

    add-int/2addr v15, v12

    move/from16 p1, v13

    const v13, 0x7f0b0035

    invoke-virtual {v7, v13, v14, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v16, v7

    const/16 v7, 0x10

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v13, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v5, 0x7f080052

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v7, 0x7f080062

    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    move/from16 v17, v10

    const v10, 0x7f080051

    invoke-virtual {v13, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    aput-object v5, v3, v15

    move-object/from16 v18, v3

    sget-object v3, LT7;->r:LWj;

    move/from16 v19, v11

    if-eqz v3, :cond_d

    iget v3, v3, LWj;->f:I

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v15, v3, :cond_c

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw2;

    instance-of v11, v3, Lu2;

    move-object/from16 v20, v2

    iget-object v2, v0, LW0;->y:LY0;

    if-eqz v11, :cond_4

    move-object v11, v3

    check-cast v11, Lu2;

    move-object/from16 v21, v0

    iget-object v0, v11, Lu2;->a:Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v0}, Lcom/omoda/launcher/data/AppInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move/from16 v22, v12

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v23, v6

    const-string v6, "getResources(...)"

    invoke-static {v12, v6}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "drawable"

    invoke-static {v0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, LNa;

    move-object/from16 v24, v14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v14, v12}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-nez v12, :cond_0

    goto :goto_2

    :cond_0
    move-object v0, v12

    :cond_1
    :goto_2
    invoke-direct {v6, v0, v8, v9}, LNa;-><init>(Landroid/graphics/drawable/Drawable;IF)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v11, Lu2;->a:Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v0}, Lcom/omoda/launcher/data/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, v2, LY0;->k:Z

    if-eqz v0, :cond_3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v3, Laf;

    invoke-direct {v3, v13, v0}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_3
    new-instance v0, LU0;

    check-cast v3, Lu2;

    const/4 v5, 0x0

    invoke-direct {v0, v2, v5, v3}, LU0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LV0;

    invoke-direct {v0, v2, v3}, LV0;-><init>(LY0;Lu2;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_3

    :cond_4
    move-object/from16 v21, v0

    move-object/from16 v23, v6

    move/from16 v22, v12

    move-object/from16 v24, v14

    instance-of v0, v3, Lv2;

    if-eqz v0, :cond_2

    invoke-static {v5}, Lnb;->o(Ljava/lang/Object;)V

    move-object v0, v3

    check-cast v0, Lv2;

    invoke-static {v5, v0}, LW0;->t(Landroid/widget/ImageView;Lv2;)V

    iget-object v0, v0, Lv2;->a:Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v0}, Lcom/omoda/launcher/data/RemoteApp;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/omoda/launcher/data/RemoteApp;->getAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0700cf

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v13, v0}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v0, v2, LY0;->k:Z

    if-nez v0, :cond_7

    new-instance v0, LU0;

    check-cast v3, Lv2;

    const/4 v6, 0x1

    invoke-direct {v0, v2, v6, v3}, LU0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_5
    const v0, 0x7f0700d0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean v0, v2, LY0;->k:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {v13, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_7
    :goto_4
    iget-boolean v0, v2, LY0;->k:Z

    if-eqz v0, :cond_8

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {v13, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_8
    :goto_5
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lu2;

    if-eqz v3, :cond_9

    check-cast v0, Lu2;

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_a

    iget-object v0, v0, Lu2;->a:Lcom/omoda/launcher/data/AppInfo;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    :goto_7
    iget-object v0, v2, LY0;->l:Ljava/lang/String;

    invoke-static {v11, v0}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v2, LY0;->l:Ljava/lang/String;

    if-eqz v0, :cond_b

    const/4 v11, 0x4

    goto :goto_8

    :cond_b
    move v11, v5

    :goto_8
    invoke-virtual {v13, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    move-object/from16 v0, v24

    goto :goto_a

    :cond_c
    move-object/from16 v21, v0

    move-object/from16 v20, v2

    move-object/from16 v23, v6

    move/from16 v22, v12

    move-object/from16 v24, v14

    const/4 v0, 0x4

    const/4 v5, 0x0

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :goto_a
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v12, v22, 0x1

    move/from16 v13, p1

    move-object v14, v0

    move-object/from16 v7, v16

    move/from16 v10, v17

    move-object/from16 v3, v18

    move/from16 v11, v19

    move-object/from16 v2, v20

    move-object/from16 v0, v21

    move-object/from16 v6, v23

    goto/16 :goto_1

    :cond_d
    const-string v0, "color"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_e
    move-object/from16 v21, v0

    move-object/from16 v18, v3

    move-object/from16 v23, v6

    move-object/from16 v16, v7

    move/from16 v17, v10

    move/from16 v19, v11

    move/from16 p1, v13

    move-object v0, v14

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v13, p1, 0x1

    move-object/from16 v0, v21

    const/4 v12, 0x2

    goto/16 :goto_0

    :cond_f
    move-object/from16 v21, v0

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual/range {v21 .. v21}, LW0;->u()V

    :cond_10
    return-void
.end method

.method public final d(LEg;ILjava/util/List;)V
    .locals 3

    check-cast p1, LW0;

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, LY0;->c(LEg;I)V

    goto :goto_2

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LY0;->h:Ljava/lang/Object;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {v0, v2}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "items"

    invoke-static {v1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, LL4;->x0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lv2;

    if-eqz v2, :cond_1

    check-cast v1, Lv2;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p1, LW0;->w:[Landroid/widget/ImageView;

    invoke-static {v2, v0}, LZ2;->X([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, LW0;->t(Landroid/widget/ImageView;Lv2;)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final e(Landroid/view/ViewGroup;)LEg;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 p1, 0x11

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance p1, Log;

    invoke-direct {p1, v0, v1}, Log;-><init>(II)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, LW0;

    invoke-direct {p1, p0, v2, v1}, LW0;-><init>(LY0;Landroid/widget/LinearLayout;I)V

    return-object p1
.end method

.method public final f(LEg;)V
    .locals 0

    check-cast p1, LW0;

    invoke-virtual {p1}, LW0;->u()V

    return-void
.end method

.method public final h(Ljava/lang/String;)I
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LY0;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v1}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public final i()V
    .locals 13

    iget-object v0, p0, LY0;->i:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v2}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, LL4;->F0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, LY0;->i:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/omoda/launcher/data/AppInfo;

    new-instance v5, Lu2;

    invoke-direct {v5, v4}, Lu2;-><init>(Lcom/omoda/launcher/data/AppInfo;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, LY0;->j:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v5}, Lcom/omoda/launcher/data/RemoteApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v0, LG0;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, LG0;-><init>(I)V

    new-instance v2, LX0;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v0}, LX0;-><init>(ILjava/lang/Object;)V

    new-instance v0, LX0;

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2}, LX0;-><init>(ILjava/lang/Object;)V

    invoke-static {v3, v0}, LL4;->A0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/omoda/launcher/data/RemoteApp;

    new-instance v4, Lv2;

    invoke-direct {v4, v3}, Lv2;-><init>(Lcom/omoda/launcher/data/RemoteApp;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, LY0;->h:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw2;

    instance-of v5, v4, Lv2;

    if-eqz v5, :cond_6

    check-cast v4, Lv2;

    iget-object v5, v4, Lv2;->b:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_6

    iget-object v4, v4, Lv2;->a:Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v4}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw2;

    instance-of v4, v3, Lv2;

    if-eqz v4, :cond_8

    check-cast v3, Lv2;

    iget-object v4, v3, Lv2;->b:Landroid/graphics/Bitmap;

    if-nez v4, :cond_8

    iget-object v4, v3, Lv2;->a:Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v4}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, v3, Lv2;->b:Landroid/graphics/Bitmap;

    goto :goto_5

    :cond_9
    const/16 v0, 0xa

    invoke-static {v0, v0}, Lgf;->b(II)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    div-int/lit8 v3, v2, 0xa

    rem-int/lit8 v4, v2, 0xa

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_a

    move v4, v6

    goto :goto_6

    :cond_a
    move v4, v5

    :goto_6
    add-int/2addr v3, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v6

    :goto_7
    if-ltz v3, :cond_d

    if-ge v3, v2, :cond_d

    sub-int v7, v2, v3

    if-le v0, v7, :cond_b

    goto :goto_8

    :cond_b
    move v7, v0

    :goto_8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v6

    :goto_9
    if-ge v9, v7, :cond_c

    add-int v10, v9, v3

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_c
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0xa

    goto :goto_7

    :cond_d
    iget-object v0, p0, LY0;->m:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v4}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v3}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lw2;

    instance-of v9, v8, Lu2;

    if-eqz v9, :cond_e

    check-cast v8, Lu2;

    iget-object v9, v8, Lu2;->a:Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v9}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object v9

    iget-object v8, v8, Lu2;->a:Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v8}, Lcom/omoda/launcher/data/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/omoda/launcher/data/AppInfo;->getLastUpdateTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8}, Lcom/omoda/launcher/data/AppInfo;->getDimmed()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array {v9, v10, v11, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_c

    :cond_e
    instance-of v9, v8, Lv2;

    if-eqz v9, :cond_f

    check-cast v8, Lv2;

    iget-object v8, v8, Lv2;->a:Lcom/omoda/launcher/data/RemoteApp;

    :goto_c
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    new-instance p0, Lc5;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_10
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    iput-object v4, p0, LY0;->h:Ljava/lang/Object;

    iput-object v1, p0, LY0;->m:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_d
    iget-object v3, p0, Lfg;->a:Lgg;

    if-ge v6, v2, :cond_13

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v5, v4}, Lgg;->c(IILjava/lang/Object;)V

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v2, :cond_14

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v3, v2, p0}, Lgg;->d(II)V

    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v2, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v3, v2, p0}, Lgg;->e(II)V

    :cond_15
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, LY0;->l:Ljava/lang/String;

    invoke-static {v0, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LY0;->l:Ljava/lang/String;

    iput-object p1, p0, LY0;->l:Ljava/lang/String;

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LZ2;->W([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, LY0;->h(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-ltz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v0}, LL4;->v0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lfg;->a:Lgg;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lgg;->c(IILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final k(ILandroid/graphics/Bitmap;)V
    .locals 10

    iget-object v0, p0, LY0;->h:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v6, v1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-ltz v6, :cond_1

    check-cast v7, Lw2;

    instance-of v9, v7, Lv2;

    if-eqz v9, :cond_0

    check-cast v7, Lv2;

    iget-object v9, v7, Lv2;->a:Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v9}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result v9

    if-ne v9, p1, :cond_0

    iget-object v9, v7, Lv2;->b:Landroid/graphics/Bitmap;

    if-eq v9, p2, :cond_0

    iput-object p2, v7, Lv2;->b:Landroid/graphics/Bitmap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lfg;->a:Lgg;

    const/4 v9, 0x1

    invoke-virtual {v7, v2, v9, v6}, Lgg;->c(IILjava/lang/Object;)V

    :cond_0
    move v6, v8

    goto :goto_1

    :cond_1
    invoke-static {}, LM4;->q0()V

    throw v5

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    invoke-static {}, LM4;->q0()V

    throw v5

    :cond_4
    return-void
.end method
