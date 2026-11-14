.class public final synthetic LGk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, LGk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LGk;->c:I

    iput-object p2, p0, LGk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;II)V
    .locals 0

    .line 2
    iput p3, p0, LGk;->a:I

    iput-object p1, p0, LGk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput p2, p0, LGk;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 p1, -0x1

    iget v0, p0, LGk;->c:I

    const-string v1, "this$0"

    iget-object v2, p0, LGk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget p0, p0, LGk;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v2, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v0, :cond_0

    invoke-virtual {v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D()V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getPackageName(...)"

    invoke-static {p0, p1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v2, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I:Lcom/omoda/launcher/data/PresetRepository;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/omoda/launcher/data/PresetRepository;->deletePreset(I)Z

    iput p1, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L:I

    invoke-virtual {v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D0()V

    return-void

    :cond_1
    const-string p0, "presetRepository"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_1
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v2, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->L:I

    new-instance p0, Landroid/content/Intent;

    const-class p1, Lcom/omoda/launcher/MainActivity;

    invoke-direct {p0, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p1, "edit_preset_index"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->M()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
