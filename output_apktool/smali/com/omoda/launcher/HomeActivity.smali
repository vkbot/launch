.class public final Lcom/omoda/launcher/HomeActivity;
.super Lb1;
.source "SourceFile"


# static fields
.field public static w:Lcom/omoda/launcher/HomeActivity;


# instance fields
.field public v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb1;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lb1;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/omoda/launcher/HomeActivity;->w:Lcom/omoda/launcher/HomeActivity;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b001d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/omoda/launcher/HomeActivity;->v:Landroid/view/View;

    invoke-virtual {p0, p1}, Lb1;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "getWindow(...)"

    invoke-static {p1, v0}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, Lcom/omoda/launcher/HomeActivity;->v:Landroid/view/View;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->q(Landroid/view/View;Z)LXk;

    move-result-object p0

    iput-object p0, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "listView"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
.end method

.method public final onDestroy()V
    .locals 4

    sget-object v0, Lcom/omoda/launcher/HomeActivity;->w:Lcom/omoda/launcher/HomeActivity;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    sput-object v1, Lcom/omoda/launcher/HomeActivity;->w:Lcom/omoda/launcher/HomeActivity;

    :cond_0
    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v0, p0, Lcom/omoda/launcher/HomeActivity;->v:Landroid/view/View;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v2, :cond_3

    iget-object v3, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    if-eqz v3, :cond_1

    iget-object v3, v3, LXk;->a:Lz2;

    iget-object v3, v3, Lz2;->a:Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    if-eq v3, v0, :cond_2

    goto :goto_1

    :cond_2
    iput-object v1, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c1:Z

    :cond_3
    :goto_1
    invoke-super {p0}, Lb1;->onDestroy()V

    return-void

    :cond_4
    const-string p0, "listView"

    invoke-static {p0}, Lnb;->j0(Ljava/lang/String;)V

    throw v1
.end method

.method public final onPause()V
    .locals 4

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c1:Z

    iget-object v2, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    if-eqz v2, :cond_0

    iget-object v2, v2, LXk;->a:Lz2;

    invoke-virtual {v2, v1}, Lz2;->c(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w()LJa;

    move-result-object v0

    iget-object v1, v0, LJa;->c:Landroid/os/Handler;

    iget-object v0, v0, LJa;->h:LO;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-super {p0}, Lb1;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lb1;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "getWindow(...)"

    invoke-static {v0, v1}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-static {}, Lvf;->j()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w()LJa;

    move-result-object p0

    iget-object v1, p0, LJa;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "opening_at"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x0

    iput v1, p0, LJa;->g:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->c1:Z

    sget-object p0, Lcom/omoda/launcher/data/LastScreen;->Companion:Lcom/omoda/launcher/data/LastScreen$Companion;

    invoke-virtual {p0}, Lcom/omoda/launcher/data/LastScreen$Companion;->home()V

    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    iget-object p0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->C:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t()V

    :cond_1
    iget-boolean p0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    const-string v3, "windowLauncher"

    if-eqz p0, :cond_4

    iget-boolean p0, p0, LIo;->g:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n()V

    goto :goto_0

    :cond_2
    iget-object p0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz p0, :cond_3

    iget-object p0, p0, LIo;->e:Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T()V

    goto :goto_0

    :cond_3
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_5
    :goto_0
    iget-object p0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    if-eqz p0, :cond_6

    invoke-virtual {v0, p0, v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V(LXk;Z)V

    :cond_6
    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->I0()V

    new-instance p0, LAl;

    invoke-direct {p0, v0, v2}, LAl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    const/4 v1, 0x3

    iget-object v0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    invoke-static {v0, v2, p0, v1}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method
