.class public final Landroidx/lifecycle/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public b:LW8;

.field public c:LWb;

.field public final d:Ljava/lang/ref/WeakReference;

.field public e:I

.field public f:Z

.field public g:Z

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lbc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/a;->a:Z

    new-instance v0, LW8;

    invoke-direct {v0}, LW8;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/a;->b:LW8;

    sget-object v0, LWb;->b:LWb;

    iput-object v0, p0, Landroidx/lifecycle/a;->c:LWb;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/a;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Lac;)V
    .locals 9

    iget-object v0, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "addObserver"

    invoke-virtual {p0, v3}, Landroidx/lifecycle/a;->c(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/lifecycle/a;->c:LWb;

    sget-object v4, LWb;->a:LWb;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, LWb;->b:LWb;

    :goto_0
    new-instance v3, Lcc;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sget-object v5, Ldc;->a:Ljava/util/HashMap;

    instance-of v5, p1, LZb;

    instance-of v6, p1, LR6;

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    new-instance v5, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    move-object v6, p1

    check-cast v6, LR6;

    move-object v8, p1

    check-cast v8, LZb;

    invoke-direct {v5, v6, v8}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(LR6;LZb;)V

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    new-instance v5, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    move-object v6, p1

    check-cast v6, LR6;

    invoke-direct {v5, v6, v1}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(LR6;LZb;)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    move-object v5, p1

    check-cast v5, LZb;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Ldc;->b(Ljava/lang/Class;)I

    move-result v6

    const/4 v8, 0x2

    if-ne v6, v8, :cond_6

    sget-object v6, Ldc;->b:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lnb;->o(Ljava/lang/Object;)V

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eq v6, v2, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v8, v6, [Lva;

    if-gtz v6, :cond_4

    new-instance v5, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    invoke-direct {v5, v8}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Lva;)V

    goto :goto_1

    :cond_4
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-static {p0, p1}, Ldc;->a(Ljava/lang/reflect/Constructor;Lac;)V

    throw v1

    :cond_5
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-static {p0, p1}, Ldc;->a(Ljava/lang/reflect/Constructor;Lac;)V

    throw v1

    :cond_6
    new-instance v5, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v5, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Lac;)V

    :goto_1
    iput-object v5, v3, Lcc;->b:LZb;

    iput-object v4, v3, Lcc;->a:LWb;

    iget-object v4, p0, Landroidx/lifecycle/a;->b:LW8;

    invoke-virtual {v4, p1}, LW8;->a(Ljava/lang/Object;)Lph;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v1, v5, Lph;->b:Ljava/lang/Object;

    goto :goto_3

    :cond_7
    iget-object v5, v4, LW8;->e:Ljava/util/HashMap;

    new-instance v6, Lph;

    invoke-direct {v6, p1, v3}, Lph;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v8, v4, Lsh;->d:I

    add-int/2addr v8, v2

    iput v8, v4, Lsh;->d:I

    iget-object v8, v4, Lsh;->b:Lph;

    if-nez v8, :cond_8

    iput-object v6, v4, Lsh;->a:Lph;

    iput-object v6, v4, Lsh;->b:Lph;

    goto :goto_2

    :cond_8
    iput-object v6, v8, Lph;->c:Lph;

    iput-object v8, v6, Lph;->d:Lph;

    iput-object v6, v4, Lsh;->b:Lph;

    :goto_2
    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    check-cast v1, Lcc;

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iget-object v1, p0, Landroidx/lifecycle/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbc;

    if-nez v1, :cond_a

    return-void

    :cond_a
    iget v4, p0, Landroidx/lifecycle/a;->e:I

    if-nez v4, :cond_b

    iget-boolean v4, p0, Landroidx/lifecycle/a;->f:Z

    if-eqz v4, :cond_c

    :cond_b
    move v7, v2

    :cond_c
    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->b(Lac;)LWb;

    move-result-object v4

    iget v5, p0, Landroidx/lifecycle/a;->e:I

    add-int/2addr v5, v2

    iput v5, p0, Landroidx/lifecycle/a;->e:I

    :goto_4
    iget-object v5, v3, Lcc;->a:LWb;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_e

    iget-object v4, p0, Landroidx/lifecycle/a;->b:LW8;

    iget-object v4, v4, LW8;->e:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v3, Lcc;->a:LWb;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, LVb;->Companion:LTb;

    iget-object v5, v3, Lcc;->a:LWb;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, LTb;->a(LWb;)LVb;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {v3, v1, v4}, Lcc;->a(Lbc;LVb;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->b(Lac;)LWb;

    move-result-object v4

    goto :goto_4

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "no event up from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v3, Lcc;->a:LWb;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    if-nez v7, :cond_f

    invoke-virtual {p0}, Landroidx/lifecycle/a;->h()V

    :cond_f
    iget p1, p0, Landroidx/lifecycle/a;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/a;->e:I

    return-void
.end method

.method public final b(Lac;)LWb;
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/a;->b:LW8;

    iget-object v0, v0, LW8;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lph;

    iget-object p1, p1, Lph;->d:Lph;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, Lph;->b:Ljava/lang/Object;

    check-cast p1, Lcc;

    iget-object p1, p1, Lcc;->a:LWb;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LWb;

    :cond_2
    iget-object p0, p0, Landroidx/lifecycle/a;->c:LWb;

    const-string v0, "state1"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, p0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gez p0, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, p1

    :goto_3
    return-object v2
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-boolean p0, p0, Landroidx/lifecycle/a;->a:Z

    if-eqz p0, :cond_1

    invoke-static {}, LS2;->H()LS2;

    move-result-object p0

    iget-object p0, p0, LS2;->a:Ljava/lang/Object;

    check-cast p0, LS2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Method "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must be called on the main thread"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(LVb;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, LVb;->a()LWb;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a;->e(LWb;)V

    return-void
.end method

.method public final e(LWb;)V
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/a;->c:LWb;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v1, LWb;->b:LWb;

    sget-object v2, LWb;->a:LWb;

    if-ne v0, v1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "no event down from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/a;->c:LWb;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/lifecycle/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/a;->c:LWb;

    iget-boolean p1, p0, Landroidx/lifecycle/a;->f:Z

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/lifecycle/a;->e:I

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Landroidx/lifecycle/a;->f:Z

    invoke-virtual {p0}, Landroidx/lifecycle/a;->h()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/a;->f:Z

    iget-object p1, p0, Landroidx/lifecycle/a;->c:LWb;

    if-ne p1, v2, :cond_4

    new-instance p1, LW8;

    invoke-direct {p1}, LW8;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/a;->b:LW8;

    :cond_4
    return-void

    :cond_5
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/a;->g:Z

    return-void
.end method

.method public final f(Lac;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->c(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/a;->b:LW8;

    invoke-virtual {p0, p1}, LW8;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g()V
    .locals 2

    sget-object v0, LWb;->c:LWb;

    const-string v1, "setCurrentState"

    invoke-virtual {p0, v1}, Landroidx/lifecycle/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->e(LWb;)V

    return-void
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, Landroidx/lifecycle/a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbc;

    if-eqz v0, :cond_b

    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/a;->b:LW8;

    iget v2, v1, Lsh;->d:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lsh;->a:Lph;

    invoke-static {v1}, Lnb;->o(Ljava/lang/Object;)V

    iget-object v1, v1, Lph;->b:Ljava/lang/Object;

    check-cast v1, Lcc;

    iget-object v1, v1, Lcc;->a:LWb;

    iget-object v2, p0, Landroidx/lifecycle/a;->b:LW8;

    iget-object v2, v2, Lsh;->b:Lph;

    invoke-static {v2}, Lnb;->o(Ljava/lang/Object;)V

    iget-object v2, v2, Lph;->b:Ljava/lang/Object;

    check-cast v2, Lcc;

    iget-object v2, v2, Lcc;->a:LWb;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroidx/lifecycle/a;->c:LWb;

    if-ne v1, v2, :cond_2

    :goto_0
    iput-boolean v3, p0, Landroidx/lifecycle/a;->g:Z

    return-void

    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/a;->g:Z

    iget-object v1, p0, Landroidx/lifecycle/a;->c:LWb;

    iget-object v2, p0, Landroidx/lifecycle/a;->b:LW8;

    iget-object v2, v2, Lsh;->a:Lph;

    invoke-static {v2}, Lnb;->o(Ljava/lang/Object;)V

    iget-object v2, v2, Lph;->b:Ljava/lang/Object;

    check-cast v2, Lcc;

    iget-object v2, v2, Lcc;->a:LWb;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_8

    iget-object v1, p0, Landroidx/lifecycle/a;->b:LW8;

    new-instance v2, Loh;

    iget-object v3, v1, Lsh;->b:Lph;

    iget-object v4, v1, Lsh;->a:Lph;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Loh;-><init>(Lph;Lph;I)V

    iget-object v1, v1, Lsh;->c:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Loh;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroidx/lifecycle/a;->g:Z

    if-nez v1, :cond_8

    invoke-virtual {v2}, Loh;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v3, "next()"

    invoke-static {v1, v3}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lac;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc;

    :goto_1
    iget-object v4, v1, Lcc;->a:LWb;

    iget-object v5, p0, Landroidx/lifecycle/a;->c:LWb;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v4, p0, Landroidx/lifecycle/a;->g:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Landroidx/lifecycle/a;->b:LW8;

    iget-object v4, v4, LW8;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, LVb;->Companion:LTb;

    iget-object v5, v1, Lcc;->a:LWb;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "state"

    invoke-static {v5, v4}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    :cond_4
    sget-object v4, LVb;->ON_PAUSE:LVb;

    goto :goto_2

    :cond_5
    sget-object v4, LVb;->ON_STOP:LVb;

    goto :goto_2

    :cond_6
    sget-object v4, LVb;->ON_DESTROY:LVb;

    :goto_2
    if-eqz v4, :cond_7

    invoke-virtual {v4}, LVb;->a()LWb;

    move-result-object v5

    iget-object v6, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0, v4}, Lcc;->a(Lbc;LVb;)V

    iget-object v4, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "no event down from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcc;->a:LWb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object v1, p0, Landroidx/lifecycle/a;->b:LW8;

    iget-object v1, v1, Lsh;->b:Lph;

    iget-boolean v2, p0, Landroidx/lifecycle/a;->g:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/a;->c:LWb;

    iget-object v1, v1, Lph;->b:Ljava/lang/Object;

    check-cast v1, Lcc;

    iget-object v1, v1, Lcc;->a:LWb;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroidx/lifecycle/a;->b:LW8;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lqh;

    invoke-direct {v2, v1}, Lqh;-><init>(Lsh;)V

    iget-object v1, v1, Lsh;->c:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {v2}, Lqh;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/lifecycle/a;->g:Z

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lqh;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lac;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcc;

    :goto_3
    iget-object v4, v1, Lcc;->a:LWb;

    iget-object v5, p0, Landroidx/lifecycle/a;->c:LWb;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_9

    iget-boolean v4, p0, Landroidx/lifecycle/a;->g:Z

    if-nez v4, :cond_9

    iget-object v4, p0, Landroidx/lifecycle/a;->b:LW8;

    iget-object v4, v4, LW8;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcc;->a:LWb;

    iget-object v5, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, LVb;->Companion:LTb;

    iget-object v5, v1, Lcc;->a:LWb;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, LTb;->a(LWb;)LVb;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v1, v0, v4}, Lcc;->a(Lbc;LVb;)V

    iget-object v4, p0, Landroidx/lifecycle/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "no event up from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcc;->a:LWb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
