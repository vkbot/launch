.class public final LDl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:LQ0;

.field public final synthetic f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LQ0;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V
    .locals 0

    iput-object p1, p0, LDl;->e:LQ0;

    iput-object p2, p0, LDl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p3, p0, LDl;->g:Landroid/widget/TextView;

    iput-object p4, p0, LDl;->h:Landroid/widget/TextView;

    invoke-direct {p0, p5}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 6

    new-instance p2, LDl;

    iget-object v3, p0, LDl;->g:Landroid/widget/TextView;

    iget-object v4, p0, LDl;->h:Landroid/widget/TextView;

    iget-object v1, p0, LDl;->e:LQ0;

    iget-object v2, p0, LDl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    move-object v0, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LDl;-><init>(LQ0;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    iget-object p1, p0, LDl;->e:LQ0;

    iget-boolean p1, p1, LQ0;->a:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget-object p1, LSb;->a:LSb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, LSb;->b(Z)V

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LDl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->D()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LDl;->g:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v0, LKi;->a:LKi;

    invoke-static {}, LKi;->a()Lq0;

    move-result-object v0

    iget-object v0, v0, Lq0;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, LKi;->a()Lq0;

    move-result-object p1

    iget-object p0, p0, LDl;->h:Landroid/widget/TextView;

    iget-object p1, p1, Lq0;->o:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, LDl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, LDl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, LDl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
