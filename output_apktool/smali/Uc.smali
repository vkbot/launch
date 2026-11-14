.class public final synthetic LUc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/omoda/launcher/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/MainActivity;I)V
    .locals 0

    iput p2, p0, LUc;->a:I

    iput-object p1, p0, LUc;->b:Lcom/omoda/launcher/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    const/4 p1, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, LUc;->b:Lcom/omoda/launcher/MainActivity;

    const-string v4, "this$0"

    iget p0, p0, LUc;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v3, v4}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "MainActivity"

    const-string p1, "User requested launcher unload (kill process)"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v3, v4}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v3, Lcom/omoda/launcher/MainActivity;->y:Lcom/omoda/launcher/data/AppInfo;

    if-eqz p0, :cond_0

    iget-object p0, v3, Lcom/omoda/launcher/MainActivity;->z:Lcom/omoda/launcher/data/AppInfo;

    if-eqz p0, :cond_0

    invoke-virtual {v3}, Lcom/omoda/launcher/MainActivity;->G()V

    :cond_0
    return-void

    :pswitch_1
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v3, v4}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    iput p0, v3, Lcom/omoda/launcher/MainActivity;->M:I

    invoke-virtual {v3}, Lcom/omoda/launcher/MainActivity;->K()V

    return-void

    :pswitch_2
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v3, v4}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v3, Lcom/omoda/launcher/MainActivity;->y:Lcom/omoda/launcher/data/AppInfo;

    if-eqz p0, :cond_1

    iget-object p0, v3, Lcom/omoda/launcher/MainActivity;->z:Lcom/omoda/launcher/data/AppInfo;

    if-eqz p0, :cond_1

    invoke-virtual {v3}, Lcom/omoda/launcher/MainActivity;->G()V

    :cond_1
    return-void

    :pswitch_3
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v3, v4}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/omoda/launcher/MainActivity;->K()V

    return-void

    :pswitch_4
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v3, v4}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    iput-object p0, v3, Lcom/omoda/launcher/MainActivity;->y:Lcom/omoda/launcher/data/AppInfo;

    iput-object p0, v3, Lcom/omoda/launcher/MainActivity;->z:Lcom/omoda/launcher/data/AppInfo;

    const v4, 0x3f333333    # 0.7f

    iput v4, v3, Lcom/omoda/launcher/MainActivity;->A:F

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-static {v4}, LQ7;->a(Landroid/view/LayoutInflater;)LQ7;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/omoda/launcher/MainActivity;->u(LQ7;)V

    new-instance v5, LXc;

    invoke-direct {v5, v3, v4, v1}, LXc;-><init>(Lcom/omoda/launcher/MainActivity;LQ7;I)V

    iget-object v6, v4, LQ7;->j:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, LXc;

    invoke-direct {v5, v3, v4, v0}, LXc;-><init>(Lcom/omoda/launcher/MainActivity;LQ7;I)V

    iget-object v6, v4, LQ7;->s:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v4, LQ7;->e:Landroid/view/View;

    new-instance v6, LO;

    const/16 v7, 0xc

    invoke-direct {v6, v7, v4}, LO;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance v6, LWc;

    invoke-direct {v6, v4, v3}, LWc;-><init>(LQ7;Lcom/omoda/launcher/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v5, LUc;

    invoke-direct {v5, v3, v2}, LUc;-><init>(Lcom/omoda/launcher/MainActivity;I)V

    iget-object v2, v4, LQ7;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, LUc;

    invoke-direct {v2, v3, p1}, LUc;-><init>(Lcom/omoda/launcher/MainActivity;I)V

    iget-object p1, v4, LQ7;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, v4, LQ7;->i:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v2, v5}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, v4, LQ7;->r:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-static {v7, v5}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v3, Lcom/omoda/launcher/MainActivity;->A:F

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    int-to-float v0, v0

    sub-float/2addr v0, v5

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v4}, Lcom/omoda/launcher/MainActivity;->O(LQ7;)V

    new-instance p1, LYc;

    invoke-direct {p1, v3, v4, v1}, LYc;-><init>(Lcom/omoda/launcher/MainActivity;LQ7;I)V

    iget-object v0, v4, LQ7;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iget-object p1, v3, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    const-string v1, "binding"

    if-eqz p1, :cond_4

    const-string v2, "rootLayout"

    iget-object p1, p1, Lt2;->c:Ljava/lang/Object;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-static {p1, v2}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LC6;->a(Landroid/view/View;)V

    iget-object p1, v3, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lt2;->a:Ljava/lang/Object;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object p1, v3, Lcom/omoda/launcher/MainActivity;->v:Lt2;

    if-eqz p1, :cond_2

    iget-object p0, p1, Lt2;->a:Ljava/lang/Object;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v3, v4}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LB4;

    invoke-direct {p0, v2, v3}, LB4;-><init>(ILjava/lang/Object;)V

    new-instance v0, LS4;

    invoke-direct {v0, p1, v3}, LS4;-><init>(ILjava/lang/Object;)V

    new-instance p1, LB4;

    invoke-direct {p1, p0}, LB4;-><init>(Lda;)V

    new-instance p0, LS4;

    invoke-direct {p0, v0}, LS4;-><init>(LS9;)V

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v3, Lc8;

    invoke-direct {v3, v0, p1, p0, v2}, Lc8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

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
