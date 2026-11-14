.class public final synthetic Lc8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lc8;->a:I

    iput-object p1, p0, Lc8;->b:Ljava/lang/Object;

    iput-object p2, p0, Lc8;->c:Ljava/lang/Object;

    iput-object p3, p0, Lc8;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lc8;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object v1, p0, Lc8;->b:Ljava/lang/Object;

    check-cast v1, LIo;

    invoke-static {v1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$launch"

    iget-object v2, p0, Lc8;->c:Ljava/lang/Object;

    check-cast v2, LQn;

    invoke-static {v2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v2, LQn;->a:Ljava/lang/String;

    iget-object v2, v2, LQn;->b:Landroid/graphics/Rect;

    iget-object p0, p0, Lc8;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v1, v0, v2, p0}, LIo;->k(Ljava/lang/String;Landroid/graphics/Rect;Landroid/content/Intent;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lc8;->b:Ljava/lang/Object;

    check-cast v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v1, "$it"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lc8;->c:Ljava/lang/Object;

    check-cast v1, LB4;

    iget-object p0, p0, Lc8;->d:Ljava/lang/Object;

    check-cast p0, LS4;

    sget-object v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v2, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R0:Landroid/view/View;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R0:Landroid/view/View;

    iput-object v2, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->S0:Landroid/view/WindowManager$LayoutParams;

    iput-object v2, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U0:LXk;

    iput-object v1, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V0:LB4;

    iput-object p0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->W0:LS4;

    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m0()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lc8;->b:Ljava/lang/Object;

    check-cast v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v1, "$svc"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lc8;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "$pkg"

    invoke-static {v1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, Lc8;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Intent;

    invoke-virtual {v0, v1, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->P(Ljava/lang/String;Landroid/content/Intent;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lc8;->b:Ljava/lang/Object;

    check-cast v0, LL;

    iget-object v1, p0, Lc8;->c:Ljava/lang/Object;

    check-cast v1, Lfm;

    iget-object p0, p0, Lc8;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v0, v0, LL;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lnb;->y(Landroid/content/Context;)Lh9;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, LY7;->b:Ljava/lang/Object;

    check-cast v2, La8;

    check-cast v2, Lg9;

    iget-object v3, v2, Lg9;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object p0, v2, Lg9;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v0, LY7;->b:Ljava/lang/Object;

    check-cast v0, La8;

    new-instance v2, Ld8;

    invoke-direct {v2, v1, p0}, Ld8;-><init>(Lfm;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v2}, La8;->f(Lfm;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    invoke-virtual {v1, v0}, Lfm;->y(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
