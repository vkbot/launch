.class public final Landroidx/activity/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:LT2;

.field public c:LD9;

.field public final d:Landroid/window/OnBackInvokedCallback;

.field public e:Landroid/window/OnBackInvokedDispatcher;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/b;->a:Ljava/lang/Runnable;

    new-instance p1, LT2;

    invoke-direct {p1}, LT2;-><init>()V

    iput-object p1, p0, Landroidx/activity/b;->b:LT2;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    sget-object p1, LNe;->a:LNe;

    new-instance v0, LJe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LJe;-><init>(Landroidx/activity/b;I)V

    new-instance v1, LJe;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, LJe;-><init>(Landroidx/activity/b;I)V

    new-instance v2, LKe;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, LKe;-><init>(Landroidx/activity/b;I)V

    new-instance v3, LKe;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, LKe;-><init>(Landroidx/activity/b;I)V

    invoke-virtual {p1, v0, v1, v2, v3}, LNe;->a(Lda;Lda;LS9;LS9;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, LLe;->a:LLe;

    new-instance v0, LKe;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LKe;-><init>(Landroidx/activity/b;I)V

    invoke-virtual {p1, v0}, LLe;->a(LS9;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/activity/b;->d:Landroid/window/OnBackInvokedCallback;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lbc;LD9;)V
    .locals 8

    const-string v0, "onBackPressedCallback"

    invoke-static {p2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lbc;->d()Landroidx/lifecycle/a;

    move-result-object p1

    iget-object v0, p1, Landroidx/lifecycle/a;->c:LWb;

    sget-object v1, LWb;->a:LWb;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/b;Landroidx/lifecycle/a;LD9;)V

    iget-object p1, p2, LD9;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/activity/b;->d()V

    new-instance p1, LPe;

    const/4 v2, 0x0

    const-string v6, "updateEnabledCallbacks()V"

    const-class v4, Landroidx/activity/b;

    const-string v5, "updateEnabledCallbacks"

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v7}, LPe;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p1, p2, LD9;->c:Lra;

    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Landroidx/activity/b;->b:LT2;

    invoke-virtual {v0}, LT2;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, LD9;

    iget-boolean v3, v3, LD9;->a:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, LD9;

    iput-object v2, p0, Landroidx/activity/b;->c:LD9;

    if-eqz v1, :cond_3

    const/4 p0, 0x1

    iget-object v0, v1, LD9;->d:LJ9;

    invoke-virtual {v0, p0}, LJ9;->x(Z)Z

    iget-object p0, v0, LJ9;->h:LD9;

    iget-boolean p0, p0, LD9;->a:Z

    if-eqz p0, :cond_2

    invoke-virtual {v0}, LJ9;->J()Z

    goto :goto_1

    :cond_2
    iget-object p0, v0, LJ9;->g:Landroidx/activity/b;

    invoke-virtual {p0}, Landroidx/activity/b;->b()V

    :goto_1
    return-void

    :cond_3
    iget-object p0, p0, Landroidx/activity/b;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final c(Z)V
    .locals 5

    iget-object v0, p0, Landroidx/activity/b;->e:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, p0, Landroidx/activity/b;->d:Landroid/window/OnBackInvokedCallback;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    sget-object v2, LLe;->a:LLe;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-boolean v4, p0, Landroidx/activity/b;->f:Z

    if-nez v4, :cond_0

    invoke-virtual {v2, v0, v3, v1}, LLe;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/activity/b;->f:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/activity/b;->f:Z

    if-eqz p1, :cond_1

    invoke-virtual {v2, v0, v1}, LLe;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v3, p0, Landroidx/activity/b;->f:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 4

    iget-boolean v0, p0, Landroidx/activity/b;->g:Z

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/activity/b;->b:LT2;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, LT2;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LD9;

    iget-boolean v3, v3, LD9;->a:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroidx/activity/b;->g:Z

    if-eq v1, v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v0, v2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/activity/b;->c(Z)V

    :cond_3
    return-void
.end method
