.class public final Lr6;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LVi;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr6;->a:I

    .line 2
    iput-object p1, p0, Lr6;->b:Ljava/lang/Object;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr6;->a:I

    iput-object p1, p0, Lr6;->b:Ljava/lang/Object;

    .line 1
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    iget v0, p0, Lr6;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onChange(Z)V
    .locals 4

    iget p1, p0, Lr6;->a:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, LT7;->i:LT7;

    iget-object v0, p0, Lr6;->b:Ljava/lang/Object;

    check-cast v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    monitor-enter p1

    :try_start_0
    const-string v1, "context"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v1, LD3;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.citos.setting.theme.mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, -0x1

    :goto_0
    :try_start_2
    sget v2, LT7;->k:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v2, :cond_1

    monitor-exit p1

    goto/16 :goto_5

    :cond_1
    :try_start_3
    invoke-static {v0, v1}, LT7;->i(Landroid/content/Context;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p1

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, p0, Lr6;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v0, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iget-object v3, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K()V

    iget-object p1, p0, Lr6;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G()V

    if-eqz v0, :cond_4

    iget-object p1, p0, Lr6;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s0()V

    :cond_4
    if-eqz v1, :cond_5

    iget-object p1, p0, Lr6;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n0()V

    :cond_5
    iget-object p1, p0, Lr6;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->j()V

    iget-object p1, p0, Lr6;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v0, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e1:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {p1, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i(Landroid/view/View;)V

    :cond_6
    iget-object p1, p0, Lr6;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v0, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U0:LXk;

    iget-object p1, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    filled-new-array {v0, p1}, [LXk;

    move-result-object p1

    invoke-static {p1}, LZ2;->W([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXk;

    iget-object v0, v0, LXk;->a:Lz2;

    invoke-virtual {v0}, Lz2;->a()V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lr6;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    if-eqz p1, :cond_9

    iget-object v0, p1, LXk;->c:LNb;

    invoke-interface {v0}, LS9;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_9

    iget-object v0, p0, Lr6;->b:Ljava/lang/Object;

    check-cast v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v0, p1, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V(LXk;Z)V

    :cond_9
    iget-object p1, p0, Lr6;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f()V

    iget-object p0, p0, Lr6;->b:Ljava/lang/Object;

    check-cast p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D0()V

    :goto_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :pswitch_0
    iget-object p0, p0, Lr6;->b:Ljava/lang/Object;

    check-cast p0, LVi;

    iget-boolean p1, p0, Lt6;->b:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lt6;->c:Landroid/database/Cursor;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lt6;->c:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z

    move-result p1

    iput-boolean p1, p0, Lt6;->a:Z

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
