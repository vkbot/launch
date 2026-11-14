.class public final LFl;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lda;


# instance fields
.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:LR2;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic i:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic j:Lcom/omoda/launcher/data/AppInfo;


# direct methods
.method public constructor <init>(LR2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/data/AppInfo;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 0

    iput-object p2, p0, LFl;->b:Landroid/widget/TextView;

    iput-object p1, p0, LFl;->c:LR2;

    iput-object p3, p0, LFl;->d:Landroid/widget/TextView;

    iput-object p4, p0, LFl;->e:Landroid/widget/TextView;

    iput-object p5, p0, LFl;->f:Landroid/widget/TextView;

    iput-object p6, p0, LFl;->g:Landroid/widget/TextView;

    iput-object p8, p0, LFl;->h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p9, p0, LFl;->i:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p7, p0, LFl;->j:Lcom/omoda/launcher/data/AppInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, LFl;->b:Landroid/widget/TextView;

    iget-object v0, p0, LFl;->c:LR2;

    iget-object v2, p0, LFl;->d:Landroid/widget/TextView;

    iget-object v3, p0, LFl;->e:Landroid/widget/TextView;

    iget-object v4, p0, LFl;->f:Landroid/widget/TextView;

    iget-object v5, p0, LFl;->g:Landroid/widget/TextView;

    iget-object v7, p0, LFl;->h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v8, p0, LFl;->i:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v6, p0, LFl;->j:Lcom/omoda/launcher/data/AppInfo;

    invoke-static/range {v0 .. v8}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->g0(LR2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/data/AppInfo;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method
