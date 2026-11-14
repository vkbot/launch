.class public final synthetic LQk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic c:Lcom/omoda/launcher/data/AppInfo;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:LR2;

.field public final synthetic f:Landroid/widget/TextView;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public synthetic constructor <init>(LR2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/data/AppInfo;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LQk;->a:Landroid/widget/TextView;

    iput-object p8, p0, LQk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p7, p0, LQk;->c:Lcom/omoda/launcher/data/AppInfo;

    iput-object p3, p0, LQk;->d:Landroid/widget/TextView;

    iput-object p1, p0, LQk;->e:LR2;

    iput-object p4, p0, LQk;->f:Landroid/widget/TextView;

    iput-object p5, p0, LQk;->g:Landroid/widget/TextView;

    iput-object p6, p0, LQk;->h:Landroid/widget/TextView;

    iput-object p9, p0, LQk;->i:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v5, p0, LQk;->a:Landroid/widget/TextView;

    iget-object p1, p0, LQk;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v0, "$ctx"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, LQk;->c:Lcom/omoda/launcher/data/AppInfo;

    const-string v0, "$app"

    invoke-static {v7, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, LQk;->d:Landroid/widget/TextView;

    iget-object v1, p0, LQk;->e:LR2;

    iget-object v3, p0, LQk;->f:Landroid/widget/TextView;

    iget-object v4, p0, LQk;->g:Landroid/widget/TextView;

    iget-object v6, p0, LQk;->h:Landroid/widget/TextView;

    iget-object v8, p0, LQk;->i:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string p0, "this$0"

    invoke-static {v8, p0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {v5, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->h0(Landroid/widget/TextView;Z)V

    sget-object p0, LQ2;->a:Landroid/os/Handler;

    invoke-virtual {v7}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v10, LFl;

    move-object v0, v10

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, LFl;-><init>(LR2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/data/AppInfo;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    const-string v0, "packageName"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-class v0, Landroid/content/pm/PackageManager;

    const-string v1, "deleteApplicationCacheFiles"

    const-class v2, Ljava/lang/String;

    const-class v3, Landroid/content/pm/IPackageDataObserver;

    filled-new-array {v2, v3}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, LP2;

    invoke-direct {v1, v10}, LP2;-><init>(Lda;)V

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearCache("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") failed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppStorage"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, LQ2;->a:Landroid/os/Handler;

    new-instance p1, LO;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v10}, LO;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
