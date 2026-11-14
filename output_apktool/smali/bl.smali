.class public final Lbl;
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

    iput p1, p0, Lbl;->a:I

    iput-object p2, p0, Lbl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lbl;->a:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LJk;

    iget-object v2, p0, Lbl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const/16 v3, 0xc

    invoke-direct {v1, v3, v2}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k:Landroid/os/Handler;

    iget-wide v1, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t0:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lbl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v1, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G0(Landroid/view/View;)V

    invoke-static {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F0(Landroid/view/View;)V

    iget-object v0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lbl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    sget-object v3, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "dumpsys"

    const-string v4, "input_method"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const-string v4, "getInputStream(...)"

    invoke-static {v3, v4}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lh4;->a:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v4, Lpc;

    invoke-direct {v4, v1, v3}, Lpc;-><init>(ILjava/lang/Object;)V

    new-instance v5, Lo5;

    invoke-direct {v5, v4}, Lo5;-><init>(LLh;)V

    invoke-virtual {v5}, Lo5;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "mInputShown=true"

    invoke-static {v5, v6}, LSi;->H(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v4, v1

    :goto_2
    if-nez v4, :cond_6

    iget-object p0, p0, Lbl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    iget-object v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o0:Lbl;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s0()V

    iput-boolean v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E:Z

    :cond_3
    iget-boolean v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz v2, :cond_4

    iget-boolean v0, v2, LIo;->g:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->z:Z

    iget v2, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A:F

    iget-object v3, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v3}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->o0(ZFLjava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p0, "windowLauncher"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    iput-boolean v1, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F:Z

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lbl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_4
    return-void

    :pswitch_2
    sget-object v1, Lnk;->a:Landroid/content/Context;

    sget-boolean v1, Lnk;->f:Z

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lnk;->b:Lkk;

    const-string v4, "base"

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lkk;->c()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_a

    sget-object v3, Lnk;->b:Lkk;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lkk;->a()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_b

    new-instance v0, Lt3;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lt3;-><init>(I)V

    sget-object v1, Lnk;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_9
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    cmp-long v0, v3, v5

    if-lez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "clock drifted to "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \u2014 restoring"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TimeKeeper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "drift"

    invoke-static {v0}, Lnk;->a(Ljava/lang/String;)V

    :cond_b
    :goto_5
    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v0, p0, Lbl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v1, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j:Landroid/widget/TextView;

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_d
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
