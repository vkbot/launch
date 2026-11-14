.class public final LJl;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:F

.field public final synthetic h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;FLcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, LJl;->b:Landroid/widget/TextView;

    iput-object p2, p0, LJl;->c:Landroid/widget/TextView;

    iput-object p3, p0, LJl;->d:Ljava/util/ArrayList;

    iput-object p4, p0, LJl;->e:Landroid/widget/TextView;

    iput-object p5, p0, LJl;->f:Landroid/widget/TextView;

    iput p6, p0, LJl;->g:F

    iput-object p7, p0, LJl;->h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p8, p0, LJl;->i:Landroid/widget/TextView;

    iput-object p9, p0, LJl;->j:Landroid/widget/LinearLayout;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, LS9;

    check-cast p2, LS9;

    const-string v0, "proceed"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abandon"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LKi;->n:Lrm;

    if-eqz v0, :cond_0

    iget-object v8, p0, LJl;->i:Landroid/widget/TextView;

    iget-object v9, v0, Lrm;->c:Ljava/lang/String;

    iget-object v1, p0, LJl;->d:Ljava/util/ArrayList;

    iget-object v2, p0, LJl;->e:Landroid/widget/TextView;

    iget-object v0, p0, LJl;->f:Landroid/widget/TextView;

    iget-object v10, p0, LJl;->b:Landroid/widget/TextView;

    iget-object v11, p0, LJl;->c:Landroid/widget/TextView;

    iget v4, p0, LJl;->g:F

    iget-object v5, p0, LJl;->h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    move-object v3, v0

    move-object v6, v10

    move-object v7, v11

    invoke-static/range {v1 .. v9}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->i0(Ljava/util/ArrayList;Landroid/widget/TextView;Landroid/widget/TextView;FLcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    new-instance v1, LIl;

    invoke-direct {v1, v10, v11, v0, p1}, LIl;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;LS9;)V

    invoke-virtual {v10, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lpj;

    iget-object v0, p0, LJl;->j:Landroid/widget/LinearLayout;

    iget-object p0, p0, LJl;->h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const/4 v1, 0x5

    invoke-direct {p1, p2, p0, v0, v1}, Lpj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :cond_0
    const-string p0, "uninstall"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
