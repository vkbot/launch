.class public final Lz2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Z

.field public final c:LYk;

.field public final d:Lcl;

.field public final e:Z

.field public final f:LIa;

.field public final g:LYk;

.field public final h:LY0;

.field public final i:Landroidx/recyclerview/widget/RecyclerView;

.field public final j:Landroid/widget/LinearLayout;

.field public final k:Landroid/widget/ProgressBar;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroid/view/View;

.field public final n:Landroid/view/View;

.field public final o:Landroid/widget/ImageView;

.field public final p:Landroid/view/View;

.field public final q:Landroid/view/View;

.field public final r:LK2;


# direct methods
.method public constructor <init>(Landroid/view/View;ZLdl;LYk;Lcl;LYk;Lel;Lel;ZLIa;LYk;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    const/4 v5, 0x0

    const-string v6, "view"

    invoke-static {v1, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lz2;->a:Landroid/view/View;

    move/from16 v6, p2

    iput-boolean v6, v0, Lz2;->b:Z

    move-object/from16 v6, p4

    iput-object v6, v0, Lz2;->c:LYk;

    move-object/from16 v6, p5

    iput-object v6, v0, Lz2;->d:Lcl;

    move/from16 v6, p9

    iput-boolean v6, v0, Lz2;->e:Z

    iput-object v2, v0, Lz2;->f:LIa;

    iput-object v3, v0, Lz2;->g:LYk;

    const v6, 0x7f08005b

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "findViewById(...)"

    invoke-static {v6, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v6, v0, Lz2;->i:Landroidx/recyclerview/widget/RecyclerView;

    const v8, 0x7f080057

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v0, Lz2;->j:Landroid/widget/LinearLayout;

    const v9, 0x7f08005a

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/widget/ProgressBar;

    iput-object v9, v0, Lz2;->k:Landroid/widget/ProgressBar;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080056

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, v0, Lz2;->l:Landroid/widget/TextView;

    const v10, 0x7f08005c

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-static {v10, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v0, Lz2;->m:Landroid/view/View;

    const v11, 0x7f08005e

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v11, v0, Lz2;->n:Landroid/view/View;

    const v12, 0x7f08005d

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-static {v12, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v0, Lz2;->o:Landroid/widget/ImageView;

    const v13, 0x7f08005f

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-static {v13, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v13, v0, Lz2;->p:Landroid/view/View;

    const v14, 0x7f080060

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    invoke-static {v14, v7}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v14, v0, Lz2;->q:Landroid/view/View;

    const v7, 0x7f080061

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    sget-object v15, LKi;->a:LKi;

    sget-object v15, LKi;->e:LA2;

    const/4 v4, 0x0

    if-eqz v15, :cond_2

    iget-object v15, v15, LA2;->a:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f080055

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez p12, :cond_0

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-instance v7, Lx2;

    invoke-direct {v7, v0, v5}, Lx2;-><init>(Lz2;I)V

    invoke-virtual {v10, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lx2;

    const/4 v10, 0x1

    invoke-direct {v7, v0, v10}, Lx2;-><init>(Lz2;I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ly2;

    move-object/from16 v7, p6

    invoke-direct {v1, v5, v7}, Ly2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v3, :cond_1

    new-instance v1, Ly2;

    invoke-direct {v1, v10, v3}, Ly2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance v1, LY0;

    move-object/from16 v3, p3

    move-object/from16 v7, p7

    move-object/from16 v10, p8

    invoke-direct {v1, v3, v7, v10, v2}, LY0;-><init>(Ldl;Lel;Lel;LIa;)V

    iput-object v1, v0, Lz2;->h:LY0;

    const-string v2, "ctx"

    invoke-static {v9, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lng;)V

    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Lfg;)V

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Ljg;)V

    new-instance v3, Lmc;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lmc;-><init>(I)V

    invoke-virtual {v3, v6}, Lmc;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v4, Lud;

    invoke-direct {v4, v3, v2, v8}, Lud;-><init>(Lmc;Landroidx/recyclerview/widget/LinearLayoutManager;Landroid/widget/LinearLayout;)V

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->j(Lrg;)V

    new-instance v2, LK2;

    invoke-direct {v2, v6, v1}, LK2;-><init>(Landroidx/recyclerview/widget/RecyclerView;LY0;)V

    iput-object v2, v0, Lz2;->r:LK2;

    new-instance v1, Lx2;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lx2;-><init>(Lz2;I)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lx2;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lx2;-><init>(Lz2;I)V

    invoke-virtual {v13, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lz2;->d()V

    return-void

    :cond_2
    const-string v0, "appList"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public final a()V
    .locals 8

    sget-object v0, LT7;->r:LWj;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lz2;->a:Landroid/view/View;

    const v2, 0x7f080061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget v3, v0, LWj;->a:I

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const v2, 0x7f080056

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget v4, v0, LWj;->b:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const v2, 0x7f080058

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget v4, v0, LWj;->j:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v0, v0, LWj;->m:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p0, Lz2;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f080055

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v0, 0x7f08005e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v0, 0x7f08005c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v0, 0x7f08005d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v0, 0x7f08005f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v0, 0x7f080060

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, LM4;->p0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v2}, Lff;->F(Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lz2;->h:LY0;

    iget-object p0, p0, Lfg;->a:Lgg;

    invoke-virtual {p0}, Lgg;->b()V

    return-void

    :cond_5
    const-string p0, "color"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lz2;->a:Landroid/view/View;

    const v0, 0x7f080058

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final c(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lz2;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lz2;->r:LK2;

    iget-boolean v1, v0, LK2;->c:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, v0, LK2;->c:Z

    if-nez p1, :cond_2

    invoke-virtual {v0}, LK2;->d()V

    :cond_2
    iget-object v0, v0, LK2;->b:LY0;

    iget-boolean v1, v0, LY0;->k:Z

    if-ne v1, p1, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean p1, v0, LY0;->k:Z

    iget-object p1, v0, LY0;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x0

    iget-object v0, v0, Lfg;->a:Lgg;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lgg;->c(IILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lz2;->d()V

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Lz2;->r:LK2;

    iget-boolean v0, v0, LK2;->c:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v4, p0, Lz2;->m:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lz2;->g:LYk;

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v4, p0, Lz2;->q:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, p0, Lz2;->b:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iget-object v4, p0, Lz2;->n:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v3, p0, Lz2;->e:Z

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    move v3, v2

    :goto_3
    iget-object v4, p0, Lz2;->o:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_4

    const v3, 0x7f0700d4

    goto :goto_4

    :cond_4
    const v3, 0x7f0700d6

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v0, :cond_5

    move v2, v1

    :cond_5
    iget-object v3, p0, Lz2;->p:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x0

    const-string v3, "appList"

    if-eqz v0, :cond_7

    sget-object v0, LKi;->a:LKi;

    sget-object v0, LKi;->e:LA2;

    if-eqz v0, :cond_6

    iget-object v0, v0, LA2;->c:Ljava/lang/String;

    goto :goto_5

    :cond_6
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_7
    sget-object v0, LKi;->a:LKi;

    sget-object v0, LKi;->e:LA2;

    if-eqz v0, :cond_8

    iget-object v0, v0, LA2;->b:Ljava/lang/String;

    :goto_5
    iget-object p0, p0, Lz2;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_8
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2
.end method
