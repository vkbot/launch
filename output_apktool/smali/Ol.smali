.class public final LOl;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic d:Lcom/omoda/launcher/data/RemoteApp;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/data/RemoteApp;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LOl;->b:I

    .line 1
    iput-object p5, p0, LOl;->c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p4, p0, LOl;->d:Lcom/omoda/launcher/data/RemoteApp;

    iput-object p2, p0, LOl;->e:Ljava/lang/Object;

    iput-object p3, p0, LOl;->f:Ljava/lang/Object;

    iput-object p1, p0, LOl;->g:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lhl;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/RemoteApp;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LOl;->b:I

    .line 2
    iput-object p1, p0, LOl;->e:Ljava/lang/Object;

    iput-object p2, p0, LOl;->f:Ljava/lang/Object;

    iput-object p3, p0, LOl;->c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p4, p0, LOl;->g:Ljava/lang/Object;

    iput-object p5, p0, LOl;->d:Lcom/omoda/launcher/data/RemoteApp;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Lsm;->a:Lsm;

    iget-object v1, p0, LOl;->g:Ljava/lang/Object;

    iget-object v2, p0, LOl;->c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v3, p0, LOl;->e:Ljava/lang/Object;

    iget-object v4, p0, LOl;->f:Ljava/lang/Object;

    const-string v5, "msg"

    iget v6, p0, LOl;->b:I

    packed-switch v6, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v4

    check-cast v10, Lhl;

    move-object v8, v3

    check-cast v8, Ljava/io/File;

    if-nez p1, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v10, p0, p2}, Lhl;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    sget-object p2, Lv7;->b:LJ6;

    new-instance v2, LSl;

    const/4 v11, 0x0

    move-object v7, v1

    check-cast v7, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v9, p0, LOl;->d:Lcom/omoda/launcher/data/RemoteApp;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, LSl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/io/File;Lcom/omoda/launcher/data/RemoteApp;Lhl;LS5;)V

    const/4 p0, 0x2

    invoke-static {p1, p2, v2, p0}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    :goto_0
    return-object v0

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p0, p0, LOl;->d:Lcom/omoda/launcher/data/RemoteApp;

    invoke-static {v2, p0}, Lfm;->G(Landroid/content/Context;Lcom/omoda/launcher/data/RemoteApp;)V

    sget-object p0, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object p0

    iget-object p0, p0, LOg;->f:Ljava/lang/String;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance p1, LKl;

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    invoke-direct {p1, v2, v1, p2}, LKl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/LinearLayout;I)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    sget-object p0, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object p0

    iget-object p0, p0, LOg;->g:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    check-cast v4, Landroid/widget/TextView;

    const/4 p0, 0x0

    invoke-virtual {v4, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
