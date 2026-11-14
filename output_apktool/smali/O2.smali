.class public final synthetic LO2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, LO2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, LO2;->b:Z

    iput-object p1, p0, LO2;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lda;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LO2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, LNb;

    iput-object p1, p0, LO2;->c:Ljava/lang/Object;

    iput-boolean p2, p0, LO2;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, LO2;->b:Z

    iget-object v1, p0, LO2;->c:Ljava/lang/Object;

    iget p0, p0, LO2;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string p0, "this$0"

    invoke-static {v1, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    iget-boolean p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n:Z

    if-nez p0, :cond_0

    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->s0()V

    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n0()V

    :cond_0
    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v0()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->K()V

    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->G()V

    iget-boolean p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n:Z

    if-nez p0, :cond_3

    iget-object p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->k:Landroid/os/Handler;

    iget-object v0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w0:Lbl;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    iput-object p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m:Landroid/widget/FrameLayout;

    iput-object p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l:Landroid/widget/TextView;

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    check-cast v1, LNb;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v1, p0}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
