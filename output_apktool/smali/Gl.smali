.class public final LGl;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lda;


# instance fields
.field public final synthetic b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic c:Landroid/widget/LinearLayout;

.field public final synthetic d:Lcom/omoda/launcher/data/AppInfo;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/LinearLayout;Lcom/omoda/launcher/data/AppInfo;)V
    .locals 0

    iput-object p1, p0, LGl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, LGl;->c:Landroid/widget/LinearLayout;

    iput-object p3, p0, LGl;->d:Lcom/omoda/launcher/data/AppInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, LGl;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, LGl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    sget-object v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    :try_start_0
    iget-object v1, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 p1, 0x1

    iget-object p0, p0, LGl;->d:Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v0, p0, p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b0(Lcom/omoda/launcher/data/AppInfo;Z)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method
