.class public final Lel;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lda;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public synthetic constructor <init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 0

    iput p1, p0, Lel;->b:I

    iput-object p2, p0, Lel;->c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "pkg"

    const-string v2, "picked"

    const/4 v3, 0x0

    const-string v4, "windowLauncher"

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, v0, Lel;->c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    sget-object v8, Lsm;->a:Lsm;

    iget v9, v0, Lel;->b:I

    packed-switch v9, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    const-string v1, "pkgs"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    iget-object v9, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    invoke-static {v5, v9}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v3, :cond_3

    const-string v5, "packageName"

    invoke-static {v2, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, LIo;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, LIo;->p(I)V

    iget-object v5, v3, LIo;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v5, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v3, v2}, LIo;->g(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v6

    :cond_4
    iget-object v1, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    invoke-static {v0, v1}, LL4;->u0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C0()V

    :cond_5
    return-object v8

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Ltj;

    const-string v1, "entry"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Ltj;->b:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    move v5, v3

    goto :goto_2

    :cond_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LDo;

    iget-boolean v2, v2, LDo;->d:Z

    if-eqz v2, :cond_8

    :goto_2
    iget-object v1, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v1, :cond_f

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LDo;

    iget-object v4, v4, LDo;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    iget-object v0, v1, LIo;->b:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v1, LIo;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iput-boolean v3, v1, LIo;->i:Z

    iput-boolean v3, v1, LIo;->j:Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, LIo;->e(Ljava/lang/String;)LG1;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v4, v3, LG1;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, 0x5

    if-ne v4, v9, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    move-object v3, v6

    :goto_6
    if-eqz v3, :cond_c

    iget v3, v3, LG1;->a:I

    invoke-virtual {v1, v3}, LIo;->p(I)V

    :cond_c
    invoke-virtual {v1, v2}, LIo;->g(Ljava/lang/String;)V

    iget-object v3, v1, LIo;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v3, v1, LIo;->k:Lbo;

    iget-object v3, v3, Lbo;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    new-instance v4, LGo;

    const/4 v9, 0x2

    invoke-direct {v4, v2, v9}, LGo;-><init>(Ljava/lang/String;I)V

    invoke-static {v3, v4}, LR4;->t0(Ljava/util/ArrayList;Lda;)V

    goto :goto_4

    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C()V

    :cond_e
    return-object v8

    :cond_f
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v6

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C0()V

    goto :goto_7

    :cond_10
    iget-object v1, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v0}, LIo;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, LIo;->p(I)V

    iget-object v2, v1, LIo;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {v1, v0}, LIo;->g(Ljava/lang/String;)V

    :goto_7
    return-object v8

    :cond_12
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v6

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Ltj;

    const-string v1, "it"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/omoda/launcher/MainActivity;

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10020000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "reopen_live_preset"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v7, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v8

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v7, v0, v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->P(Ljava/lang/String;Landroid/content/Intent;)V

    return-object v8

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preset_size"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D0()V

    :goto_8
    iget-object v0, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    if-eqz v0, :cond_14

    const v1, 0x7f0801f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    :cond_14
    if-nez v6, :cond_15

    goto :goto_9

    :cond_15
    invoke-static {}, Ljm;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    return-object v8

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "covers_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    if-eqz v0, :cond_16

    const v1, 0x7f0801e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    :cond_16
    if-nez v6, :cond_17

    goto :goto_b

    :cond_17
    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "with_bg"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_a

    :cond_18
    move-object v1, v0

    :goto_a
    invoke-static {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f()V

    return-object v8

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "autostart_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E0()V

    return-object v8

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Lcom/omoda/launcher/data/AppInfo;

    const-string v1, "app"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/omoda/launcher/data/AppInfo;->getTile()LP8;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v2, v1, LP8;->b:Landroid/content/ComponentName;

    if-nez v2, :cond_19

    iget-object v1, v1, LP8;->f:Lhf;

    if-nez v1, :cond_19

    goto :goto_c

    :cond_19
    invoke-virtual {v0}, Lcom/omoda/launcher/data/AppInfo;->getTile()LP8;

    move-result-object v1

    if-nez v1, :cond_1a

    :try_start_0
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v1, v5

    if-eqz v1, :cond_1b

    :cond_1a
    move v3, v5

    :cond_1b
    xor-int/lit8 v1, v3, 0x1

    invoke-virtual {v7, v0, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b0(Lcom/omoda/launcher/data/AppInfo;Z)V

    :catch_0
    :goto_c
    return-object v8

    :pswitch_8
    move-object/from16 v13, p1

    check-cast v13, Lcom/omoda/launcher/data/RemoteApp;

    const-string v1, "remoteApp"

    invoke-static {v13, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v14, v0, Lel;->c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x20

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/16 v4, 0x18

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v1, v2, v4, v2, v4}, Landroid/view/View;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v4

    iget v4, v4, LWj;->k:I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v4, 0x10

    int-to-float v7, v4

    mul-float/2addr v7, v0

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v14}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13}, Lcom/omoda/launcher/data/RemoteApp;->getIconUrl()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1c

    iget-object v10, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    goto :goto_d

    :catch_1
    move-exception v0

    goto/16 :goto_11

    :cond_1c
    move-object v9, v6

    :goto_d
    if-eqz v9, :cond_1d

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_e

    :cond_1d
    const v9, 0x1080093

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_e
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x40

    int-to-float v10, v10

    mul-float/2addr v10, v0

    float-to-int v10, v10

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    float-to-int v7, v7

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13}, Lcom/omoda/launcher/data/RemoteApp;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v11

    iget v11, v11, Lbk;->a:I

    int-to-float v11, v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v11

    iget v11, v11, LWj;->c:I

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v9, v6, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13}, Lcom/omoda/launcher/data/RemoteApp;->getModVersion()Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v12, "v"

    if-eqz v11, :cond_1e

    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/omoda/launcher/data/RemoteApp;->getVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "  \u00b7  mod "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/omoda/launcher/data/RemoteApp;->getModVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_f
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_10

    :cond_1e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/omoda/launcher/data/RemoteApp;->getVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :goto_10
    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v11

    iget v11, v11, Lbk;->d:I

    int-to-float v11, v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v11

    iget v11, v11, LWj;->b:I

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, -0x2

    invoke-direct {v9, v3, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v4, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x14

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v4

    iget v4, v4, LWj;->m:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object v11

    iget-object v11, v11, LOg;->a:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/omoda/launcher/data/RemoteApp;->getFileSizeHuman()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v4

    iget v4, v4, Lbk;->c:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v4

    iget v4, v4, LWj;->a:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x8

    int-to-float v15, v11

    mul-float/2addr v15, v0

    float-to-int v15, v15

    iput v15, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v13}, Lcom/omoda/launcher/data/RemoteApp;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LSi;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, LKi;->e()LOg;

    move-result-object v4

    iget-object v4, v4, LOg;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v4

    iget v4, v4, Lbk;->d:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v4

    iget v4, v4, LWj;->b:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x4

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13}, Lcom/omoda/launcher/data/RemoteApp;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v4

    iget v4, v4, Lbk;->c:I

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v4

    iget v4, v4, LWj;->c:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1f
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v4, 0xdc

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, LKi;->c()LX4;

    move-result-object v7

    iget-object v7, v7, LX4;->e:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v7

    iget v7, v7, Lbk;->e:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v7

    iget v7, v7, LVj;->f:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, LT7;->d()LVj;

    move-result-object v11

    invoke-virtual {v11, v14}, LVj;->b(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v7, v11, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0xc

    int-to-float v11, v11

    mul-float/2addr v11, v0

    float-to-int v11, v11

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, LKi;->c()LX4;

    move-result-object v9

    iget-object v9, v9, LX4;->a:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v9

    iget v9, v9, Lbk;->e:I

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->d()LVj;

    move-result-object v9

    iget v9, v9, LVj;->g:I

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {}, LT7;->d()LVj;

    move-result-object v3

    invoke-virtual {v3, v14}, LVj;->c(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v9, v3, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v15, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {}, LKi;->c()LX4;

    move-result-object v3

    iget-object v3, v3, LX4;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LT7;->f()Lbk;

    move-result-object v3

    iget v3, v3, Lbk;->c:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, LT7;->e()LWj;

    move-result-object v3

    iget v3, v3, LWj;->b:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v11, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v4, 0x7f0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x100

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v4, 0x2bc

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v12, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, v14, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_20

    invoke-interface {v0, v1, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_20
    new-instance v0, LIk;

    const/4 v3, 0x1

    invoke-direct {v0, v14, v1, v3}, LIk;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LPk;

    move-object v9, v0

    move-object v10, v1

    move-object v11, v5

    move-object v12, v2

    invoke-direct/range {v9 .. v14}, LPk;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/data/RemoteApp;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, LSk;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_12

    :goto_11
    const-string v1, "TopOverlayA11y"

    const-string v2, "showRemoteAppDialog failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
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
