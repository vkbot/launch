.class public final synthetic LLk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic b:Lcom/omoda/launcher/data/AppInfo;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/AppInfo;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LLk;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, LLk;->b:Lcom/omoda/launcher/data/AppInfo;

    iput-object p3, p0, LLk;->c:Ljava/util/ArrayList;

    iput-object p4, p0, LLk;->d:Landroid/widget/TextView;

    iput-object p5, p0, LLk;->e:Landroid/widget/TextView;

    iput-object p6, p0, LLk;->f:Landroid/widget/TextView;

    iput-object p7, p0, LLk;->g:Landroid/widget/TextView;

    iput-object p8, p0, LLk;->h:Landroid/widget/TextView;

    iput-object p9, p0, LLk;->i:Landroid/widget/TextView;

    iput-object p10, p0, LLk;->j:Landroid/widget/TextView;

    iput-object p11, p0, LLk;->k:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    const/4 p1, 0x1

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v0, p0, LLk;->a:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, LLk;->b:Lcom/omoda/launcher/data/AppInfo;

    const-string v2, "$app"

    invoke-static {v1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, LLk;->c:Ljava/util/ArrayList;

    iget-object v4, p0, LLk;->d:Landroid/widget/TextView;

    iget-object v5, p0, LLk;->e:Landroid/widget/TextView;

    iget-object v6, p0, LLk;->f:Landroid/widget/TextView;

    iget-object v7, p0, LLk;->g:Landroid/widget/TextView;

    iget-object v8, p0, LLk;->h:Landroid/widget/TextView;

    iget-object v2, p0, LLk;->i:Landroid/widget/TextView;

    iget-object v9, p0, LLk;->j:Landroid/widget/TextView;

    iget-object p0, p0, LLk;->k:Landroid/widget/LinearLayout;

    invoke-static/range {v3 .. v8}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f0(Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    sget-object v3, LKi;->a:LKi;

    invoke-static {}, LKi;->c()LX4;

    move-result-object v3

    iget-object v3, v3, LX4;->d:Ljava/lang/String;

    const-string v4, "\u2026"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v2, Ljb;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbd;

    invoke-direct {v3, v0, p0, p1}, Lbd;-><init>(Landroid/content/ContextWrapper;Ljava/lang/Object;I)V

    new-instance v4, Lhl;

    invoke-direct {v4, v0, p0, v1, p1}, Lhl;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3, v4, v0, v2}, Ljb;->c(LS9;Lha;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
