.class public final Lcom/omoda/launcher/service/VoiceCommands;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const-string v1, "uri"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {p2}, LSi;->M(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "setPackage(...)"

    invoke-static {v1, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot open "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u2014 its start screen instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VoiceCommands"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/16 v3, 0xa

    const/4 v4, 0x1

    const-string v5, "method"

    invoke-static {v1, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "ok"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_0

    return-object v5

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const/16 v10, 0x3e8

    const-string v11, "result"

    if-eq v9, v10, :cond_3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    if-eq v9, v10, :cond_3

    const/16 v10, 0x7d0

    if-eq v9, v10, :cond_3

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    invoke-virtual {v10, v9, v12}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "denied"

    invoke-virtual {v5, v11, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const-string v12, "VoiceCommands"

    const-string v13, "not_installed"

    const-string v14, "unavailable"

    const-string v15, ""

    const-string v16, "not_running"

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_c

    :sswitch_0
    const-string v0, "state"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_c

    :cond_4
    sget-object v0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/omoda/launcher/MainActivity;->L()Lcom/omoda/launcher/data/Preset;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v4, v7

    :goto_2
    const-string v2, "active"

    invoke-virtual {v5, v2, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v0, :cond_7

    const-string v2, "left"

    invoke-virtual {v0}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "right"

    invoke-virtual {v0}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ratio"

    invoke-virtual {v0}, Lcom/omoda/launcher/data/Preset;->getRatio()F

    move-result v0

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_7
    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v0, :cond_8

    iget-object v10, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_2f

    const-string v0, "fullscreen"

    invoke-virtual {v5, v0, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :sswitch_1
    const-string v0, "home"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_c

    :cond_9
    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-nez v0, :cond_a

    move-object/from16 v0, v16

    goto :goto_4

    :cond_a
    iget-object v2, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v3, LJk;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v0}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v0, v6

    :goto_4
    invoke-virtual {v5, v11, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_17

    :sswitch_2
    const-string v3, "put_app"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_c

    :cond_b
    if-eqz p2, :cond_c

    invoke-static/range {p2 .. p2}, LSi;->R(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    :goto_5
    if-nez v3, :cond_d

    move-object v3, v15

    :cond_d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v5, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_e
    if-eqz v2, :cond_f

    const-string v8, "music"

    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-static {v8}, LZ2;->Y([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    goto :goto_6

    :cond_f
    const/4 v10, 0x0

    :goto_6
    if-nez v10, :cond_10

    sget-object v10, Lx8;->a:Lx8;

    :cond_10
    :try_start_0
    sget-object v8, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-virtual {v0, v3, v2}, Lcom/omoda/launcher/service/VoiceCommands;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v3, v10, v0}, LC6;->Y(Ljava/lang/String;Ljava/util/Set;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_11

    move-object/from16 v14, v16

    goto :goto_7

    :cond_11
    move-object v14, v0

    goto :goto_7

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "put_app: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-virtual {v5, v11, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "already"

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_8

    :cond_12
    move v4, v7

    :cond_13
    :goto_8
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_17

    :sswitch_3
    const-string v3, "open_app"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_c

    :cond_14
    if-eqz p2, :cond_15

    invoke-static/range {p2 .. p2}, LSi;->R(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_15
    const/4 v10, 0x0

    :goto_9
    if-nez v10, :cond_16

    move-object v10, v15

    :cond_16
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_17

    goto :goto_b

    :cond_17
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_18

    goto :goto_b

    :cond_18
    sget-object v3, LSb;->a:LSb;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LSb;->a()Z

    move-result v3

    if-nez v3, :cond_1b

    sget-object v3, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {}, Ljm;->c()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_a

    :cond_19
    invoke-virtual {v0, v10, v2}, Lcom/omoda/launcher/service/VoiceCommands;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    sget-object v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-nez v2, :cond_1a

    move-object/from16 v13, v16

    goto :goto_b

    :cond_1a
    iget-object v3, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v7, Lc8;

    invoke-direct {v7, v2, v10, v0, v4}, Lc8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v13, v6

    goto :goto_b

    :cond_1b
    :goto_a
    move-object v13, v14

    :goto_b
    invoke-virtual {v5, v11, v13}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_17

    :sswitch_4
    const-string v0, "preset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    :goto_c
    const-string v0, "unknown"

    invoke-virtual {v5, v11, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_1c
    if-eqz p2, :cond_29

    invoke-static/range {p2 .. p2}, LSi;->R(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-static {v3}, Lfm;->f(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1e

    :cond_1d
    :goto_d
    const/4 v0, 0x0

    goto/16 :goto_12

    :cond_1e
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v13, 0x30

    if-ge v9, v13, :cond_1f

    const/4 v13, -0x1

    goto :goto_e

    :cond_1f
    if-ne v9, v13, :cond_20

    move v13, v7

    goto :goto_e

    :cond_20
    move v13, v4

    :goto_e
    const v16, -0x7fffffff

    if-gez v13, :cond_23

    if-ne v2, v4, :cond_21

    goto :goto_d

    :cond_21
    const/16 v13, 0x2d

    if-ne v9, v13, :cond_22

    const/high16 v16, -0x80000000

    move v9, v4

    :goto_f
    move v13, v9

    goto :goto_10

    :cond_22
    const/16 v13, 0x2b

    if-ne v9, v13, :cond_1d

    move v9, v4

    move v13, v7

    goto :goto_10

    :cond_23
    move v9, v7

    goto :goto_f

    :goto_10
    const v4, -0x38e38e3

    const/4 v10, 0x0

    :goto_11
    if-ge v9, v2, :cond_27

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Character;->digit(II)I

    move-result v7

    if-gez v7, :cond_24

    goto :goto_d

    :cond_24
    move-object/from16 p3, v0

    const v0, -0x38e38e3

    if-ge v10, v4, :cond_25

    if-ne v4, v0, :cond_1d

    div-int/lit8 v4, v16, 0xa

    if-ge v10, v4, :cond_25

    goto :goto_d

    :cond_25
    mul-int/2addr v10, v3

    add-int v0, v16, v7

    if-ge v10, v0, :cond_26

    goto :goto_d

    :cond_26
    sub-int/2addr v10, v7

    const/4 v7, 0x1

    add-int/2addr v9, v7

    move-object/from16 v0, p3

    goto :goto_11

    :cond_27
    if-eqz v13, :cond_28

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_12

    :cond_28
    neg-int v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v2, 0x1

    goto :goto_13

    :cond_29
    const/4 v2, 0x1

    const/4 v7, 0x0

    :goto_13
    if-lt v7, v2, :cond_2a

    new-instance v0, Lcom/omoda/launcher/data/PresetRepository;

    invoke-direct {v0, v8}, Lcom/omoda/launcher/data/PresetRepository;-><init>(Landroid/content/Context;)V

    add-int/lit8 v3, v7, -0x1

    invoke-virtual {v0, v3}, Lcom/omoda/launcher/data/PresetRepository;->getPreset(I)Lcom/omoda/launcher/data/Preset;

    move-result-object v10

    goto :goto_14

    :cond_2a
    const/4 v10, 0x0

    :goto_14
    if-nez v10, :cond_2b

    const-string v0, "not_found"

    invoke-virtual {v5, v11, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_2b
    sget-object v0, LSb;->a:LSb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LSb;->a()Z

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {}, Ljm;->c()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_16

    :cond_2c
    const/4 v2, 0x1

    sub-int/2addr v7, v2

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-nez v0, :cond_2d

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/omoda/launcher/MainActivity;

    invoke-direct {v0, v8, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10020000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "activate_preset_index"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_15

    :cond_2d
    iget-object v2, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v3, Ldh;

    const/4 v4, 0x2

    invoke-direct {v3, v7, v4, v0}, Ldh;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_15
    invoke-virtual {v5, v11, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v5, v6, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_17

    :cond_2e
    :goto_16
    invoke-virtual {v5, v11, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p2, :cond_30

    goto :goto_18

    :cond_30
    move-object/from16 v15, p2

    :goto_18
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_31

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :sswitch_data_0
    .sparse-switch
        -0x3a6b1d21 -> :sswitch_4
        -0x1e0f6554 -> :sswitch_3
        -0xd0fc30f -> :sswitch_2
        0x30f4df -> :sswitch_1
        0x68ac491 -> :sswitch_0
    .end sparse-switch
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const-string p0, "u"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p0, "uri"

    invoke-static {p1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
