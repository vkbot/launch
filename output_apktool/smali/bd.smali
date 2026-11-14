.class public final Lbd;
.super LNb;
.source "SourceFile"

# interfaces
.implements LS9;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/content/ContextWrapper;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContextWrapper;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lbd;->b:I

    iput-object p1, p0, Lbd;->c:Landroid/content/ContextWrapper;

    iput-object p2, p0, Lbd;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lsm;->a:Lsm;

    iget-object v1, p0, Lbd;->d:Ljava/lang/Object;

    iget-object v2, p0, Lbd;->c:Landroid/content/ContextWrapper;

    iget p0, p0, Lbd;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    :try_start_0
    iget-object p0, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-interface {p0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E()V

    return-object v0

    :pswitch_0
    check-cast v2, Lcom/omoda/launcher/MainActivity;

    iget-object p0, v2, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    const/4 v3, 0x0

    const-string v4, "binding"

    if-eqz p0, :cond_2

    iget-object p0, p0, Lt2;->a:Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p0, v2, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz p0, :cond_1

    check-cast v1, LQ7;

    iget-object v1, v1, LQ7;->a:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lt2;->a:Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v4}, Lnb;->j0(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
