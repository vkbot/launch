.class public final synthetic LIk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic c:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/LinearLayout;I)V
    .locals 0

    iput p3, p0, LIk;->a:I

    iput-object p1, p0, LIk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, LIk;->c:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, LIk;->c:Landroid/widget/LinearLayout;

    const-string v0, "this$0"

    iget-object v1, p0, LIk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget p0, p0, LIk;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void

    :pswitch_0
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    iget-object p0, v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
