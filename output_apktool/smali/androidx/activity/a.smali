.class public abstract Landroidx/activity/a;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lsn;
.implements LEa;
.implements Lyh;
.implements Lbc;
.implements LLb;


# instance fields
.field public a:Landroidx/lifecycle/a;

.field public final b:LL5;

.field public final c:LK1;

.field public final d:Landroidx/lifecycle/a;

.field public final e:LQ9;

.field public f:Lrn;

.field public g:Landroidx/activity/b;

.field public final h:Lj5;

.field public final i:LQ9;

.field public final j:Lg5;

.field public final k:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final m:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final n:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final o:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroidx/lifecycle/a;

    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lbc;)V

    iput-object v0, p0, Landroidx/activity/a;->a:Landroidx/lifecycle/a;

    new-instance v0, LL5;

    invoke-direct {v0}, LL5;-><init>()V

    iput-object v0, p0, Landroidx/activity/a;->b:LL5;

    new-instance v0, LK1;

    new-instance v1, LO;

    move-object v2, p0

    check-cast v2, Lb1;

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, LO;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, LK1;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/a;->c:LK1;

    new-instance v0, Landroidx/lifecycle/a;

    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lbc;)V

    iput-object v0, p0, Landroidx/activity/a;->d:Landroidx/lifecycle/a;

    new-instance v1, LQ9;

    invoke-direct {v1, p0}, LQ9;-><init>(Lyh;)V

    iput-object v1, p0, Landroidx/activity/a;->e:LQ9;

    const/4 v3, 0x0

    iput-object v3, p0, Landroidx/activity/a;->g:Landroidx/activity/b;

    new-instance v4, Lj5;

    invoke-direct {v4, v2}, Lj5;-><init>(Lb1;)V

    iput-object v4, p0, Landroidx/activity/a;->h:Lj5;

    new-instance v5, LQ9;

    new-instance v6, Ld5;

    invoke-direct {v6, v2}, Ld5;-><init>(Lb1;)V

    invoke-direct {v5, v4, v6}, LQ9;-><init>(Lj5;Ld5;)V

    iput-object v5, p0, Landroidx/activity/a;->i:LQ9;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v4, Lg5;

    invoke-direct {v4}, Lg5;-><init>()V

    iput-object v4, p0, Landroidx/activity/a;->j:Lg5;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Landroidx/activity/a;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Landroidx/activity/a;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Landroidx/activity/a;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Landroidx/activity/a;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v4, p0, Landroidx/activity/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v4, v2}, Landroidx/activity/ComponentActivity$2;-><init>(Lb1;)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/a;->a(Lac;)V

    new-instance v4, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v4, v2}, Landroidx/activity/ComponentActivity$3;-><init>(Lb1;)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/a;->a(Lac;)V

    new-instance v4, Landroidx/activity/ComponentActivity$4;

    invoke-direct {v4, v2}, Landroidx/activity/ComponentActivity$4;-><init>(Lb1;)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/a;->a(Lac;)V

    invoke-virtual {v1}, LQ9;->a()V

    iget-object v0, v0, Landroidx/lifecycle/a;->c:LWb;

    sget-object v4, LWb;->b:LWb;

    if-eq v0, v4, :cond_1

    sget-object v4, LWb;->c:LWb;

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, v1, LQ9;->c:Ljava/lang/Object;

    check-cast v0, Lh1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lh1;->f:Ljava/lang/Object;

    check-cast v0, Lsh;

    invoke-virtual {v0}, Lsh;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    move-object v1, v0

    check-cast v1, Loh;

    invoke-virtual {v1}, Loh;->hasNext()Z

    move-result v4

    const-string v5, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Loh;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v4, "components"

    invoke-static {v1, v4}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxh;

    invoke-static {v4, v5}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v1

    :cond_3
    if-nez v3, :cond_4

    new-instance v0, Lth;

    iget-object v1, p0, Landroidx/activity/a;->e:LQ9;

    iget-object v1, v1, LQ9;->c:Ljava/lang/Object;

    check-cast v1, Lh1;

    invoke-direct {v0, v1, p0}, Lth;-><init>(Lh1;Landroidx/activity/a;)V

    iget-object v1, p0, Landroidx/activity/a;->e:LQ9;

    iget-object v1, v1, LQ9;->c:Ljava/lang/Object;

    check-cast v1, Lh1;

    invoke-virtual {v1, v5, v0}, Lh1;->e(Ljava/lang/String;Lxh;)V

    iget-object v1, p0, Landroidx/activity/a;->d:Landroidx/lifecycle/a;

    new-instance v3, Landroidx/lifecycle/SavedStateHandleAttacher;

    invoke-direct {v3, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Lth;)V

    invoke-virtual {v1, v3}, Landroidx/lifecycle/a;->a(Lac;)V

    :cond_4
    iget-object v0, p0, Landroidx/activity/a;->e:LQ9;

    iget-object v0, v0, LQ9;->c:Ljava/lang/Object;

    check-cast v0, Lh1;

    new-instance v1, Le5;

    invoke-direct {v1, v2}, Le5;-><init>(Lb1;)V

    const-string v3, "android:support:activity-result"

    invoke-virtual {v0, v3, v1}, Lh1;->e(Ljava/lang/String;Lxh;)V

    new-instance v0, Lf5;

    invoke-direct {v0, v2}, Lf5;-><init>(Lb1;)V

    invoke-virtual {p0, v0}, Landroidx/activity/a;->f(LQe;)V

    return-void
