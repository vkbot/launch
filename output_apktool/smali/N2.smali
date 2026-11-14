.class public final LN2;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lda;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LN2;->b:I

    iput-object p1, p0, LN2;->c:Ljava/lang/Object;

    iput-object p3, p0, LN2;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-string v3, "key"

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v6, Lsm;->a:Lsm;

    iget-object v7, p0, LN2;->d:Ljava/lang/Object;

    iget-object v8, p0, LN2;->c:Ljava/lang/Object;

    iget p0, p0, LN2;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, [Lpm;

    array-length p0, v8

    move v0, v2

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v3, v8, v0

    iget-object v9, v3, Lpm;->a:Ljava/lang/String;

    invoke-static {v9, p1}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v4

    goto :goto_0

    :cond_1
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_a

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    check-cast v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lvf;->h()Lpm;

    move-result-object p0

    if-ne v3, p0, :cond_2

    goto/16 :goto_6

    :cond_2
    sget-object p1, Ljm;->a:Ljm;

    iget-object p1, v3, Lpm;->a:Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v8, "unified_mode"

    invoke-interface {v0, v8, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H0()V

    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I0()V

    sget-object p1, Lpm;->d:Lpm;

    if-eq v3, p1, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_2
    if-eq p0, p1, :cond_4

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    if-eq v0, v4, :cond_7

    new-instance p0, Lcom/omoda/launcher/data/PrefsAppOrderStore;

    invoke-direct {p0, v7}, Lcom/omoda/launcher/data/PrefsAppOrderStore;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/omoda/launcher/data/PrefsAppOrderStore;->clear()V

    iget-object p0, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i:Landroid/view/View;

    if-eqz p0, :cond_5

    invoke-virtual {v7, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g(Landroid/view/View;)V

    :cond_5
    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E0()V

    invoke-virtual {v7}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w()LJa;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lvf;->j()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p0, Lcom/omoda/launcher/HomeActivity;->w:Lcom/omoda/launcher/HomeActivity;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_4

    :cond_6
    iput-boolean v2, p0, LJa;->f:Z

    iput v2, p0, LJa;->g:I

    iget-object p1, p0, LJa;->b:LIo;

    invoke-virtual {p1}, LIo;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, v2}, LJa;->b(Z)V

    :cond_7
    :goto_4
    iget-object p0, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    if-eqz p0, :cond_9

    iget-object p1, p0, LXk;->c:LNb;

    invoke-interface {p1}, LS9;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move-object p0, v5

    :goto_5
    if-eqz p0, :cond_9

    invoke-virtual {v7, p0, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V(LXk;Z)V

    :cond_9
    new-instance p0, LAl;

    invoke-direct {p0, v7, v5}, LAl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    iget-object p1, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    invoke-static {p1, v5, p0, v1}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    :cond_a
    :goto_6
    return-object v6

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    check-cast v8, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, v8, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    sget-object v1, Lv7;->a:LT6;

    sget-object v1, Lcd;->a:LCa;

    new-instance v2, LQl;

    check-cast v7, Landroid/widget/TextView;

    invoke-direct {v2, v7, p0, v5}, LQl;-><init>(Landroid/widget/TextView;ILS5;)V

    invoke-static {p1, v1, v2, v0}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    return-object v6

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lof;

    iget-object p0, v8, Lof;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, LL4;->x0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lif;

    if-eqz p0, :cond_b

    check-cast v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    new-instance v0, Lyl;

    invoke-direct {v0, v7, p0, v5}, Lyl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lif;LS5;)V

    invoke-static {p1, v5, v0, v1}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    :cond_b
    return-object v6

    :pswitch_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p0

    check-cast v8, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, v8, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    sget-object v1, Lv7;->a:LT6;

    sget-object v1, Lcd;->a:LCa;

    new-instance v2, Lnl;

    check-cast v7, LB4;

    invoke-direct {v2, v7, p0, v5}, Lnl;-><init>(LB4;ILS5;)V

    invoke-static {p1, v1, v2, v0}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    return-object v6

    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    check-cast v8, LCa;

    iget-object p0, v8, LCa;->c:Landroid/os/Handler;

    check-cast v7, Lj0;

    invoke-virtual {p0, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-object v6

    :pswitch_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sget-object p1, LO8;->a:Ljava/util/Set;

    check-cast v7, LM8;

    iget-object p1, v7, LM8;->c:Ljava/lang/String;

    check-cast v8, Landroid/content/res/Resources;

    invoke-static {v8, p1, p0}, LO8;->a(Landroid/content/res/Resources;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_c

    check-cast v7, LGl;

    invoke-virtual {v7, p1}, LGl;->h(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
