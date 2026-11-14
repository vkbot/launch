.class public final LYk;
.super LNb;
.source "SourceFile"

# interfaces
.implements LS9;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public synthetic constructor <init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 0

    iput p1, p0, LYk;->b:I

    iput-object p2, p0, LYk;->c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 11

    const/4 v0, -0x1

    const-string v1, "windowLauncher"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lsm;->a:Lsm;

    iget-object v6, p0, LYk;->c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget p0, p0, LYk;->b:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, LLm;

    invoke-direct {p0, v6}, LLm;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y0()V

    return-object v5

    :pswitch_1
    iget-boolean p0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D0:Z

    if-eqz p0, :cond_0

    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m0()V

    :cond_0
    return-object v5

    :pswitch_2
    iget-object p0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, LIo;->l()Laf;

    move-result-object p0

    if-nez p0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v1, p0, Laf;->a:Ljava/lang/Object;

    check-cast v1, Lcom/omoda/launcher/data/Preset;

    iget-object p0, p0, Laf;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    iget-object v5, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I:Lcom/omoda/launcher/data/PresetRepository;

    const-string v7, "presetRepository"

    if-eqz v5, :cond_c

    invoke-virtual {v5}, Lcom/omoda/launcher/data/PresetRepository;->getAllPresets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/omoda/launcher/data/Preset;

    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/omoda/launcher/data/Preset;->getRatio()F

    move-result v8

    invoke-virtual {v1}, Lcom/omoda/launcher/data/Preset;->getRatio()F

    move-result v9

    cmpg-float v8, v8, v9

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ltz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_5

    :goto_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/omoda/launcher/data/Preset;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v8, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I:Lcom/omoda/launcher/data/PresetRepository;

    if-eqz v8, :cond_b

    invoke-virtual {v8, v2}, Lcom/omoda/launcher/data/PresetRepository;->getPreset(I)Lcom/omoda/launcher/data/Preset;

    move-result-object v2

    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    move-object v5, v4

    :goto_4
    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    :goto_5
    invoke-virtual {v1}, Lcom/omoda/launcher/data/Preset;->isSingle()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G0:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F0:I

    goto :goto_6

    :cond_8
    iget v1, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E0:I

    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ltz v0, :cond_9

    goto :goto_7

    :cond_9
    move-object v2, v4

    :goto_7
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_a
    new-instance v0, Ltj;

    invoke-direct {v0, v4, p0, v1}, Ltj;-><init>(Ljava/lang/Integer;Ljava/util/List;I)V

    move-object v4, v0

    :goto_8
    return-object v4

    :cond_b
    invoke-static {v7}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_c
    invoke-static {v7}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :pswitch_3
    iget-object p0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, LIo;->m()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_e
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :pswitch_4
    new-instance p0, Lqk;

    invoke-direct {p0, v6}, Lqk;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_5
    new-instance p0, LJi;

    invoke-direct {p0, v6}, LJi;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A0()V

    return-object v5

    :pswitch_7
    invoke-static {}, Lvf;->j()Z

    move-result p0

    if-nez p0, :cond_f

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z0()V

    :cond_f
    return-object v5

    :pswitch_8
    new-instance p0, LYk;

    const/4 v0, 0x7

    invoke-direct {p0, v0, v6}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    const-string v0, "context"

    invoke-static {v6, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, LD3;->b:Z

    if-eqz v0, :cond_10

    new-instance v0, LR9;

    invoke-direct {v0, v6, p0}, LR9;-><init>(Landroid/content/Context;LYk;)V

    goto :goto_9

    :cond_10
    new-instance v0, LC4;

    invoke-direct {v0, v6, p0}, LC4;-><init>(Landroid/content/Context;LYk;)V

    :goto_9
    return-object v0

    :pswitch_9
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LAl;

    invoke-direct {p0, v6, v4}, LAl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    const/4 v0, 0x3

    iget-object v1, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    invoke-static {v1, v4, p0, v0}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    return-object v5

    :pswitch_a
    new-instance p0, LJa;

    iget-object v0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v0, :cond_11

    invoke-direct {p0, v6, v0}, LJa;-><init>(Landroid/content/Context;LIo;)V

    return-object p0

    :cond_11
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v4

    :pswitch_b
    new-instance p0, LE7;

    invoke-direct {p0, v6}, LE7;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A0()V

    return-object v5

    :pswitch_d
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    iget-boolean p0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g1:Z

    if-eqz p0, :cond_12

    goto/16 :goto_14

    :cond_12
    iget-object p0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    const-string v1, "back_hidden"

    const v7, 0x7f0801eb

    if-eqz p0, :cond_13

    goto/16 :goto_d

    :cond_13
    :try_start_0
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v8, 0x7f0b0076

    invoke-virtual {p0, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v8}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v9, 0x7f6

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v9, 0x108

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v9, -0x3

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    const v9, 0x800033

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9, p0, v8}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    iput-object v8, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f1:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p0}, Lnb;->o(Ljava/lang/Object;)V

    invoke-virtual {v6, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h(Landroid/view/View;)V

    invoke-virtual {v6, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i(Landroid/view/View;)V

    const v8, 0x7f0801f9

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, LFk;

    const/16 v10, 0x9

    invoke-direct {v9, v10, v6}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0801e1

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, LFk;

    const/16 v10, 0xc

    invoke-direct {v9, v10, v6}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0801e5

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, LFk;

    const/16 v10, 0xd

    invoke-direct {v9, v10, v6}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0801e2

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, LFk;

    const/16 v10, 0xe

    invoke-direct {v9, v10, v6}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0801e4

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, LFk;

    const/16 v10, 0xf

    invoke-direct {v9, v10, v6}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    invoke-static {v8}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F0(Landroid/view/View;)V

    const v8, 0x7f0801f7

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, LFk;

    const/16 v10, 0x10

    invoke-direct {v9, v10, v6}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v9, LNk;

    invoke-direct {v9, v2, v6}, LNk;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v8, 0x7f0801f2

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    sget-object v9, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "sport_key_enabled"

    invoke-interface {v9, v10, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v9, LNk;

    invoke-direct {v9, v3, v6}, LNk;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v8, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean v8, LD3;->a:Z

    if-eqz v8, :cond_16

    const v8, 0x7f0801f3

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    if-nez v8, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    const v8, 0x7f0801f4

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_15

    goto :goto_b

    :cond_15
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    :catch_0
    move-exception p0

    goto :goto_c

    :cond_16
    :goto_b
    const v8, 0x7f0801f0

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, LFk;

    const/16 v10, 0x11

    invoke-direct {v9, v10, v6}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0801df

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, LFk;

    const/16 v10, 0x12

    invoke-direct {v9, v10, v6}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0801e8

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, LFk;

    const/16 v10, 0xa

    invoke-direct {v9, v10, v6}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0801ed

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    new-instance v9, LU0;

    const/4 v10, 0x4

    invoke-direct {v9, v6, v10, v8}, LU0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f0801fa

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v8, LFk;

    const/16 v9, 0xb

    invoke-direct {v8, v9, v6}, LFk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {p0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :goto_c
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to create settings popup: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TopOverlayA11y"

    invoke-static {v9, v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    iget-object p0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    if-nez p0, :cond_17

    goto/16 :goto_14

    :cond_17
    iget-object v8, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f1:Landroid/view/WindowManager$LayoutParams;

    if-nez v8, :cond_18

    goto/16 :goto_14

    :cond_18
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    :try_start_1
    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0, v8}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iput-boolean v3, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g1:Z

    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y0()V

    invoke-virtual {v6, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G0(Landroid/view/View;)V

    iget-object v0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    iget-object v3, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j1:Lbl;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->H0()V

    iget-object v0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    if-eqz v0, :cond_19

    const v3, 0x7f0801f1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_e

    :cond_19
    move-object v0, v4

    :goto_e
    if-nez v0, :cond_1a

    goto :goto_f

    :cond_1a
    invoke-static {}, Ljm;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_f
    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E0()V

    iget-object v0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    if-nez v0, :cond_1b

    goto :goto_11

    :cond_1b
    sget-object v3, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->a()Ljava/lang/String;

    move-result-object v3

    const v8, 0x7f0801ee

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget-object v9, LKi;->c:Ljava/lang/Object;

    invoke-interface {v9, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_1c

    goto :goto_10

    :cond_1c
    move-object v9, v3

    :goto_10
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0801ec

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->u(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_11
    iget-object v0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    if-eqz v0, :cond_1d

    const v3, 0x7f0801e9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    :cond_1d
    if-nez v4, :cond_1e

    goto :goto_13

    :cond_1e
    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "covers_mode"

    const-string v8, "with_bg"

    invoke-interface {v0, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_12

    :cond_1f
    move-object v8, v0

    :goto_12
    invoke-static {v8}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_13
    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f()V

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Switch;

    if-eqz p0, :cond_20

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_20

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_20
    :goto_14
    return-object v5

    :pswitch_e
    iget-object p0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->W0:LS4;

    invoke-virtual {v6}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    if-eqz p0, :cond_21

    invoke-virtual {p0}, LS4;->d()Ljava/lang/Object;

    :cond_21
    return-object v5

    :pswitch_f
    iget-boolean p0, v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c1:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p0, v0}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/WindowManager;

    return-object p0

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
