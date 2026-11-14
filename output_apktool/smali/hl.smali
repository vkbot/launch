.class public final Lhl;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lhl;->b:I

    sget-object v0, LKi;->a:LKi;

    .line 1
    iput-object p1, p0, Lhl;->c:Ljava/lang/Object;

    iput-object p2, p0, Lhl;->d:Ljava/lang/Object;

    iput-object p3, p0, Lhl;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Lhl;->b:I

    iput-object p1, p0, Lhl;->c:Ljava/lang/Object;

    iput-object p2, p0, Lhl;->d:Ljava/lang/Object;

    iput-object p3, p0, Lhl;->e:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "msg"

    sget-object v2, Lsm;->a:Lsm;

    iget-object v3, p0, Lhl;->e:Ljava/lang/Object;

    iget-object v4, p0, Lhl;->d:Ljava/lang/Object;

    iget-object v5, p0, Lhl;->c:Ljava/lang/Object;

    iget p0, p0, Lhl;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/String;

    const-string v0, "installMsg"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    check-cast v5, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    check-cast v4, Lcom/omoda/launcher/data/RemoteApp;

    invoke-static {v5, v4}, Lfm;->G(Landroid/content/Context;Lcom/omoda/launcher/data/RemoteApp;)V

    :cond_0
    check-cast v3, Lhl;

    invoke-virtual {v3, p1, p2}, Lhl;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    sget-object p0, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object p0

    iget-object p0, p0, LOg;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p0, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object p0

    iget-object p0, p0, LOg;->g:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast v4, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, v4, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance p1, LKl;

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct {p1, v4, v3, v0}, LKl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/LinearLayout;I)V

    const-wide/16 v0, 0x708

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v2

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/LinearLayout;

    check-cast v5, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz p0, :cond_3

    :try_start_0
    iget-object p0, v5, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz p0, :cond_2

    invoke-interface {p0, v4}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m()V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "PackageInstaller uninstall failed ("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") \u2014 fallback ACTION_DELETE"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TopOverlayA11y"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object p0, v5, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz p0, :cond_4

    invoke-interface {p0, v4}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_4
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->E()V

    check-cast v3, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v3}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q(Ljava/lang/String;)V

    :goto_1
    return-object v2

    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, LKi;->a:LKi;

    check-cast v5, Landroid/widget/TextView;

    if-eqz p0, :cond_5

    invoke-static {}, LKi;->d()LOb;

    move-result-object p0

    iget-object p0, p0, LOb;->h:Ljava/lang/String;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    invoke-static {}, LKi;->e()LOg;

    move-result-object p0

    iget-object p0, p0, LOg;->g:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
