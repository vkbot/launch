.class public final synthetic LKl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic c:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/LinearLayout;I)V
    .locals 0

    iput p3, p0, LKl;->a:I

    iput-object p1, p0, LKl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, LKl;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, LKl;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "this$0"

    iget-object v1, p0, LKl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$container"

    iget-object p0, p0, LKl;->c:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m()V

    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object v1, p0, LKl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$container"

    iget-object p0, p0, LKl;->c:Landroid/widget/LinearLayout;

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
