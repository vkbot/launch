.class final Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZb;
.implements LM3;


# instance fields
.field public final a:Landroidx/lifecycle/a;

.field public final b:LD9;

.field public c:LOe;

.field public final synthetic d:Landroidx/activity/b;


# direct methods
.method public constructor <init>(Landroidx/activity/b;Landroidx/lifecycle/a;LD9;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "onBackPressedCallback"

    invoke-static {p3, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/b;

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Landroidx/lifecycle/a;

    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:LD9;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/a;->a(Lac;)V

    return-void
.end method


# virtual methods
.method public final b(Lbc;LVb;)V
    .locals 8

    sget-object p1, LVb;->ON_START:LVb;

    if-ne p2, p1, :cond_0

    iget-object v2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->d:Landroidx/activity/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:LD9;

    const-string p2, "onBackPressedCallback"

    invoke-static {p1, p2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, v2, Landroidx/activity/b;->b:LT2;

    invoke-virtual {p2, p1}, LT2;->c(Ljava/lang/Object;)V

    new-instance p2, LOe;

    invoke-direct {p2, v2, p1}, LOe;-><init>(Landroidx/activity/b;LD9;)V

    iget-object v0, p1, LD9;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroidx/activity/b;->d()V

    new-instance v7, LPe;

    const-class v3, Landroidx/activity/b;

    const-string v4, "updateEnabledCallbacks"

    const/4 v1, 0x0

    const-string v5, "updateEnabledCallbacks()V"

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LPe;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v7, p1, LD9;->c:Lra;

    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:LOe;

    goto :goto_0

    :cond_0
    sget-object p1, LVb;->ON_STOP:LVb;

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:LOe;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, LOe;->cancel()V

    goto :goto_0

    :cond_1
    sget-object p1, LVb;->ON_DESTROY:LVb;

    if-ne p2, p1, :cond_2

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->cancel()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->a:Landroidx/lifecycle/a;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/a;->f(Lac;)V

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->b:LD9;

    iget-object v0, v0, LD9;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:LOe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LOe;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->c:LOe;

    return-void
.end method
