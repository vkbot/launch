.class public final LZk;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Ljava/lang/CharSequence;

.field public final synthetic g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic h:LS0;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS0;LS5;)V
    .locals 0

    iput-object p1, p0, LZk;->e:Landroid/widget/TextView;

    iput-object p2, p0, LZk;->f:Ljava/lang/CharSequence;

    iput-object p3, p0, LZk;->g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p4, p0, LZk;->h:LS0;

    invoke-direct {p0, p5}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 6

    new-instance p2, LZk;

    iget-object v3, p0, LZk;->g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v4, p0, LZk;->h:LS0;

    iget-object v1, p0, LZk;->e:Landroid/widget/TextView;

    iget-object v2, p0, LZk;->f:Ljava/lang/CharSequence;

    move-object v0, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LZk;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS0;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Lgf;->v(Ljava/lang/Object;)V

    iget-object v1, v0, LZk;->e:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, LZk;->f:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    iget-object v7, v0, LZk;->g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v1, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Y0:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    goto/16 :goto_7

    :cond_2
    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sget-object v3, LKi;->a:LKi;

    invoke-static {}, LKi;->d()LOb;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :try_start_2
    const-string v5, "?"

    :goto_2
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    sget-object v8, LT7;->q:LYj;

    if-eqz v8, :cond_b

    invoke-virtual {v8, v7}, LYj;->a(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    const/16 v8, 0x20

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-int v8, v8

    const/16 v10, 0x18

    int-to-float v10, v10

    mul-float/2addr v10, v1

    float-to-int v10, v10

    invoke-virtual {v6, v8, v10, v8, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v11, v3, LOb;->a:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x42100000    # 36.0f

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v11

    iget v11, v11, LWj;->f:I

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v11, 0x11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v12, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v3, LOb;->c:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v5

    iget v5, v5, Lbk;->d:I

    int-to-float v5, v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v5

    iget v5, v5, LWj;->b:I

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x10

    int-to-float v12, v12

    mul-float/2addr v12, v1

    float-to-int v12, v12

    iput v12, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v8, v0, LZk;->h:LS0;

    if-eqz v8, :cond_3

    :try_start_3
    iget-object v0, v3, LOb;->b:Ljava/lang/String;

    iget-object v3, v8, LS0;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_3
    iget-object v0, v3, LOb;->e:Ljava/lang/String;

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v0

    iget v0, v0, Lbk;->d:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz v8, :cond_4

    invoke-static {}, LT7;->e()LWj;

    move-result-object v0

    iget v0, v0, LWj;->c:I

    goto :goto_4

    :cond_4
    invoke-static {}, LT7;->e()LWj;

    move-result-object v0

    iget v0, v0, LWj;->j:I

    :goto_4
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x4

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v0, 0x8

    const/16 v3, 0xc

    if-eqz v8, :cond_6

    iget-object v5, v8, LS0;->e:Ljava/lang/String;

    :try_start_4
    invoke-static {v5}, LSi;->M(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v16, LKi;->a:LKi;

    invoke-static {}, LKi;->d()LOb;

    move-result-object v9

    iget-object v9, v9, LOb;->i:Ljava/lang/String;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v9

    iget v9, v9, Lbk;->f:I

    int-to-float v9, v9

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v9

    iget v9, v9, LWj;->b:I

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const v9, 0x800003

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v13, 0x14

    int-to-float v13, v13

    mul-float/2addr v13, v1

    float-to-int v13, v13

    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/widget/ScrollView;

    invoke-direct {v11, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v15

    iget v15, v15, LWj;->l:I

    invoke-virtual {v13, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v15, v0

    mul-float/2addr v15, v1

    invoke-virtual {v13, v15}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    int-to-float v15, v2

    mul-float/2addr v15, v1

    float-to-int v15, v15

    invoke-static {}, LT7;->e()LWj;

    move-result-object v0

    iget v0, v0, LWj;->m:I

    invoke-virtual {v13, v15, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {v11, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    int-to-float v0, v3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v11, v12, v0, v12, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v2

    iget v2, v2, Lbk;->e:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v2

    iget v2, v2, LWj;->c:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x40800000    # 4.0f

    const v5, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v2, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {v11, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v14, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x6

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v2, 0xb4

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v5, v5, 0x3

    if-le v2, v5, :cond_5

    move v2, v5

    :cond_5
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v6, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    if-eqz v8, :cond_7

    iget-object v0, v8, LS0;->d:Ljava/lang/String;

    :try_start_5
    invoke-static {v0}, LSi;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v5, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object v5

    iget-object v5, v5, LOg;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v0

    iget v0, v0, Lbk;->e:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v0

    iget v0, v0, LWj;->a:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v0, v14, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float v5, v3

    mul-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0xdc

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    const/16 v5, 0x40

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v5, v5

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v11, LKi;->a:LKi;

    invoke-static {}, LKi;->c()LX4;

    move-result-object v11

    iget-object v11, v11, LX4;->e:Ljava/lang/String;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v11

    iget v11, v11, Lbk;->e:I

    int-to-float v11, v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v11

    iget v11, v11, LVj;->f:I

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v11, 0x11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {}, LT7;->d()LVj;

    move-result-object v12

    invoke-virtual {v12, v7}, LVj;->b(Landroid/content/Context;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    const/16 v4, 0x8

    :goto_5
    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v8, :cond_9

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float v11, v3

    mul-float/2addr v11, v1

    float-to-int v11, v11

    invoke-virtual {v4, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, LKi;->c()LX4;

    move-result-object v11

    iget-object v11, v11, LX4;->a:Ljava/lang/String;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v11

    iget v11, v11, Lbk;->e:I

    int-to-float v11, v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v11

    iget v11, v11, LVj;->g:I

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v11, 0x11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {}, LT7;->d()LVj;

    move-result-object v12

    invoke-virtual {v12, v7}, LVj;->c(Landroid/content/Context;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v14, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v2

    iget v2, v2, Lbk;->c:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v2

    iget v2, v2, LWj;->b:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v2, v14, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v3, 0x7f0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v3, 0x2bc

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x11

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_a

    invoke-interface {v1, v6, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    iput-object v6, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Y0:Landroid/widget/LinearLayout;

    new-instance v1, LFk;

    const/16 v2, 0x15

    invoke-direct {v1, v2, v7}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v8, :cond_c

    new-instance v1, LPk;

    move-object v3, v1

    move-object v5, v9

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, LPk;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS0;)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_b
    const-string v0, "dialog"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    const-string v1, "TopOverlayA11y"

    const-string v2, "showLauncherUpdateDialog failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_7
    sget-object v0, Lsm;->a:Lsm;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, LZk;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, LZk;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, LZk;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