.end method

.method public static synthetic e(Landroidx/activity/a;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public final a()Lq6;
    .locals 4

    new-instance v0, Lre;

    sget-object v1, Lp6;->b:Lp6;

    invoke-direct {v0, v1}, Lre;-><init>(Lq6;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, v0, Lq6;->a:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    sget-object v1, LT7;->A:LT7;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lfm;->l:LOf;

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lfm;->m:LOf;

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lfm;->n:LOf;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-interface {v2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final b()Lh1;
    .locals 0

    iget-object p0, p0, Landroidx/activity/a;->e:LQ9;

    iget-object p0, p0, LQ9;->c:Ljava/lang/Object;

    check-cast p0, Lh1;

    return-object p0
.end method

.method public final c()Lrn;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/activity/a;->f:Lrn;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li5;

    if-eqz v0, :cond_0

    iget-object v0, v0, Li5;->a:Lrn;

    iput-object v0, p0, Landroidx/activity/a;->f:Lrn;

    :cond_0
    iget-object v0, p0, Landroidx/activity/a;->f:Lrn;

    if-nez v0, :cond_1

    new-instance v0, Lrn;

    invoke-direct {v0}, Lrn;-><init>()V

    iput-object v0, p0, Landroidx/activity/a;->f:Lrn;

    :cond_1
    iget-object p0, p0, Landroidx/activity/a;->f:Lrn;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Landroidx/lifecycle/a;
    .locals 0

    iget-object p0, p0, Landroidx/activity/a;->d:Landroidx/lifecycle/a;

    return-object p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lhn;->a:Ljava/util/WeakHashMap;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lhn;->a:Ljava/util/WeakHashMap;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final f(LQe;)V
    .locals 1

    iget-object p0, p0, Landroidx/activity/a;->b:LL5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LL5;->b:Landroidx/activity/a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, LQe;->a()V

    :cond_0
    iget-object p0, p0, LL5;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final g()Landroidx/activity/b;
    .locals 3

    iget-object v0, p0, Landroidx/activity/a;->g:Landroidx/activity/b;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/activity/b;

    new-instance v1, LJ2;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, LJ2;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroidx/activity/b;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/a;->g:Landroidx/activity/b;

    new-instance v0, Landroidx/activity/ComponentActivity$6;

    invoke-direct {v0, p0}, Landroidx/activity/ComponentActivity$6;-><init>(Landroidx/activity/a;)V

    iget-object v1, p0, Landroidx/activity/a;->d:Landroidx/lifecycle/a;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/a;->a(Lac;)V

    :cond_0
    iget-object p0, p0, Landroidx/activity/a;->g:Landroidx/activity/b;

    return-object p0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, LSg;->a:I

    invoke-static {p0}, LQg;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/a;->a:Landroidx/lifecycle/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "markState"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/lifecycle/a;->g()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/a;->j:Lg5;

    invoke-virtual {v0, p1, p2, p3}, Lg5;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Landroidx/activity/a;->g()Landroidx/activity/b;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/b;->b()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Landroidx/activity/a;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj9;

    invoke-virtual {v0, p1}, Lj9;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/a;->e:LQ9;

    invoke-virtual {v0, p1}, LQ9;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroidx/activity/a;->b:LL5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, LL5;->b:Landroidx/activity/a;

    iget-object v0, v0, LL5;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQe;

    invoke-interface {v1}, LQe;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/activity/a;->h(Landroid/os/Bundle;)V

    sget p1, LSg;->a:I

    invoke-static {p0}, LQg;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    iget-object p0, p0, Landroidx/activity/a;->c:LK1;

    iget-object p0, p0, LK1;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lpi;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p2, 0x0

    if-nez p1, :cond_2

    iget-object p0, p0, Landroidx/activity/a;->c:LK1;

    iget-object p0, p0, LK1;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    return p2

    :cond_1
    invoke-static {p0}, Lpi;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_2
    return p2
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p0, p0, Landroidx/activity/a;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj9;

    new-instance p2, LT7;

    const/16 v0, 0x1a

    invoke-direct {p2, v0}, LT7;-><init>(I)V

    invoke-virtual {p1, p2}, Lj9;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object p0, p0, Landroidx/activity/a;->m:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj9;

    invoke-virtual {v0, p1}, Lj9;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Landroidx/activity/a;->c:LK1;

    iget-object v0, v0, LK1;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    invoke-static {v0}, Lpi;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public final onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p0, p0, Landroidx/activity/a;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj9;

    new-instance p2, LT7;

    const/16 v0, 0x1b

    invoke-direct {p2, v0}, LT7;-><init>(I)V

    invoke-virtual {p1, p2}, Lj9;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    iget-object p0, p0, Landroidx/activity/a;->c:LK1;

    iget-object p0, p0, LK1;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lpi;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Landroidx/activity/a;->j:Lg5;

    invoke-virtual {v2, p1, v1, v0}, Lg5;->a(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/activity/a;->f:Lrn;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5;

    if-eqz p0, :cond_0

    iget-object v0, p0, Li5;->a:Lrn;

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Li5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Li5;->a:Lrn;

    return-object p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/activity/a;->d:Landroidx/lifecycle/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/a;->g()V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/activity/a;->i(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/activity/a;->e:LQ9;

    invoke-virtual {p0, p1}, LQ9;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    iget-object p0, p0, Landroidx/activity/a;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj9;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj9;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reportFullyDrawn()V
    .locals 3

    :try_start_0
    invoke-static {}, Lvf;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reportFullyDrawn() for ComponentActivity"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->reportFullyDrawn()V

    iget-object p0, p0, Landroidx/activity/a;->i:LQ9;

    iget-object v0, p0, LQ9;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, LQ9;->a:Z

    iget-object v1, p0, LQ9;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LS9;

    invoke-interface {v2}, LS9;->d()Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object p0, p0, LQ9;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :goto_2
    :try_start_3
    monitor-exit v0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness",
                "MissingNullability"
            }
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08026b

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08026e

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08026d

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08026c

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0801b9

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/activity/a;->h:Lj5;

    iget-boolean v2, v1, Lj5;->c:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lj5;->c:Z

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method
