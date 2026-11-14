.class public final LJ2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LJ2;->a:I

    iput-object p2, p0, LJ2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v1, p0

    const/4 v0, -0x1

    const/16 v12, 0x28

    const/16 v13, 0x11

    const/4 v14, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v5, v1, LJ2;->a:I

    packed-switch v5, :pswitch_data_0

    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, LIo;

    iget-object v0, v0, LIo;->n:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, LIo;

    iget v2, v0, LIo;->o:I

    const/4 v5, 0x5

    if-lt v2, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    add-int/2addr v2, v3

    iput v2, v0, LIo;->o:I

    iget-object v0, v0, LIo;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v6, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v6, LIo;

    invoke-virtual {v6, v5}, LIo;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v6, LIo;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, LIo;->h(I)Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v2, LIo;->q:LOf;

    goto :goto_0

    :cond_1
    iget-object v3, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v3, LIo;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6, v2}, LIo;->q(ILandroid/graphics/Rect;)Z

    iget-object v2, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v2, LIo;

    iget-boolean v2, v2, LIo;->g:Z

    if-nez v2, :cond_2

    iget-object v2, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v2, LIo;

    iget-object v2, v2, LIo;->a:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v2, v3}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    :cond_2
    sget-object v2, LIo;->q:LOf;

    :goto_1
    move v3, v4

    goto :goto_0

    :cond_3
    sget-object v2, LIo;->q:LOf;

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    sget-object v0, LIo;->q:LOf;

    goto :goto_3

    :cond_5
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, LIo;

    iget-object v0, v0, LIo;->b:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_6
    :goto_2
    sget-object v0, LIo;->q:LOf;

    :goto_3
    return-void

    :pswitch_0
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, Lkn;

    invoke-virtual {v0, v4}, Lkn;->n(I)V

    return-void

    :pswitch_1
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->a:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/ActionMenuView;->t:Ll0;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ll0;->l()Z

    :cond_7
    return-void

    :pswitch_2
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, Lqk;

    iget-boolean v0, v0, Lqk;->f:Z

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, Lqk;

    iget-boolean v0, v0, Lqk;->e:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, Lqk;

    iput-boolean v3, v0, Lqk;->g:Z

    goto :goto_4

    :cond_9
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, Lqk;

    iput-boolean v3, v0, Lqk;->e:Z

    new-instance v0, Ljava/lang/Thread;

    iget-object v2, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v2, Lqk;

    new-instance v3, LD2;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4, v1}, LD2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string v1, "TimeSyncThread"

    invoke-direct {v0, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_4
    return-void

    :pswitch_3
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v0, v0, Lcom/google/android/material/textfield/TextInputLayout;->c:LB8;

    iget-object v0, v0, LB8;->g:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    invoke-virtual {v0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    return-void

    :pswitch_4
    invoke-static {}, Lvf;->g()J

    move-result-wide v16

    const-wide/32 v18, 0x12c00000

    cmp-long v0, v16, v18

    iget-object v2, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v2, LIi;

    if-gez v0, :cond_e

    iget-boolean v0, v2, LIi;->e:Z

    if-nez v0, :cond_f

    invoke-static {}, Lvf;->g()J

    move-result-wide v4

    const-wide/32 v16, 0x100000

    div-long v4, v4, v16

    const-string v14, "StorageWarning"

    const-string v0, "getContext(...)"

    iget-object v6, v2, LIi;->a:Landroid/content/Context;

    const-string v7, "Low /data storage: "

    iget-object v15, v2, LIi;->d:Landroid/widget/LinearLayout;

    if-eqz v15, :cond_a

    goto/16 :goto_8

    :cond_a
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    sget-object v8, LKi;->r:LHi;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_d

    :try_start_1
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v10, v8, LHi;->c:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    filled-new-array/range {v16 .. v16}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    :try_start_2
    const-string v9, ""

    :goto_5
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    sget-object v11, LT7;->q:LYj;

    if-eqz v11, :cond_c

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v13}, LYj;->a(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundResource(I)V

    int-to-float v11, v12

    mul-float/2addr v11, v15

    float-to-int v11, v11

    const/16 v12, 0x1c

    int-to-float v12, v12

    mul-float/2addr v12, v15

    float-to-int v12, v12

    const/16 v13, 0x18

    int-to-float v13, v13

    mul-float/2addr v13, v15

    float-to-int v13, v13

    invoke-virtual {v10, v11, v12, v11, v13}, Landroid/view/View;->setPadding(IIII)V

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v12, v8, LHi;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x42080000    # 34.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v12

    iget v12, v12, LWj;->j:I

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v12, "sans-serif"

    invoke-static {v12, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v3, 0x11

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v3, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v12, 0x10

    int-to-float v12, v12

    mul-float/2addr v12, v15

    float-to-int v12, v12

    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v10, v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v8, v8, LHi;->b:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v8

    iget v8, v8, LWj;->f:I

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x2d0

    int-to-float v11, v11

    mul-float/2addr v11, v15

    float-to-int v11, v11

    const/4 v12, -0x2

    invoke-direct {v8, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xc

    int-to-float v11, v11

    mul-float/2addr v11, v15

    float-to-int v11, v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v10, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v8

    iget v8, v8, LWj;->f:I

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v8, 0x11

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v13, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v10, v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v6, LKi;->a:LKi;

    invoke-static {}, LKi;->c()LX4;

    move-result-object v6

    iget-object v6, v6, LX4;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v6

    iget v6, v6, Lbk;->e:I

    int-to-float v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v6

    iget v6, v6, LVj;->f:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v6, 0x11

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, LT7;->d()LVj;

    move-result-object v8

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, LVj;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x118

    int-to-float v6, v6

    mul-float/2addr v6, v15

    float-to-int v6, v6

    const/16 v8, 0x40

    int-to-float v8, v8

    mul-float/2addr v8, v15

    float-to-int v8, v8

    invoke-direct {v0, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v6, 0x7f0

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x100

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v6, -0x3

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v6, -0x2

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v6, 0x11

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v6, v2, LIi;->b:Landroid/view/WindowManager;

    if-eqz v6, :cond_b

    invoke-interface {v6, v10, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_b
    :goto_6
    iput-object v10, v2, LIi;->d:Landroid/widget/LinearLayout;

    new-instance v0, Ly2;

    const/4 v6, 0x6

    invoke-direct {v0, v6, v2}, Ly2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "MB free \u2014 warning shown"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_c
    const-string v0, "dialog"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_d
    const-string v0, "storage"

    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_7
    const-string v3, "Failed to show storage warning"

    invoke-static {v14, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_e
    iput-boolean v4, v2, LIi;->e:Z

    invoke-virtual {v2}, LIi;->a()V

    :cond_f
    :goto_8
    iget-object v0, v2, LIi;->c:Landroid/os/Handler;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_5
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B0()Z

    return-void

    :pswitch_6
    sget-object v5, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {}, Lgf;->j()Z

    move-result v5

    iget-object v6, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v6, Lcom/omoda/launcher/MainActivity;

    if-eqz v5, :cond_10

    iget v0, v6, Lcom/omoda/launcher/MainActivity;->H:I

    invoke-virtual {v6, v0}, Lcom/omoda/launcher/MainActivity;->D(I)V

    goto/16 :goto_b

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-wide v9, v6, Lcom/omoda/launcher/MainActivity;->G:J

    sub-long/2addr v7, v9

    iget-object v5, v6, Lcom/omoda/launcher/MainActivity;->J:Landroid/widget/FrameLayout;

    if-nez v5, :cond_22

    iget-wide v9, v6, Lcom/omoda/launcher/MainActivity;->K:J

    cmp-long v7, v7, v9

    if-ltz v7, :cond_22

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-virtual {v6, v5}, Lcom/omoda/launcher/MainActivity;->F(Landroid/widget/FrameLayout;)V

    goto/16 :goto_a

    :cond_11
    sget-object v5, LKi;->a:LKi;

    sget-object v5, LKi;->q:Lu;

    if-eqz v5, :cond_21

    invoke-virtual {v6}, Lb1;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v9, 0x30

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    int-to-float v10, v12

    mul-float/2addr v10, v7

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v6}, Lb1;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v10, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    sget-object v11, LT7;->r:LWj;

    const-string v12, "color"

    if-eqz v11, :cond_20

    iget v11, v11, LWj;->p:I

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v2, v2

    mul-float v11, v2, v9

    float-to-int v11, v11

    sget-object v13, LT7;->r:LWj;

    if-eqz v13, :cond_1f

    iget v13, v13, LWj;->o:I

    invoke-virtual {v10, v11, v13}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v11, 0x8

    int-to-float v11, v11

    mul-float/2addr v9, v11

    invoke-virtual {v10, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v10, v5, Lu;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v10, LT7;->s:Lbk;

    const-string v13, "size"

    if-eqz v10, :cond_1e

    iget v10, v10, Lbk;->a:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v10, LT7;->r:LWj;

    if-eqz v10, :cond_1d

    iget v10, v10, LWj;->c:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v10, v0, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v15, 0x18

    int-to-float v15, v15

    mul-float v4, v15, v7

    float-to-int v4, v4

    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0800e1

    invoke-virtual {v9, v10}, Landroid/view/View;->setId(I)V

    iget-object v10, v5, Lu;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v10, LT7;->s:Lbk;

    if-eqz v10, :cond_1c

    iget v10, v10, Lbk;->d:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v10, LT7;->r:LWj;

    if-eqz v10, :cond_1b

    iget v10, v10, LWj;->a:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    const v10, 0x3f99999a    # 1.2f

    invoke-virtual {v9, v14, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    invoke-direct {v10, v0, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v10, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0800e0

    invoke-virtual {v9, v10}, Landroid/view/View;->setId(I)V

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v10, 0x10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    invoke-virtual {v9, v4, v10, v4, v10}, Landroid/view/View;->setPadding(IIII)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    sget-object v10, LT7;->r:LWj;

    if-eqz v10, :cond_1a

    iget v10, v10, LWj;->l:I

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-float v10, v11, v7

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v9, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v5, Lu;->f:Ljava/lang/String;

    const-string v10, "0"

    invoke-virtual {v6, v4, v10}, Lcom/omoda/launcher/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, v5, Lu;->g:Ljava/lang/String;

    iget-object v10, v5, Lu;->k:Ljava/lang/String;

    invoke-virtual {v6, v4, v10}, Lcom/omoda/launcher/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, v5, Lu;->h:Ljava/lang/String;

    invoke-virtual {v6, v4, v10}, Lcom/omoda/launcher/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v4, v5, Lu;->l:Ljava/lang/String;

    const-string v10, "0 "

    invoke-virtual {v10, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v10, v5, Lu;->i:Ljava/lang/String;

    invoke-virtual {v6, v10, v4}, Lcom/omoda/launcher/MainActivity;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v4, v0, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v10, 0x1c

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v8, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x40

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    const/16 v9, 0x1a4

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    sget-object v10, LT7;->p:LVj;

    const-string v14, "button"

    if-eqz v10, :cond_19

    invoke-virtual {v6}, Lb1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v10, v10, LVj;->c:Ljava/lang/String;

    const-string v1, "drawable"

    invoke-virtual {v0, v10, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v3, v5, Lu;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, LT7;->s:Lbk;

    if-eqz v3, :cond_18

    iget v3, v3, Lbk;->e:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v3, LT7;->p:LVj;

    if-eqz v3, :cond_17

    iget v3, v3, LVj;->f:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :try_start_3
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_9

    :catch_2
    invoke-virtual {v6}, Lb1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    sget-object v5, LT7;->r:LWj;

    if-eqz v5, :cond_16

    iget v5, v5, LWj;->p:I

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sget-object v5, LT7;->r:LWj;

    if-eqz v5, :cond_15

    iget v5, v5, LWj;->o:I

    invoke-virtual {v3, v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    mul-float/2addr v11, v0

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    move-object v0, v3

    :goto_9
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6}, Lb1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v15

    float-to-int v0, v0

    invoke-virtual {v6}, Lb1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v15

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v0, LUc;

    const/4 v2, 0x6

    invoke-direct {v0, v6, v2}, LUc;-><init>(Lcom/omoda/launcher/MainActivity;I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x2f8

    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v0}, Lcom/omoda/launcher/MainActivity;->F(Landroid/widget/FrameLayout;)V

    iget-object v1, v6, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    const-string v2, "binding"

    if-eqz v1, :cond_14

    iget-object v1, v1, Lt2;->a:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, v6, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz v1, :cond_13

    iget-object v1, v1, Lt2;->a:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, v6, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz v1, :cond_12

    iget-object v1, v1, Lt2;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    const-string v2, "rootLayout"

    invoke-static {v1, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, LC6;->a(Landroid/view/View;)V

    iput-object v0, v6, Lcom/omoda/launcher/MainActivity;->J:Landroid/widget/FrameLayout;

    const-string v0, "MainActivity"

    const-string v1, "Error overlay shown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_12
    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_13
    const/4 v0, 0x0

    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/4 v0, 0x0

    invoke-static {v2}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_15
    const/4 v0, 0x0

    invoke-static {v12}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_16
    const/4 v0, 0x0

    invoke-static {v12}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_17
    const/4 v0, 0x0

    invoke-static {v14}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_18
    const/4 v0, 0x0

    invoke-static {v13}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_19
    const/4 v0, 0x0

    invoke-static {v14}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_1a
    const/4 v0, 0x0

    invoke-static {v12}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const/4 v0, 0x0

    invoke-static {v12}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const/4 v0, 0x0

    invoke-static {v13}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/4 v0, 0x0

    invoke-static {v12}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_1e
    const/4 v0, 0x0

    invoke-static {v13}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const/4 v0, 0x0

    invoke-static {v12}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x0

    invoke-static {v12}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 v0, 0x0

    const-string v1, "accessibilityError"

    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_22
    :goto_a
    iget-object v0, v6, Lcom/omoda/launcher/MainActivity;->J:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_23

    invoke-virtual {v6, v0}, Lcom/omoda/launcher/MainActivity;->F(Landroid/widget/FrameLayout;)V

    :cond_23
    iget-object v0, v6, Lcom/omoda/launcher/MainActivity;->F:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_b
    return-void

    :pswitch_7
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, Lvb;

    iget-object v2, v0, Lvb;->c:LEg;

    if-eqz v2, :cond_31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lvb;->B:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_24

    const-wide/16 v16, 0x0

    goto :goto_c

    :cond_24
    sub-long v4, v2, v4

    move-wide/from16 v16, v4

    :goto_c
    iget-object v4, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object v4

    iget-object v5, v0, Lvb;->A:Landroid/graphics/Rect;

    if-nez v5, :cond_25

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lvb;->A:Landroid/graphics/Rect;

    :cond_25
    iget-object v5, v0, Lvb;->c:LEg;

    iget-object v5, v5, LEg;->a:Landroid/view/View;

    iget-object v8, v0, Lvb;->A:Landroid/graphics/Rect;

    iget-object v9, v4, Lng;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v9, :cond_26

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_d

    :cond_26
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/RecyclerView;->O(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_d
    invoke-virtual {v4}, Lng;->d()Z

    move-result v5

    if-eqz v5, :cond_28

    iget v5, v0, Lvb;->j:F

    iget v8, v0, Lvb;->h:F

    add-float/2addr v5, v8

    float-to-int v5, v5

    iget-object v8, v0, Lvb;->A:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int v8, v5, v8

    iget-object v9, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, v0, Lvb;->h:F

    cmpg-float v10, v9, v14

    if-gez v10, :cond_27

    if-gez v8, :cond_27

    move v11, v8

    goto :goto_e

    :cond_27
    cmpl-float v8, v9, v14

    if-lez v8, :cond_28

    iget-object v8, v0, Lvb;->c:LEg;

    iget-object v8, v8, LEg;->a:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    iget-object v5, v0, Lvb;->A:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v5

    iget-object v5, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v9, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v5, v9

    sub-int v5, v8, v5

    if-lez v5, :cond_28

    move v11, v5

    goto :goto_e

    :cond_28
    const/4 v11, 0x0

    :goto_e
    invoke-virtual {v4}, Lng;->e()Z

    move-result v4

    if-eqz v4, :cond_2a

    iget v4, v0, Lvb;->k:F

    iget v5, v0, Lvb;->i:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v0, Lvb;->A:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v5, v4, v5

    iget-object v8, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    sub-int/2addr v5, v8

    iget v8, v0, Lvb;->i:F

    cmpg-float v9, v8, v14

    if-gez v9, :cond_29

    if-gez v5, :cond_29

    goto :goto_f

    :cond_29
    cmpl-float v5, v8, v14

    if-lez v5, :cond_2a

    iget-object v5, v0, Lvb;->c:LEg;

    iget-object v5, v5, LEg;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v4, v0, Lvb;->A:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v4

    iget-object v4, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v8, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v4, v8

    sub-int/2addr v5, v4

    if-lez v5, :cond_2a

    goto :goto_f

    :cond_2a
    const/4 v5, 0x0

    :goto_f
    if-eqz v11, :cond_2b

    iget-object v9, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v0, Lvb;->c:LEg;

    iget-object v4, v4, LEg;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v10

    iget-object v4, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    iget-object v8, v0, Lvb;->m:Lvj;

    move-wide/from16 v12, v16

    invoke-virtual/range {v8 .. v13}, Lvj;->e(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    move-result v11

    :cond_2b
    move v4, v11

    if-eqz v5, :cond_2c

    iget-object v9, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v8, v0, Lvb;->c:LEg;

    iget-object v8, v8, LEg;->a:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v10

    iget-object v8, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    iget-object v8, v0, Lvb;->m:Lvj;

    move v11, v5

    move-wide/from16 v12, v16

    invoke-virtual/range {v8 .. v13}, Lvj;->e(Landroidx/recyclerview/widget/RecyclerView;IIJ)I

    move-result v5

    :cond_2c
    if-nez v4, :cond_2e

    if-eqz v5, :cond_2d

    goto :goto_10

    :cond_2d
    iput-wide v6, v0, Lvb;->B:J

    goto :goto_11

    :cond_2e
    :goto_10
    iget-wide v8, v0, Lvb;->B:J

    cmp-long v6, v8, v6

    if-nez v6, :cond_2f

    iput-wide v2, v0, Lvb;->B:J

    :cond_2f
    iget-object v2, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget-object v2, v0, Lvb;->c:LEg;

    if-eqz v2, :cond_30

    invoke-virtual {v0, v2}, Lvb;->o(LEg;)V

    :cond_30
    iget-object v2, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, v0, Lvb;->s:LJ2;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v0, v1}, LRm;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_31
    :goto_11
    return-void

    :pswitch_8
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, LJ9;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, LJ9;->x(Z)Z

    return-void

    :pswitch_9
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, LY8;

    iget v1, v0, LY8;->A:I

    iget-object v4, v0, LY8;->z:Landroid/animation/ValueAnimator;

    if-eq v1, v3, :cond_32

    if-eq v1, v2, :cond_33

    goto :goto_12

    :cond_32
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_33
    const/4 v1, 0x3

    iput v1, v0, LY8;->A:I

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-array v1, v2, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v14, v1, v0

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/16 v0, 0x1f4

    int-to-long v0, v0

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :goto_12
    return-void

    :pswitch_a
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, LK7;

    const/4 v3, 0x0

    iput-object v3, v0, LK7;->l:LJ2;

    invoke-virtual {v0}, LK7;->drawableStateChanged()V

    return-void

    :pswitch_b
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, Lp7;

    iget-object v1, v0, Lp7;->S:Ln7;

    iget-object v0, v0, Lp7;->a0:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Ln7;->onDismiss(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_c
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, LW6;

    iget-object v1, v0, LW6;->a:Landroid/view/ViewGroup;

    iget-object v2, v0, LW6;->b:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, v0, LW6;->c:LX6;

    invoke-virtual {v0}, Lv1;->d()V

    return-void

    :pswitch_d
    :try_start_4
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/a;

    invoke-static {v0}, Landroidx/activity/a;->e(Landroidx/activity/a;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_15

    :catch_3
    move-exception v0

    goto :goto_13

    :catch_4
    move-exception v0

    goto :goto_14

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Attempt to invoke virtual method \'android.os.Handler android.app.FragmentHostCallback.getHandler()\' on a null object reference"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_15

    :cond_34
    throw v0

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not perform this action after onSaveInstanceState"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    :goto_15
    return-void

    :cond_35
    throw v0

    :pswitch_e
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, LC3;

    const/4 v1, 0x0

    iput-boolean v1, v0, LC3;->c:Z

    iget-object v1, v0, LC3;->e:LV5;

    check-cast v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->M:Lkn;

    if-eqz v3, :cond_36

    invoke-virtual {v3}, Lkn;->f()Z

    move-result v3

    if-eqz v3, :cond_36

    iget v1, v0, LC3;->b:I

    invoke-virtual {v0, v1}, LC3;->a(I)V

    goto :goto_16

    :cond_36
    iget v3, v1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    if-ne v3, v2, :cond_37

    iget v0, v0, LC3;->b:I

    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->C(I)V

    :cond_37
    :goto_16
    return-void

    :pswitch_f
    iget-object v0, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v0, LBc;

    iget-boolean v2, v0, LBc;->o:Z

    if-nez v2, :cond_38

    goto/16 :goto_19

    :cond_38
    iget-boolean v2, v0, LBc;->m:Z

    iget-object v3, v0, LBc;->a:Lb3;

    if-eqz v2, :cond_39

    const/4 v2, 0x0

    iput-boolean v2, v0, LBc;->m:Z

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lb3;->e:J

    const-wide/16 v6, -0x1

    iput-wide v6, v3, Lb3;->g:J

    iput-wide v4, v3, Lb3;->f:J

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, v3, Lb3;->h:F

    :cond_39
    iget-wide v4, v3, Lb3;->g:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3a

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lb3;->g:J

    iget v2, v3, Lb3;->i:I

    int-to-long v8, v2

    add-long/2addr v6, v8

    cmp-long v2, v4, v6

    if-lez v2, :cond_3a

    :goto_17
    const/4 v2, 0x0

    goto :goto_18

    :cond_3a
    invoke-virtual {v0}, LBc;->e()Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_17

    :goto_18
    iput-boolean v2, v0, LBc;->o:Z

    goto :goto_19

    :cond_3b
    const/4 v2, 0x0

    iget-boolean v4, v0, LBc;->n:Z

    iget-object v5, v0, LBc;->c:Landroid/widget/ListView;

    if-eqz v4, :cond_3c

    iput-boolean v2, v0, LBc;->n:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-wide v6, v8

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_3c
    iget-wide v6, v3, Lb3;->f:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-eqz v2, :cond_3d

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lb3;->a(J)F

    move-result v2

    const/high16 v4, -0x3f800000    # -4.0f

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v2, v8

    add-float/2addr v2, v4

    iget-wide v8, v3, Lb3;->f:J

    sub-long v8, v6, v8

    iput-wide v6, v3, Lb3;->f:J

    long-to-float v4, v8

    mul-float/2addr v4, v2

    iget v2, v3, Lb3;->d:F

    mul-float/2addr v4, v2

    float-to-int v2, v4

    iget-object v0, v0, LBc;->q:LK7;

    invoke-static {v0, v2}, LCc;->b(Landroid/widget/ListView;I)V

    sget-object v0, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v5, v1}, LRm;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_19
    return-void

    :cond_3d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    move v0, v3

    const/4 v3, 0x0

    iget-object v4, v1, LJ2;->b:Ljava/lang/Object;

    check-cast v4, LK2;

    iget-object v5, v4, LK2;->l:Ljava/lang/String;

    if-nez v5, :cond_3e

    goto/16 :goto_1c

    :cond_3e
    iget-object v5, v4, LK2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-virtual {v5, v6, v8}, Landroidx/recyclerview/widget/RecyclerView;->E(FF)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3f

    move-object v15, v3

    const/4 v8, -0x1

    goto :goto_1b

    :cond_3f
    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/view/View;)LEg;

    move-result-object v6

    if-eqz v6, :cond_40

    invoke-virtual {v6}, LEg;->b()I

    move-result v6

    goto :goto_1a

    :cond_40
    const/4 v6, -0x1

    :goto_1a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, -0x1

    if-eq v6, v8, :cond_41

    move-object v15, v7

    goto :goto_1b

    :cond_41
    move-object v15, v3

    :goto_1b
    if-eqz v15, :cond_44

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v6, v4, LK2;->j:F

    iget v7, v4, LK2;->f:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_42

    move v0, v8

    :cond_42
    iget-object v6, v4, LK2;->b:LY0;

    iget-object v6, v6, LY0;->h:Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v0

    if-ltz v3, :cond_44

    if-ge v3, v6, :cond_44

    iget-object v3, v4, LK2;->r:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_43
    new-instance v3, LJg;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    mul-int/2addr v5, v0

    const/4 v0, 0x0

    filled-new-array {v0, v5}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v5, 0x12c

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, LI2;

    invoke-direct {v5, v4, v3}, LI2;-><init>(LK2;LJg;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, La0;

    invoke-direct {v3, v2, v4}, La0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, v4, LK2;->r:Landroid/animation/ValueAnimator;

    iget-object v0, v4, LK2;->d:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_44
    :goto_1c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
