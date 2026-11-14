.class public final synthetic LJk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public synthetic constructor <init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 0

    iput p1, p0, LJk;->a:I

    iput-object p2, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x2

    const-string v1, "windowLauncher"

    const/4 v2, -0x1

    const-string v3, "$it"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "this$0"

    iget v8, p0, LJk;->a:I

    packed-switch v8, :pswitch_data_0

    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v7}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B()LLm;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x2160202b

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v2, v6}, LLm;->c(IILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    move-object v0, v6

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    const/high16 v1, -0x3da40000    # -55.0f

    cmpg-float v1, v0, v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k:Landroid/os/Handler;

    new-instance v1, LD2;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2, v6}, LD2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v7}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v1}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    iget-boolean v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->X:Z

    if-nez v1, :cond_3

    iput-boolean v5, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->X:Z

    const/16 p0, 0x7f

    goto :goto_2

    :cond_3
    iput-boolean v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->X:Z

    const/16 p0, 0x7e

    :goto_2
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v4, p0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v5, p0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "TopOverlayA11y"

    const-string v1, "MUTE failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void

    :pswitch_1
    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n()V

    return-void

    :pswitch_2
    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w()LJa;

    move-result-object p0

    invoke-virtual {p0, v5}, LJa;->b(Z)V

    return-void

    :pswitch_3
    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v0, "$svc"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L()V

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C()V

    return-void

    :pswitch_4
    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m0()V

    return-void

    :pswitch_5
    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v7}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iput v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L:I

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D0()V

    return-void

    :pswitch_6
    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v7}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    :pswitch_7
    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v7}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LYk;

    const/16 v2, 0xa

    invoke-direct {v0, v2, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D:LNb;

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, LIo;->r()LFo;

    move-result-object v0

    sget-object v1, LFo;->d:LFo;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C()V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t()V

    :goto_4
    return-void

    :cond_6
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v6

    :pswitch_8
    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v7}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LYk;

    const/16 v2, 0x9

    invoke-direct {v0, v2, p0}, LYk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    iput-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D:LNb;

    iget-object v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, LIo;->r()LFo;

    move-result-object v0

    sget-object v1, LFo;->d:LFo;

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C()V

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t()V

    :goto_5
    return-void

    :cond_8
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v6

    :pswitch_9
    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v7}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->p0:I

    if-eq v1, v0, :cond_a

    const/4 v0, 0x3

    if-eq v1, v0, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d(I)V

    goto :goto_6

    :cond_a
    invoke-virtual {p0, v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d(I)V

    :goto_6
    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->p0:I

    return-void

    :pswitch_a
    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v7}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s:Z

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    iput-boolean v5, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s:Z

    iget-object v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    sget-object v2, Lv7;->b:LJ6;

    new-instance v3, LCl;

    invoke-direct {v3, p0, v6}, LCl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    invoke-static {v1, v2, v3, v0}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    :goto_7
    return-void

    :pswitch_b
    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LJk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v7}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iput v4, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
