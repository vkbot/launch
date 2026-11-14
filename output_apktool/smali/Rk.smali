.class public final synthetic LRk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:LR2;

.field public final synthetic b:Lcom/omoda/launcher/data/AppInfo;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:F

.field public final synthetic i:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Landroid/widget/LinearLayout;

.field public final synthetic l:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public synthetic constructor <init>(LR2;Lcom/omoda/launcher/data/AppInfo;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;FLcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LRk;->a:LR2;

    iput-object p2, p0, LRk;->b:Lcom/omoda/launcher/data/AppInfo;

    iput-object p3, p0, LRk;->c:Landroid/widget/TextView;

    iput-object p4, p0, LRk;->d:Landroid/widget/TextView;

    iput-object p5, p0, LRk;->e:Ljava/util/ArrayList;

    iput-object p6, p0, LRk;->f:Landroid/widget/TextView;

    iput-object p7, p0, LRk;->g:Landroid/widget/TextView;

    iput p8, p0, LRk;->h:F

    iput-object p9, p0, LRk;->i:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p10, p0, LRk;->j:Landroid/widget/TextView;

    iput-object p11, p0, LRk;->k:Landroid/widget/LinearLayout;

    iput-object p12, p0, LRk;->l:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v1, v0, LRk;->a:LR2;

    iget-object v6, v0, LRk;->b:Lcom/omoda/launcher/data/AppInfo;

    const-string v2, "$app"

    invoke-static {v6, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, LRk;->c:Landroid/widget/TextView;

    iget-object v5, v0, LRk;->d:Landroid/widget/TextView;

    iget-object v7, v0, LRk;->e:Ljava/util/ArrayList;

    iget-object v8, v0, LRk;->f:Landroid/widget/TextView;

    iget-object v9, v0, LRk;->g:Landroid/widget/TextView;

    iget-object v3, v0, LRk;->i:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v2, "this$0"

    invoke-static {v3, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v14, v0, LRk;->j:Landroid/widget/TextView;

    iget-object v2, v0, LRk;->k:Landroid/widget/LinearLayout;

    iget-object v15, v0, LRk;->l:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v10, "$ctx"

    invoke-static {v15, v10}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/omoda/launcher/data/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    iget-object v1, v1, LR2;->e:Ljava/lang/String;

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v10, v0, LRk;->h:F

    move-object v11, v3

    move-object v12, v5

    move-object v13, v4

    move-object v0, v15

    move-object v15, v1

    invoke-static/range {v7 .. v15}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i0(Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;FLcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    new-instance v1, Lpj;

    const/4 v7, 0x4

    invoke-direct {v1, v3, v2, v6, v7}, Lpj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, LOk;

    move-object v8, v2

    move-object v2, v1

    move-object v7, v3

    move-object v3, v5

    move-object v9, v5

    move-object v5, v0

    invoke-direct/range {v2 .. v8}, LOk;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/AppInfo;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/LinearLayout;)V

    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
