.class public final synthetic Li7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Li7;->a:I

    iput-object p1, p0, Li7;->c:Ljava/lang/Object;

    iput p2, p0, Li7;->b:I

    iput-object p3, p0, Li7;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Li7;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Li7;->c:Ljava/lang/Object;

    iget-object v3, p0, Li7;->d:Ljava/lang/Object;

    iget p0, p0, Li7;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast v3, Landroid/view/View;

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    check-cast v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string p0, "this$0"

    invoke-static {v2, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v1, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->N:Z

    iput v0, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q:I

    iput v0, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->R:I

    const/4 p0, -0x1

    iput p0, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L:I

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v3, p0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v4, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M0:Lcom/omoda/launcher/ui/PresetGridLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    :goto_0
    if-ge p0, v6, :cond_1

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-ne p0, v0, :cond_0

    move v8, v5

    goto :goto_1

    :cond_0
    const v8, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    add-int/2addr p0, v1

    goto :goto_0

    :cond_1
    const p0, 0x3f8a3d71    # 1.08f

    invoke-virtual {v3, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationZ(F)V

    const p0, 0x7f080106

    invoke-virtual {v3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    if-eqz p0, :cond_2

    invoke-virtual {v2, p0, v0, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->p0(Landroid/widget/FrameLayout;IZ)V

    :cond_2
    return-void

    :pswitch_0
    check-cast v2, Lj7;

    iget-object p0, v2, Lj7;->b:LKf;

    check-cast v3, Ljava/io/Serializable;

    invoke-interface {p0, v0, v3}, LKf;->j(ILjava/io/Serializable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
