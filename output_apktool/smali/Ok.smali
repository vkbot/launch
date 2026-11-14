.class public final synthetic LOk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic d:Lcom/omoda/launcher/data/AppInfo;

.field public final synthetic e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic f:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/AppInfo;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOk;->a:Landroid/widget/TextView;

    iput-object p2, p0, LOk;->b:Landroid/widget/TextView;

    iput-object p3, p0, LOk;->c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p4, p0, LOk;->d:Lcom/omoda/launcher/data/AppInfo;

    iput-object p5, p0, LOk;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p6, p0, LOk;->f:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 p1, 0x0

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v0, p0, LOk;->a:Landroid/widget/TextView;

    iget-object v1, p0, LOk;->b:Landroid/widget/TextView;

    iget-object v2, p0, LOk;->c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v3, "$ctx"

    invoke-static {v2, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, LOk;->d:Lcom/omoda/launcher/data/AppInfo;

    const-string v4, "$app"

    invoke-static {v3, v4}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, LOk;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v5, "this$0"

    invoke-static {v4, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LOk;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object v0, LQ2;->a:Landroid/os/Handler;

    invoke-virtual {v3}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LGl;

    invoke-direct {v1, v4, p0, v3}, LGl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/LinearLayout;Lcom/omoda/launcher/data/AppInfo;)V

    sget-object p0, LQ2;->a:Landroid/os/Handler;

    const-string v3, "packageName"

    invoke-static {v0, v3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v4, LN2;

    invoke-direct {v4, v3, p1, v1}, LN2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-static {v1, v2}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/app/ActivityManager;

    const-class v2, Landroid/app/ActivityManager;

    const-string v3, "clearApplicationUserData"

    const-class v5, Ljava/lang/String;

    const-class v6, Landroid/content/pm/IPackageDataObserver;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-instance v3, LP2;

    invoke-direct {v3, v4}, LP2;-><init>(Lda;)V

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    if-nez v1, :cond_2

    new-instance v1, LL2;

    invoke-direct {v1, v4, p1}, LL2;-><init>(LN2;I)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clearData("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") failed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStorage"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, LL2;

    const/4 v0, 0x1

    invoke-direct {p1, v4, v0}, LL2;-><init>(LN2;I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_3
    return-void
.end method
