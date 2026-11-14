.class public final synthetic LPk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/data/RemoteApp;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LPk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LPk;->b:Landroid/widget/TextView;

    iput-object p3, p0, LPk;->c:Landroid/widget/TextView;

    iput-object p5, p0, LPk;->d:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p4, p0, LPk;->e:Ljava/lang/Object;

    iput-object p1, p0, LPk;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS0;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LPk;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LPk;->b:Landroid/widget/TextView;

    iput-object p2, p0, LPk;->c:Landroid/widget/TextView;

    iput-object p3, p0, LPk;->e:Ljava/lang/Object;

    iput-object p4, p0, LPk;->d:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p5, p0, LPk;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    const/4 p1, 0x2

    const/16 v0, 0x30

    const/4 v1, 0x0

    const/16 v2, 0x8

    iget-object v3, p0, LPk;->f:Ljava/lang/Object;

    iget-object v4, p0, LPk;->e:Ljava/lang/Object;

    const-string v5, "this$0"

    iget v6, p0, LPk;->a:I

    packed-switch v6, :pswitch_data_0

    sget-object v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v11, p0, LPk;->b:Landroid/widget/TextView;

    iget-object v10, p0, LPk;->c:Landroid/widget/TextView;

    iget-object p0, p0, LPk;->d:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v4

    check-cast v9, Lcom/omoda/launcher/data/RemoteApp;

    const-string v4, "$app"

    invoke-static {v9, v4}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v3

    check-cast v12, Landroid/widget/LinearLayout;

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object v2

    iget-object v2, v2, LOg;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, LKi;->e()LOg;

    move-result-object v0

    iget-object v0, v0, LOg;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lv7;->b:LJ6;

    new-instance v1, LRl;

    const/4 v13, 0x0

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, LRl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/RemoteApp;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;LS5;)V

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    invoke-static {p0, v0, v1, p1}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    return-void

    :pswitch_0
    sget-object v6, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v12, p0, LPk;->b:Landroid/widget/TextView;

    iget-object v11, p0, LPk;->c:Landroid/widget/TextView;

    move-object v10, v4

    check-cast v10, Landroid/widget/TextView;

    iget-object p0, p0, LPk;->d:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p0, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object v2

    iget-object v2, v2, LOg;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, LKi;->e()LOg;

    move-result-object v0

    iget-object v0, v0, LOg;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lv7;->b:LJ6;

    new-instance v1, Ljl;

    const/4 v13, 0x0

    move-object v9, v3

    check-cast v9, LS0;

    move-object v7, v1

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Ljl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS0;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    invoke-static {p0, v0, v1, p1}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
