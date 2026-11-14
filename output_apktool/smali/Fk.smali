.class public final synthetic LFk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public synthetic constructor <init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 0

    .line 1
    iput p1, p0, LFk;->a:I

    iput-object p2, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 2
    const/4 p2, 0x6

    iput p2, p0, LFk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const-string p1, "TopOverlayA11y"

    const/high16 v0, 0x10000000

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "this$0"

    iget v7, p0, LFk;->a:I

    packed-switch v7, :pswitch_data_0

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Y0:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iput-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Y0:Landroid/widget/LinearLayout;

    return-void

    :pswitch_0
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l1:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m1:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v0

    :cond_1
    invoke-interface {v0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2
    iput-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l1:Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m1:Landroid/view/WindowManager;

    return-void

    :pswitch_1
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iput v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L:I

    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/omoda/launcher/MainActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "show_mode_selector"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    return-void

    :pswitch_2
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l()Ljava/util/ArrayList;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Laf;

    invoke-direct {v5, v1, v2}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object p1, LKi;->a:LKi;

    invoke-static {}, LKi;->f()LSh;

    move-result-object p1

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "autostart_mode"

    const-string v5, "presets"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v5, v1

    :goto_1
    invoke-static {}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v4, v5

    :cond_5
    if-nez v4, :cond_6

    const-string v4, "apps"

    :cond_6
    new-instance v1, Lel;

    invoke-direct {v1, v3, p0}, Lel;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iget-object p1, p1, LSh;->l:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lda;)V

    return-void

    :pswitch_3
    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->b()Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, LT7;->w:Z

    if-eqz v0, :cond_9

    sget-object v0, LT7;->z:Ljava/lang/Object;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, LL4;->C0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Laf;

    invoke-direct {v4, v2, v3}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    sget-object v0, LKi;->a:LKi;

    invoke-static {}, LKi;->f()LSh;

    move-result-object v0

    iget-object v0, v0, LSh;->d:Ljava/lang/String;

    new-instance v2, Lel;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lel;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lda;)V

    return-void

    :cond_8
    const-string p0, "presetVariants"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "UiConfig not initialized \u2014 call UiConfig.init(context) first"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lpm;->values()[Lpm;

    move-result-object p1

    sget-object v0, LKi;->a:LKi;

    invoke-static {}, LKi;->f()LSh;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v3, p1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, p1

    move v6, v2

    :goto_3
    if-ge v6, v3, :cond_a

    aget-object v7, p1, v6

    iget-object v8, v7, Lpm;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B0(Lpm;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Laf;

    invoke-direct {v9, v8, v7}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v6, v5

    goto :goto_3

    :cond_a
    sget-object v3, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "unified_mode"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    sget-object v3, Lpm;->d:Lpm;

    const-string v3, "off"

    :cond_b
    invoke-static {}, Lpm;->values()[Lpm;

    move-result-object v6

    array-length v7, v6

    :goto_4
    if-ge v2, v7, :cond_d

    aget-object v8, v6, v2

    iget-object v9, v8, Lpm;->a:Ljava/lang/String;

    invoke-static {v9, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    move-object v4, v8

    goto :goto_5

    :cond_c
    add-int/2addr v2, v5

    goto :goto_4

    :cond_d
    :goto_5
    if-nez v4, :cond_e

    sget-object v4, Lpm;->d:Lpm;

    :cond_e
    new-instance v2, LN2;

    const/4 v3, 0x6

    invoke-direct {v2, p1, v3, p0}, LN2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, v0, LSh;->b:Ljava/lang/String;

    iget-object v0, v4, Lpm;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lda;)V

    return-void

    :pswitch_5
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d(I)V

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    invoke-static {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F0(Landroid/view/View;)V

    return-void

    :pswitch_6
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d(I)V

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    invoke-static {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F0(Landroid/view/View;)V

    return-void

    :pswitch_7
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    return-void

    :pswitch_8
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    if-eqz p1, :cond_f

    iget-object p1, p1, LXk;->c:LNb;

    invoke-interface {p1}, LS9;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v5, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m0()V

    :goto_6
    return-void

    :pswitch_9
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    if-eqz p1, :cond_10

    const v0, 0x7f08007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_7

    :cond_10
    move-object p1, v4

    :goto_7
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_8

    :cond_11
    move-object v0, v4

    :goto_8
    if-nez p1, :cond_12

    goto :goto_9

    :cond_12
    sget-object v1, LKi;->a:LKi;

    invoke-static {}, LKi;->d()LOb;

    move-result-object v1

    iget-object v1, v1, LOb;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    if-nez p1, :cond_13

    goto :goto_a

    :cond_13
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_a
    sget-object v1, Lv7;->b:LJ6;

    new-instance v2, Lal;

    invoke-direct {v2, p1, v0, p0, v4}, Lal;-><init>(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    invoke-static {p0, v1, v2, v3}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    return-void

    :pswitch_a
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "covers_mode"

    const-string v1, "with_bg"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_b

    :cond_14
    move-object v1, p1

    :goto_b
    sget-object p1, Ljm;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Laf;

    invoke-direct {v4, v2, v3}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    sget-object p1, LKi;->a:LKi;

    invoke-static {}, LKi;->f()LSh;

    move-result-object p1

    new-instance v2, Lel;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Lel;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iget-object p1, p1, LSh;->f:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lda;)V

    return-void

    :pswitch_b
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getPackageName(...)"

    invoke-static {p1, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q(Ljava/lang/String;)V

    return-void

    :pswitch_c
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s()V

    return-void

    :pswitch_d
    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o:I

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->p:LJk;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v6, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o:I

    const/4 v7, 0x5

    if-lt v6, v7, :cond_20

    iput v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o:I

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n:Z

    const-string v1, "service_mode"

    if-eqz v0, :cond_17

    iput-boolean v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n:Z

    sget-object v0, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "\u0422\u041e mode OFF \u2014 restoring launcher (home)"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s0()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n0()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v0()V

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k:Landroid/os/Handler;

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w0:Lbl;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x0:LIi;

    const-wide/32 v0, 0xea60

    if-nez p1, :cond_16

    new-instance p1, LIi;

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    invoke-direct {p1, p0, v2}, LIi;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iget-object v2, p1, LIi;->c:Landroid/os/Handler;

    iget-object v3, p1, LIi;->f:LJ2;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x0:LIi;

    goto :goto_d

    :cond_16
    iget-object v2, p1, LIi;->c:Landroid/os/Handler;

    iget-object p1, p1, LIi;->f:LJ2;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_d
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C()V

    goto/16 :goto_10

    :cond_17
    iput-boolean v5, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n:Z

    sget-object v0, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "\u0422\u041e mode ON \u2014 hiding launcher, closing preset apps"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    const-string v0, "windowLauncher"

    if-eqz p1, :cond_1a

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v1, :cond_19

    invoke-virtual {v1, p1}, LIo;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, LIo;->p(I)V

    iget-object v5, v1, LIo;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v5, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual {v1, p1}, LIo;->u(Ljava/lang/String;)V

    goto :goto_e

    :cond_19
    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_1a
    :goto_e
    iput-object v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K:Llm;

    if-eqz p1, :cond_1f

    invoke-virtual {p1, v2}, Llm;->a(Z)V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J()V

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, LIo;->n()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G()V

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x0:LIi;

    if-eqz p1, :cond_1b

    iget-object v0, p1, LIi;->c:Landroid/os/Handler;

    iget-object v1, p1, LIi;->f:LJ2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, LIi;->a()V

    :cond_1b
    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l:Landroid/widget/TextView;

    if-nez p1, :cond_1c

    goto :goto_f

    :cond_1c
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_f
    sget-object p1, Lcom/omoda/launcher/HomeActivity;->w:Lcom/omoda/launcher/HomeActivity;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1d
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I0()V

    invoke-virtual {p0, v3}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    goto :goto_10

    :cond_1e
    invoke-static {v0}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_1f
    const-string p0, "uiVisibilityClient"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_20
    const-wide/16 p0, 0x5dc

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_10
    return-void

    :pswitch_e
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r0(Z)V

    return-void

    :pswitch_f
    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C0:Lzj;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lzj;->d()V

    :cond_21
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m0:Ljava/lang/String;

    iget-object v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n0:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_2
    move-exception p0

    const-string v0, "Factory app menu launch failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-void

    :pswitch_10
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C0:Lzj;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lzj;->d()V

    :cond_22
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->N0:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long p1, v2, v4

    if-gez p1, :cond_23

    goto :goto_12

    :cond_23
    iput-wide v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->N0:J

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L0:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_28

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez p1, :cond_28

    sget-object p1, LSb;->a:LSb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LSb;->a()Z

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c:Landroid/view/View;

    if-nez p1, :cond_24

    goto :goto_12

    :cond_24
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L0:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_25

    goto :goto_12

    :cond_25
    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M0:Lcom/omoda/launcher/ui/PresetGridLayout;

    if-nez v1, :cond_26

    goto :goto_12

    :cond_26
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D0()V

    invoke-virtual {v1}, Lcom/omoda/launcher/ui/PresetGridLayout;->getPanelWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x2d0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x108

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :try_start_3
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->O0:Lt3;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_12

    :cond_27
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a0()V

    goto :goto_12

    :cond_28
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    :goto_12
    return-void

    :pswitch_11
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r0:Z

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A0()V

    goto :goto_13

    :cond_29
    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C0:Lzj;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lzj;->d()V

    :cond_2a
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z0()V

    :goto_13
    return-void

    :pswitch_12
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C0:Lzj;

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lzj;->d()V

    :cond_2b
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    invoke-virtual {p0, v5}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    return-void

    :pswitch_13
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C0:Lzj;

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Lzj;->d()V

    :cond_2c
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C()V

    return-void

    :pswitch_14
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LFk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v6}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->p0:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->p0:I

    iget-object p1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->q0:LJk;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
