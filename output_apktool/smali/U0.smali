.class public final synthetic LU0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LU0;->a:I

    iput-object p1, p0, LU0;->b:Ljava/lang/Object;

    iput-object p3, p0, LU0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string p1, "$item"

    const/4 v0, 0x0

    const-string v1, "this$0"

    iget v2, p0, LU0;->a:I

    packed-switch v2, :pswitch_data_0

    iget-object p1, p0, LU0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LU0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p1, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l1:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m1:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v()Landroid/view/WindowManager;

    move-result-object v1

    :cond_0
    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->l1:Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->m1:Landroid/view/WindowManager;

    sget-object v1, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lang_code"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object p0, LSb;->a:LSb;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LSb;->c:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_3

    const-wide v1, 0x53aaff911faf7680L    # 1.1263288325779215E95

    invoke-static {v1, v2}, LC6;->r(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3
    iget-object p0, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    const-string v1, "windowLauncher"

    if-eqz p0, :cond_6

    iget-boolean p0, p0, LIo;->f:Z

    if-eqz p0, :cond_5

    iget-object p0, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->J:LIo;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, LIo;->n()V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    iget-object p0, p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v0, LJk;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_6
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, p0, LU0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p1, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LU0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lnb;->o(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->r0(Z)V

    return-void

    :pswitch_1
    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, p0, LU0;->b:Ljava/lang/Object;

    check-cast p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {p1, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LU0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/widget/EditText;

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-static {p1, v1}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void

    :pswitch_2
    iget-object p1, p0, LU0;->b:Ljava/lang/Object;

    check-cast p1, Lzj;

    invoke-static {p1, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LU0;->c:Ljava/lang/Object;

    check-cast p0, Lqj;

    const-string v0, "this$1"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lzj;->n:Ljava/util/ArrayList;

    invoke-virtual {p0}, LEg;->c()I

    move-result p0

    invoke-static {v0, p0}, LL4;->x0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnj;

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lzj;->d()V

    iget-object v0, p0, Lnj;->d:Ltj;

    if-eqz v0, :cond_8

    iget-object p0, p1, Lzj;->f:Lel;

    invoke-virtual {p0, v0}, Lel;->h(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lnj;->a:Ljava/util/List;

    invoke-static {p0}, LL4;->w0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iget-object p1, p1, Lzj;->e:Lel;

    invoke-virtual {p1, p0}, Lel;->h(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void

    :pswitch_3
    iget-object v0, p0, LU0;->b:Ljava/lang/Object;

    check-cast v0, LY0;

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LU0;->c:Ljava/lang/Object;

    check-cast p0, Lv2;

    invoke-static {p0, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, LY0;->e:Lel;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lv2;->a:Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {p1, p0}, Lel;->h(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-void

    :pswitch_4
    iget-object v0, p0, LU0;->b:Ljava/lang/Object;

    check-cast v0, LY0;

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LU0;->c:Ljava/lang/Object;

    check-cast p0, Lu2;

    invoke-static {p0, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, v0, LY0;->d:Ldl;

    iget-object p0, p0, Lu2;->a:Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {p1, p0}, Ldl;->h(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
