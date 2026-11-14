.class public final synthetic LMk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Ljava/util/ArrayList;

.field public final synthetic l:F

.field public final synthetic m:Landroid/widget/LinearLayout;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;FLandroid/widget/LinearLayout;I)V
    .locals 0

    iput p14, p0, LMk;->a:I

    iput-object p1, p0, LMk;->n:Ljava/lang/Object;

    iput-object p2, p0, LMk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p3, p0, LMk;->c:Ljava/util/ArrayList;

    iput-object p4, p0, LMk;->d:Landroid/widget/TextView;

    iput-object p5, p0, LMk;->e:Landroid/widget/TextView;

    iput-object p6, p0, LMk;->f:Landroid/widget/TextView;

    iput-object p7, p0, LMk;->g:Landroid/widget/TextView;

    iput-object p8, p0, LMk;->h:Landroid/widget/TextView;

    iput-object p9, p0, LMk;->i:Landroid/widget/TextView;

    iput-object p10, p0, LMk;->j:Landroid/widget/TextView;

    iput-object p11, p0, LMk;->k:Ljava/util/ArrayList;

    iput p12, p0, LMk;->l:F

    iput-object p13, p0, LMk;->m:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "this$0"

    iget-object v2, v0, LMk;->n:Ljava/lang/Object;

    iget v3, v0, LMk;->a:I

    packed-switch v3, :pswitch_data_0

    sget-object v3, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    check-cast v2, LHl;

    iget-object v3, v0, LMk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v3, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, LMk;->c:Ljava/util/ArrayList;

    iget-object v5, v0, LMk;->d:Landroid/widget/TextView;

    iget-object v6, v0, LMk;->e:Landroid/widget/TextView;

    iget-object v7, v0, LMk;->f:Landroid/widget/TextView;

    iget-object v8, v0, LMk;->g:Landroid/widget/TextView;

    iget-object v9, v0, LMk;->h:Landroid/widget/TextView;

    iget-object v10, v0, LMk;->i:Landroid/widget/TextView;

    iget-object v11, v0, LMk;->j:Landroid/widget/TextView;

    iget-object v12, v0, LMk;->k:Ljava/util/ArrayList;

    iget-object v14, v0, LMk;->m:Landroid/widget/LinearLayout;

    iget-object v15, v2, LHl;->b:Lcom/omoda/launcher/data/RemoteApp;

    iget v13, v0, LMk;->l:F

    invoke-static/range {v3 .. v15}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;FLandroid/widget/LinearLayout;Lcom/omoda/launcher/data/RemoteApp;)V

    return-void

    :pswitch_0
    sget-object v3, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v4, v0, LMk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v4, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, LMk;->c:Ljava/util/ArrayList;

    iget-object v6, v0, LMk;->d:Landroid/widget/TextView;

    iget-object v7, v0, LMk;->e:Landroid/widget/TextView;

    iget-object v8, v0, LMk;->f:Landroid/widget/TextView;

    iget-object v9, v0, LMk;->g:Landroid/widget/TextView;

    iget-object v10, v0, LMk;->h:Landroid/widget/TextView;

    iget-object v11, v0, LMk;->i:Landroid/widget/TextView;

    iget-object v12, v0, LMk;->j:Landroid/widget/TextView;

    iget-object v13, v0, LMk;->k:Ljava/util/ArrayList;

    iget-object v15, v0, LMk;->m:Landroid/widget/LinearLayout;

    move-object/from16 v16, v2

    check-cast v16, Lcom/omoda/launcher/data/RemoteApp;

    if-eqz v16, :cond_0

    iget v14, v0, LMk;->l:F

    invoke-static/range {v4 .. v16}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d0(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;FLandroid/widget/LinearLayout;Lcom/omoda/launcher/data/RemoteApp;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
