.class public final Landroidx/fragment/app/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LK1;

.field public final b:Lt2;

.field public final c:Lx9;

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(LK1;Lt2;Ljava/lang/ClassLoader;LE9;LN9;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/a;->d:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Landroidx/fragment/app/a;->e:I

    .line 10
    iput-object p1, p0, Landroidx/fragment/app/a;->a:LK1;

    .line 11
    iput-object p2, p0, Landroidx/fragment/app/a;->b:Lt2;

    .line 12
    iget-object p1, p5, LN9;->a:Ljava/lang/String;

    invoke-virtual {p4, p1}, LE9;->a(Ljava/lang/String;)Lx9;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/a;->c:Lx9;

    .line 13
    iget-object p0, p5, LN9;->j:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 15
    :cond_0
    invoke-virtual {p1, p0}, Lx9;->A(Landroid/os/Bundle;)V

    .line 16
    iget-object p0, p5, LN9;->b:Ljava/lang/String;

    iput-object p0, p1, Lx9;->e:Ljava/lang/String;

    .line 17
    iget-boolean p0, p5, LN9;->c:Z

    iput-boolean p0, p1, Lx9;->m:Z

    const/4 p0, 0x1

    .line 18
    iput-boolean p0, p1, Lx9;->o:Z

    .line 19
    iget p0, p5, LN9;->d:I

    iput p0, p1, Lx9;->v:I

    .line 20
    iget p0, p5, LN9;->e:I

    iput p0, p1, Lx9;->w:I

    .line 21
    iget-object p0, p5, LN9;->f:Ljava/lang/String;

    iput-object p0, p1, Lx9;->x:Ljava/lang/String;

    .line 22
    iget-boolean p0, p5, LN9;->g:Z

    iput-boolean p0, p1, Lx9;->A:Z

    .line 23
    iget-boolean p0, p5, LN9;->h:Z

    iput-boolean p0, p1, Lx9;->l:Z

    .line 24
    iget-boolean p0, p5, LN9;->i:Z

    iput-boolean p0, p1, Lx9;->z:Z

    .line 25
    iget-boolean p0, p5, LN9;->k:Z

    iput-boolean p0, p1, Lx9;->y:Z

    .line 26
    invoke-static {}, LWb;->values()[LWb;

    move-result-object p0

    iget p2, p5, LN9;->l:I

    aget-object p0, p0, p2

    iput-object p0, p1, Lx9;->K:LWb;

    .line 27
    iget-object p0, p5, LN9;->m:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 28
    iput-object p0, p1, Lx9;->b:Landroid/os/Bundle;

    goto :goto_0

    .line 29
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iput-object p0, p1, Lx9;->b:Landroid/os/Bundle;

    :goto_0
    const/4 p0, 0x2

    .line 30
    const-string p2, "FragmentManager"

    invoke-static {p2, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 31
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Instantiated fragment "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public constructor <init>(LK1;Lt2;Lx9;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/a;->d:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/fragment/app/a;->e:I

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/a;->a:LK1;

    .line 5
    iput-object p2, p0, Landroidx/fragment/app/a;->b:Lt2;

    .line 6
    iput-object p3, p0, Landroidx/fragment/app/a;->c:Lx9;

    return-void
.end method

.method public constructor <init>(LK1;Lt2;Lx9;LN9;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Landroidx/fragment/app/a;->d:Z

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Landroidx/fragment/app/a;->e:I

    .line 35
    iput-object p1, p0, Landroidx/fragment/app/a;->a:LK1;

    .line 36
    iput-object p2, p0, Landroidx/fragment/app/a;->b:Lt2;

    .line 37
    iput-object p3, p0, Landroidx/fragment/app/a;->c:Lx9;

    const/4 p0, 0x0

    .line 38
    iput-object p0, p3, Lx9;->c:Landroid/util/SparseArray;

    .line 39
    iput-object p0, p3, Lx9;->d:Landroid/os/Bundle;

    .line 40
    iput v0, p3, Lx9;->q:I

    .line 41
    iput-boolean v0, p3, Lx9;->n:Z

    .line 42
    iput-boolean v0, p3, Lx9;->k:Z

    .line 43
    iget-object p1, p3, Lx9;->g:Lx9;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lx9;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p3, Lx9;->h:Ljava/lang/String;

    .line 44
    iput-object p0, p3, Lx9;->g:Lx9;

    .line 45
    iget-object p0, p4, LN9;->m:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    .line 46
    iput-object p0, p3, Lx9;->b:Landroid/os/Bundle;

    goto :goto_1

    .line 47
    :cond_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iput-object p0, p3, Lx9;->b:Landroid/os/Bundle;

    :goto_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    const-string v0, "FragmentManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    iget-object v3, p0, Landroidx/fragment/app/a;->c:Lx9;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "moveto ACTIVITY_CREATED: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, v3, Lx9;->b:Landroid/os/Bundle;

    iget-object v2, v3, Lx9;->t:LJ9;

    invoke-virtual {v2}, LJ9;->I()V

    iput v1, v3, Lx9;->a:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Lx9;->C:Z

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveto RESTORE_VIEW_STATE: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, v3, Lx9;->E:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v4, v3, Lx9;->b:Landroid/os/Bundle;

    iget-object v5, v3, Lx9;->c:Landroid/util/SparseArray;

    if-eqz v5, :cond_2

    invoke-virtual {v0, v5}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v2, v3, Lx9;->c:Landroid/util/SparseArray;

    :cond_2
    iget-object v0, v3, Lx9;->E:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, v3, Lx9;->M:LP9;

    iget-object v5, v3, Lx9;->d:Landroid/os/Bundle;

    iget-object v0, v0, LP9;->c:LQ9;

    invoke-virtual {v0, v5}, LQ9;->b(Landroid/os/Bundle;)V

    iput-object v2, v3, Lx9;->d:Landroid/os/Bundle;

    :cond_3
    iput-boolean v1, v3, Lx9;->C:Z

    invoke-virtual {v3, v4}, Lx9;->u(Landroid/os/Bundle;)V

    iget-boolean v0, v3, Lx9;->C:Z

    if-eqz v0, :cond_4

    iget-object v0, v3, Lx9;->E:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, v3, Lx9;->M:LP9;

    sget-object v4, LVb;->ON_CREATE:LVb;

    invoke-virtual {v0, v4}, LP9;->e(LVb;)V

    goto :goto_0

    :cond_4
    new-instance p0, LWi;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_0
    iput-object v2, v3, Lx9;->b:Landroid/os/Bundle;

    iget-object v0, v3, Lx9;->t:LJ9;

    iput-boolean v1, v0, LJ9;->y:Z

    iput-boolean v1, v0, LJ9;->z:Z

    iget-object v2, v0, LJ9;->F:LL9;

    iput-boolean v1, v2, LL9;->h:Z

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, LJ9;->s(I)V

    iget-object p0, p0, Landroidx/fragment/app/a;->a:LK1;

    invoke-virtual {p0, v1}, LK1;->f(Z)V

    return-void
.end method

.method public final b()V
    .locals 7

    iget-object v0, p0, Landroidx/fragment/app/a;->b:Lt2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lx9;

    iget-object v1, p0, Lx9;->D:Landroid/view/ViewGroup;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lt2;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_0
    if-ltz v4, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx9;

    iget-object v6, v5, Lx9;->D:Landroid/view/ViewGroup;

    if-ne v6, v1, :cond_1

    iget-object v5, v5, Lx9;->E:Landroid/view/View;

    if-eqz v5, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lx9;

    iget-object v5, v4, Lx9;->D:Landroid/view/ViewGroup;

    if-ne v5, v1, :cond_3

    iget-object v4, v4, Lx9;->E:Landroid/view/View;

    if-eqz v4, :cond_3

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lx9;->D:Landroid/view/ViewGroup;

    iget-object p0, p0, Lx9;->E:Landroid/view/View;

    invoke-virtual {v0, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final c()V
    .locals 7

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/a;->c:Lx9;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto ATTACHED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Lx9;->g:Lx9;

    const-string v1, " that does not belong to this FragmentManager!"

    const-string v3, " declared target fragment "

    iget-object v4, p0, Landroidx/fragment/app/a;->b:Lt2;

    const/4 v5, 0x0

    const-string v6, "Fragment "

    if-eqz v0, :cond_2

    iget-object v0, v0, Lx9;->e:Ljava/lang/String;

    iget-object v4, v4, Lt2;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/a;

    if-eqz v0, :cond_1

    iget-object v1, v2, Lx9;->g:Lx9;

    iget-object v1, v1, Lx9;->e:Ljava/lang/String;

    iput-object v1, v2, Lx9;->h:Ljava/lang/String;

    iput-object v5, v2, Lx9;->g:Lx9;

    move-object v5, v0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lx9;->g:Lx9;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, v2, Lx9;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v4, v4, Lt2;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/fragment/app/a;

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lx9;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroidx/fragment/app/a;->k()V

    :cond_5
    iget-object v0, v2, Lx9;->r:LJ9;

    iget-object v1, v0, LJ9;->n:Ly9;

    iput-object v1, v2, Lx9;->s:Ly9;

    iget-object v0, v0, LJ9;->p:Lx9;

    iput-object v0, v2, Lx9;->u:Lx9;

    iget-object p0, p0, Landroidx/fragment/app/a;->a:LK1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LK1;->m(Z)V

    iget-object v1, v2, Lx9;->P:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v2, Lx9;->t:LJ9;

    iget-object v3, v2, Lx9;->s:Ly9;

    invoke-virtual {v2}, Lx9;->e()Lnb;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, LJ9;->b(Ly9;Lnb;Lx9;)V

    iput v0, v2, Lx9;->a:I

    iput-boolean v0, v2, Lx9;->C:Z

    iget-object v1, v2, Lx9;->s:Ly9;

    iget-object v1, v1, Ly9;->s:Lb1;

    invoke-virtual {v2, v1}, Lx9;->l(Lb1;)V

    iget-boolean v1, v2, Lx9;->C:Z

    if-eqz v1, :cond_7

    iget-object v1, v2, Lx9;->r:LJ9;

    iget-object v1, v1, LJ9;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LM9;

    invoke-interface {v3}, LM9;->a()V

    goto :goto_1

    :cond_6
    iget-object v1, v2, Lx9;->t:LJ9;

    iput-boolean v0, v1, LJ9;->y:Z

    iput-boolean v0, v1, LJ9;->z:Z

    iget-object v2, v1, LJ9;->F:LL9;

    iput-boolean v0, v2, LL9;->h:Z

    invoke-virtual {v1, v0}, LJ9;->s(I)V

    invoke-virtual {p0, v0}, LK1;->g(Z)V

    return-void

    :cond_7
    new-instance p0, LWi;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onAttach()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-static {v3}, Lpi;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0
.end method

.method public final d()I
    .locals 11

    iget-object v0, p0, Landroidx/fragment/app/a;->c:Lx9;

    iget-object v1, v0, Lx9;->r:LJ9;

    if-nez v1, :cond_0

    iget p0, v0, Lx9;->a:I

    return p0

    :cond_0
    iget v1, p0, Landroidx/fragment/app/a;->e:I

    iget-object v2, v0, Lx9;->K:LWb;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, -0x1

    const/4 v9, 0x4

    if-eq v2, v3, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v9, :cond_4

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_0
    iget-boolean v2, v0, Lx9;->m:Z

    if-eqz v2, :cond_7

    iget-boolean v2, v0, Lx9;->n:Z

    if-eqz v2, :cond_5

    iget p0, p0, Landroidx/fragment/app/a;->e:I

    invoke-static {p0, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object p0, v0, Lx9;->E:Landroid/view/View;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-nez p0, :cond_7

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_5
    iget p0, p0, Landroidx/fragment/app/a;->e:I

    if-ge p0, v9, :cond_6

    iget p0, v0, Lx9;->a:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_7
    :goto_1
    iget-boolean p0, v0, Lx9;->k:Z

    if-nez p0, :cond_8

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_8
    iget-object p0, v0, Lx9;->D:Landroid/view/ViewGroup;

    if-eqz p0, :cond_d

    invoke-virtual {v0}, Lx9;->j()LJ9;

    move-result-object v2

    invoke-virtual {v2}, LJ9;->C()LT7;

    move-result-object v2

    invoke-static {p0, v2}, LZ6;->f(Landroid/view/ViewGroup;LT7;)LZ6;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, LZ6;->d(Lx9;)Lvi;

    move-result-object v2

    if-eqz v2, :cond_9

    iget v6, v2, Lvi;->b:I

    :cond_9
    iget-object p0, p0, LZ6;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvi;

    iget-object v10, v2, Lvi;->c:Lx9;

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-boolean v10, v2, Lvi;->f:Z

    if-nez v10, :cond_a

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_d

    if-eqz v6, :cond_c

    if-ne v6, v3, :cond_d

    :cond_c
    iget p0, v2, Lvi;->b:I

    move v6, p0

    :cond_d
    if-ne v6, v4, :cond_e

    const/4 p0, 0x6

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_e
    if-ne v6, v5, :cond_f

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3

    :cond_f
    iget-boolean p0, v0, Lx9;->l:Z

    if-eqz p0, :cond_11

    iget p0, v0, Lx9;->q:I

    if-lez p0, :cond_10

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_3

    :cond_10
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_11
    :goto_3
    iget-boolean p0, v0, Lx9;->F:Z

    if-eqz p0, :cond_12

    iget p0, v0, Lx9;->a:I

    if-ge p0, v7, :cond_12

    invoke-static {v1, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_12
    const-string p0, "FragmentManager"

    invoke-static {p0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "computeExpectedState() of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v1
.end method

.method public final e()V
    .locals 6

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/a;->c:Lx9;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto CREATED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v2, Lx9;->J:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/a;->a:LK1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LK1;->n(Z)V

    iget-object v3, v2, Lx9;->b:Landroid/os/Bundle;

    iget-object v4, v2, Lx9;->t:LJ9;

    invoke-virtual {v4}, LJ9;->I()V

    iput v1, v2, Lx9;->a:I

    iput-boolean v0, v2, Lx9;->C:Z

    iget-object v4, v2, Lx9;->L:Landroidx/lifecycle/a;

    new-instance v5, Landroidx/fragment/app/Fragment$5;

    invoke-direct {v5, v2}, Landroidx/fragment/app/Fragment$5;-><init>(Lx9;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/a;->a(Lac;)V

    iget-object v4, v2, Lx9;->O:LQ9;

    invoke-virtual {v4, v3}, LQ9;->b(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lx9;->m(Landroid/os/Bundle;)V

    iput-boolean v1, v2, Lx9;->J:Z

    iget-boolean v1, v2, Lx9;->C:Z

    if-eqz v1, :cond_1

    iget-object v1, v2, Lx9;->L:Landroidx/lifecycle/a;

    sget-object v2, LVb;->ON_CREATE:LVb;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/a;->d(LVb;)V

    invoke-virtual {p0, v0}, LK1;->h(Z)V

    goto :goto_0

    :cond_1
    new-instance p0, LWi;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v2, Lx9;->b:Landroid/os/Bundle;

    invoke-virtual {v2, p0}, Lx9;->y(Landroid/os/Bundle;)V

    iput v1, v2, Lx9;->a:I

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 7

    const/4 v0, 0x2

    iget-object v1, p0, Landroidx/fragment/app/a;->c:Lx9;

    iget-boolean v2, v1, Lx9;->m:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x3

    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "moveto CREATE_VIEW: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v1, Lx9;->b:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lx9;->q(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v4, v1, Lx9;->D:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget v4, v1, Lx9;->w:I

    if-eqz v4, :cond_5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    iget-object v5, v1, Lx9;->r:LJ9;

    iget-object v5, v5, LJ9;->o:Lnb;

    invoke-virtual {v5, v4}, Lnb;->R(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-nez v4, :cond_6

    iget-boolean v5, v1, Lx9;->o:Z

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-virtual {v1}, Lx9;->w()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v0, v1, Lx9;->w:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "unknown"

    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No view found for id 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lx9;->w:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") for fragment "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create fragment "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for a container view with no id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_1
    iput-object v4, v1, Lx9;->D:Landroid/view/ViewGroup;

    iget-object v5, v1, Lx9;->b:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v4, v5}, Lx9;->v(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v2, v1, Lx9;->E:Landroid/view/View;

    if-eqz v2, :cond_b

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v2, v1, Lx9;->E:Landroid/view/View;

    const v6, 0x7f0800f3

    invoke-virtual {v2, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/a;->b()V

    :cond_7
    iget-boolean v2, v1, Lx9;->y:Z

    if-eqz v2, :cond_8

    iget-object v2, v1, Lx9;->E:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    iget-object v2, v1, Lx9;->E:Landroid/view/View;

    sget-object v4, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v2}, LUm;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Lx9;->E:Landroid/view/View;

    invoke-static {v2}, LVm;->c(Landroid/view/View;)V

    goto :goto_2

    :cond_9
    iget-object v2, v1, Lx9;->E:Landroid/view/View;

    new-instance v4, LV3;

    invoke-direct {v4, v0, v2}, LV3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_2
    iget-object v2, v1, Lx9;->t:LJ9;

    invoke-virtual {v2, v0}, LJ9;->s(I)V

    iget-object p0, p0, Landroidx/fragment/app/a;->a:LK1;

    invoke-virtual {p0, v5}, LK1;->s(Z)V

    iget-object p0, v1, Lx9;->E:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    iget-object v2, v1, Lx9;->E:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1}, Lx9;->f()Lw9;

    move-result-object v4

    iput v2, v4, Lw9;->j:F

    iget-object v2, v1, Lx9;->D:Landroid/view/ViewGroup;

    if-eqz v2, :cond_b

    if-nez p0, :cond_b

    iget-object p0, v1, Lx9;->E:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {v1}, Lx9;->f()Lw9;

    move-result-object v2

    iput-object p0, v2, Lw9;->k:Landroid/view/View;

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "requestFocus: Saved focused view "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for Fragment "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object p0, v1, Lx9;->E:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    iput v0, v1, Lx9;->a:I

    return-void
.end method

.method public final g()V
    .locals 10

    const-string v0, "FragmentManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    iget-object v3, p0, Landroidx/fragment/app/a;->c:Lx9;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "movefrom CREATED: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v2, v3, Lx9;->l:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iget v2, v3, Lx9;->q:I

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v5

    :goto_1
    iget-object v6, p0, Landroidx/fragment/app/a;->b:Lt2;

    if-nez v2, :cond_7

    iget-object v7, v6, Lt2;->c:Ljava/lang/Object;

    check-cast v7, LL9;

    iget-object v8, v7, LL9;->c:Ljava/util/HashMap;

    iget-object v9, v3, Lx9;->e:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    move v7, v4

    goto :goto_2

    :cond_4
    iget-boolean v8, v7, LL9;->f:Z

    if-eqz v8, :cond_3

    iget-boolean v7, v7, LL9;->g:Z

    :goto_2
    if-eqz v7, :cond_5

    goto :goto_3

    :cond_5
    iget-object p0, v3, Lx9;->h:Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-virtual {v6, p0}, Lt2;->d(Ljava/lang/String;)Lx9;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-boolean v0, p0, Lx9;->A:Z

    if-eqz v0, :cond_6

    iput-object p0, v3, Lx9;->g:Lx9;

    :cond_6
    iput v5, v3, Lx9;->a:I

    goto/16 :goto_6

    :cond_7
    :goto_3
    iget-object v7, v3, Lx9;->s:Ly9;

    if-eqz v7, :cond_8

    iget-object v7, v6, Lt2;->c:Ljava/lang/Object;

    check-cast v7, LL9;

    iget-boolean v7, v7, LL9;->g:Z

    goto :goto_4

    :cond_8
    iget-object v7, v7, Ly9;->s:Lb1;

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v7

    xor-int/2addr v7, v4

    goto :goto_4

    :cond_9
    move v7, v4

    :goto_4
    if-nez v2, :cond_a

    if-eqz v7, :cond_d

    :cond_a
    iget-object v2, v6, Lt2;->c:Ljava/lang/Object;

    check-cast v2, LL9;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Clearing non-config state for "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, v2, LL9;->d:Ljava/util/HashMap;

    iget-object v1, v3, Lx9;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL9;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, LL9;->a()V

    iget-object v1, v3, Lx9;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v0, v2, LL9;->e:Ljava/util/HashMap;

    iget-object v1, v3, Lx9;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrn;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lrn;->a()V

    iget-object v1, v3, Lx9;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object v0, v3, Lx9;->t:LJ9;

    invoke-virtual {v0}, LJ9;->k()V

    iget-object v0, v3, Lx9;->L:Landroidx/lifecycle/a;

    sget-object v1, LVb;->ON_DESTROY:LVb;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->d(LVb;)V

    iput v5, v3, Lx9;->a:I

    iput-boolean v5, v3, Lx9;->J:Z

    iput-boolean v4, v3, Lx9;->C:Z

    iget-object v0, p0, Landroidx/fragment/app/a;->a:LK1;

    invoke-virtual {v0, v5}, LK1;->i(Z)V

    invoke-virtual {v6}, Lt2;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/a;

    if-eqz v1, :cond_e

    iget-object v2, v3, Lx9;->e:Ljava/lang/String;

    iget-object v1, v1, Landroidx/fragment/app/a;->c:Lx9;

    iget-object v4, v1, Lx9;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iput-object v3, v1, Lx9;->g:Lx9;

    const/4 v2, 0x0

    iput-object v2, v1, Lx9;->h:Ljava/lang/String;

    goto :goto_5

    :cond_f
    iget-object v0, v3, Lx9;->h:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v6, v0}, Lt2;->d(Ljava/lang/String;)Lx9;

    move-result-object v0

    iput-object v0, v3, Lx9;->g:Lx9;

    :cond_10
    invoke-virtual {v6, p0}, Lt2;->o(Landroidx/fragment/app/a;)V

    :goto_6
    return-void
.end method

.method public final h()V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/a;->c:Lx9;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "movefrom CREATE_VIEW: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Lx9;->D:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, v2, Lx9;->E:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, v2, Lx9;->t:LJ9;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LJ9;->s(I)V

    iget-object v0, v2, Lx9;->E:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, v2, Lx9;->M:LP9;

    invoke-virtual {v0}, LP9;->f()V

    iget-object v0, v0, LP9;->b:Landroidx/lifecycle/a;

    iget-object v0, v0, Landroidx/lifecycle/a;->c:LWb;

    sget-object v3, LWb;->c:LWb;

    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, v2, Lx9;->M:LP9;

    sget-object v3, LVb;->ON_DESTROY:LVb;

    invoke-virtual {v0, v3}, LP9;->e(LVb;)V

    :cond_2
    iput v1, v2, Lx9;->a:I

    const/4 v0, 0x0

    iput-boolean v0, v2, Lx9;->C:Z

    invoke-virtual {v2}, Lx9;->o()V

    iget-boolean v1, v2, Lx9;->C:Z

    if-eqz v1, :cond_4

    new-instance v1, LK1;

    invoke-interface {v2}, Lsn;->c()Lrn;

    move-result-object v3

    invoke-direct {v1, v2, v3}, LK1;-><init>(Lbc;Lrn;)V

    iget-object v1, v1, LK1;->c:Ljava/lang/Object;

    check-cast v1, LFc;

    iget-object v1, v1, LFc;->c:Lti;

    iget v3, v1, Lti;->c:I

    if-gtz v3, :cond_3

    iput-boolean v0, v2, Lx9;->p:Z

    iget-object p0, p0, Landroidx/fragment/app/a;->a:LK1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LK1;->t(Z)V

    const/4 p0, 0x0

    iput-object p0, v2, Lx9;->D:Landroid/view/ViewGroup;

    iput-object p0, v2, Lx9;->E:Landroid/view/View;

    iput-object p0, v2, Lx9;->M:LP9;

    iget-object v1, v2, Lx9;->N:Landroidx/lifecycle/b;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/b;->e(Ljava/lang/Object;)V

    iput-boolean v0, v2, Lx9;->n:Z

    return-void

    :cond_3
    iget-object p0, v1, Lti;->b:[Ljava/lang/Object;

    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, LWi;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDestroyView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i()V
    .locals 7

    const-string v0, "FragmentManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    iget-object v3, p0, Landroidx/fragment/app/a;->c:Lx9;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "movefrom ATTACHED: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, -0x1

    iput v2, v3, Lx9;->a:I

    const/4 v4, 0x0

    iput-boolean v4, v3, Lx9;->C:Z

    invoke-virtual {v3}, Lx9;->p()V

    iget-boolean v5, v3, Lx9;->C:Z

    if-eqz v5, :cond_8

    iget-object v5, v3, Lx9;->t:LJ9;

    iget-boolean v6, v5, LJ9;->A:Z

    if-nez v6, :cond_1

    invoke-virtual {v5}, LJ9;->k()V

    new-instance v5, LJ9;

    invoke-direct {v5}, LJ9;-><init>()V

    iput-object v5, v3, Lx9;->t:LJ9;

    :cond_1
    iget-object v5, p0, Landroidx/fragment/app/a;->a:LK1;

    invoke-virtual {v5, v4}, LK1;->j(Z)V

    iput v2, v3, Lx9;->a:I

    const/4 v2, 0x0

    iput-object v2, v3, Lx9;->s:Ly9;

    iput-object v2, v3, Lx9;->u:Lx9;

    iput-object v2, v3, Lx9;->r:LJ9;

    iget-boolean v5, v3, Lx9;->l:Z

    if-eqz v5, :cond_2

    iget v5, v3, Lx9;->q:I

    if-lez v5, :cond_5

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/a;->b:Lt2;

    iget-object p0, p0, Lt2;->c:Ljava/lang/Object;

    check-cast p0, LL9;

    iget-object v5, p0, LL9;->c:Ljava/util/HashMap;

    iget-object v6, v3, Lx9;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, LL9;->f:Z

    if-eqz v5, :cond_4

    iget-boolean v6, p0, LL9;->g:Z

    :cond_4
    :goto_0
    if-eqz v6, :cond_7

    :cond_5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "initState called for fragment: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance p0, Landroidx/lifecycle/a;

    invoke-direct {p0, v3}, Landroidx/lifecycle/a;-><init>(Lbc;)V

    iput-object p0, v3, Lx9;->L:Landroidx/lifecycle/a;

    new-instance p0, LQ9;

    invoke-direct {p0, v3}, LQ9;-><init>(Lyh;)V

    iput-object p0, v3, Lx9;->O:LQ9;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lx9;->e:Ljava/lang/String;

    iput-boolean v4, v3, Lx9;->k:Z

    iput-boolean v4, v3, Lx9;->l:Z

    iput-boolean v4, v3, Lx9;->m:Z

    iput-boolean v4, v3, Lx9;->n:Z

    iput-boolean v4, v3, Lx9;->o:Z

    iput v4, v3, Lx9;->q:I

    iput-object v2, v3, Lx9;->r:LJ9;

    new-instance p0, LJ9;

    invoke-direct {p0}, LJ9;-><init>()V

    iput-object p0, v3, Lx9;->t:LJ9;

    iput-object v2, v3, Lx9;->s:Ly9;

    iput v4, v3, Lx9;->v:I

    iput v4, v3, Lx9;->w:I

    iput-object v2, v3, Lx9;->x:Ljava/lang/String;

    iput-boolean v4, v3, Lx9;->y:Z

    iput-boolean v4, v3, Lx9;->z:Z

    :cond_7
    return-void

    :cond_8
    new-instance p0, LWi;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onDetach()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Landroidx/fragment/app/a;->c:Lx9;

    iget-boolean v1, v0, Lx9;->m:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lx9;->n:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lx9;->p:Z

    if-nez v1, :cond_2

    const/4 v1, 0x3

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "moveto CREATE_VIEW: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Lx9;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lx9;->q(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, v0, Lx9;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lx9;->v(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, v0, Lx9;->E:Landroid/view/View;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, v0, Lx9;->E:Landroid/view/View;

    const v3, 0x7f0800f3

    invoke-virtual {v1, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v1, v0, Lx9;->y:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lx9;->E:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, v0, Lx9;->t:LJ9;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, LJ9;->s(I)V

    iget-object p0, p0, Landroidx/fragment/app/a;->a:LK1;

    invoke-virtual {p0, v2}, LK1;->s(Z)V

    iput v3, v0, Lx9;->a:I

    :cond_2
    return-void
.end method

.method public final k()V
    .locals 9

    iget-boolean v0, p0, Landroidx/fragment/app/a;->d:Z

    const/4 v1, 0x2

    const-string v2, "FragmentManager"

    iget-object v3, p0, Landroidx/fragment/app/a;->c:Lx9;

    if-eqz v0, :cond_1

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v4, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/a;->d:Z

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/a;->d()I

    move-result v5

    iget v6, v3, Lx9;->a:I

    const/4 v7, 0x3

    if-eq v5, v6, :cond_9

    if-le v5, v6, :cond_4

    add-int/lit8 v6, v6, 0x1

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/a;->n()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :pswitch_1
    const/4 v5, 0x6

    iput v5, v3, Lx9;->a:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/a;->p()V

    goto :goto_0

    :pswitch_3
    iget-object v5, v3, Lx9;->E:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, v3, Lx9;->D:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lx9;->j()LJ9;

    move-result-object v6

    invoke-virtual {v6}, LJ9;->C()LT7;

    move-result-object v6

    invoke-static {v5, v6}, LZ6;->f(Landroid/view/ViewGroup;LT7;)LZ6;

    move-result-object v5

    iget-object v6, v3, Lx9;->E:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-static {v6}, Lpi;->b(I)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v5, v6, v1, p0}, LZ6;->a(IILandroidx/fragment/app/a;)V

    :cond_3
    const/4 v5, 0x4

    iput v5, v3, Lx9;->a:I

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/a;->a()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/a;->j()V

    invoke-virtual {p0}, Landroidx/fragment/app/a;->f()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/a;->e()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/a;->c()V

    goto :goto_0

    :cond_4
    add-int/lit8 v6, v6, -0x1

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/a;->l()V

    goto :goto_0

    :pswitch_9
    const/4 v5, 0x5

    iput v5, v3, Lx9;->a:I

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/a;->q()V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, v3, Lx9;->E:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, v3, Lx9;->c:Landroid/util/SparseArray;

    if-nez v5, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/a;->o()V

    :cond_6
    iget-object v5, v3, Lx9;->E:Landroid/view/View;

    if-eqz v5, :cond_8

    iget-object v5, v3, Lx9;->D:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lx9;->j()LJ9;

    move-result-object v6

    invoke-virtual {v6}, LJ9;->C()LT7;

    move-result-object v6

    invoke-static {v5, v6}, LZ6;->f(Landroid/view/ViewGroup;LT7;)LZ6;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v5, v0, v7, p0}, LZ6;->a(IILandroidx/fragment/app/a;)V

    :cond_8
    iput v7, v3, Lx9;->a:I

    goto/16 :goto_0

    :pswitch_c
    iput-boolean v4, v3, Lx9;->n:Z

    iput v1, v3, Lx9;->a:I

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/a;->h()V

    iput v0, v3, Lx9;->a:I

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p0}, Landroidx/fragment/app/a;->g()V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/a;->i()V

    goto/16 :goto_0

    :cond_9
    iget-boolean v5, v3, Lx9;->I:Z

    if-eqz v5, :cond_f

    iget-object v5, v3, Lx9;->E:Landroid/view/View;

    if-eqz v5, :cond_d

    iget-object v5, v3, Lx9;->D:Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    invoke-virtual {v3}, Lx9;->j()LJ9;

    move-result-object v6

    invoke-virtual {v6}, LJ9;->C()LT7;

    move-result-object v6

    invoke-static {v5, v6}, LZ6;->f(Landroid/view/ViewGroup;LT7;)LZ6;

    move-result-object v5

    iget-boolean v6, v3, Lx9;->y:Z

    if-eqz v6, :cond_b

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v5, v7, v0, p0}, LZ6;->a(IILandroidx/fragment/app/a;)V

    goto :goto_1

    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v5, v1, v0, p0}, LZ6;->a(IILandroidx/fragment/app/a;)V

    :cond_d
    :goto_1
    iget-object v1, v3, Lx9;->r:LJ9;

    if-eqz v1, :cond_e

    iget-boolean v2, v3, Lx9;->k:Z

    if-eqz v2, :cond_e

    invoke-static {v3}, LJ9;->E(Lx9;)Z

    move-result v2

    if-eqz v2, :cond_e

    iput-boolean v0, v1, LJ9;->x:Z

    :cond_e
    iput-boolean v4, v3, Lx9;->I:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    iput-boolean v4, p0, Landroidx/fragment/app/a;->d:Z

    return-void

    :goto_2
    iput-boolean v4, p0, Landroidx/fragment/app/a;->d:Z

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final l()V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/a;->c:Lx9;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "movefrom RESUMED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Lx9;->t:LJ9;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LJ9;->s(I)V

    iget-object v0, v2, Lx9;->E:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lx9;->M:LP9;

    sget-object v1, LVb;->ON_PAUSE:LVb;

    invoke-virtual {v0, v1}, LP9;->e(LVb;)V

    :cond_1
    iget-object v0, v2, Lx9;->L:Landroidx/lifecycle/a;

    sget-object v1, LVb;->ON_PAUSE:LVb;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a;->d(LVb;)V

    const/4 v0, 0x6

    iput v0, v2, Lx9;->a:I

    const/4 v0, 0x1

    iput-boolean v0, v2, Lx9;->C:Z

    iget-object p0, p0, Landroidx/fragment/app/a;->a:LK1;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LK1;->l(Z)V

    return-void
.end method

.method public final m(Ljava/lang/ClassLoader;)V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lx9;

    iget-object v0, p0, Lx9;->b:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Lx9;->b:Landroid/os/Bundle;

    const-string v0, "android:view_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lx9;->c:Landroid/util/SparseArray;

    iget-object p1, p0, Lx9;->b:Landroid/os/Bundle;

    const-string v0, "android:view_registry_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lx9;->d:Landroid/os/Bundle;

    iget-object p1, p0, Lx9;->b:Landroid/os/Bundle;

    const-string v0, "android:target_state"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx9;->h:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lx9;->b:Landroid/os/Bundle;

    const-string v0, "android:target_req_state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lx9;->i:I

    :cond_1
    iget-object p1, p0, Lx9;->b:Landroid/os/Bundle;

    const-string v0, "android:user_visible_hint"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lx9;->G:Z

    if-nez p1, :cond_2

    iput-boolean v1, p0, Lx9;->F:Z

    :cond_2
    return-void
.end method

.method public final n()V
    .locals 7

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/a;->c:Lx9;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto RESUMED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Lx9;->H:Lw9;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lw9;->k:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_5

    iget-object v4, v2, Lx9;->E:Landroid/view/View;

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_5

    iget-object v5, v2, Lx9;->E:Landroid/view/View;

    if-ne v4, v5, :cond_4

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v4

    const/4 v5, 0x2

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "requestFocus: Restoring focused view "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_3

    const-string v0, "succeeded"

    goto :goto_3

    :cond_3
    const-string v0, "failed"

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on Fragment "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " resulting in focused view "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lx9;->E:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_5
    :goto_4
    invoke-virtual {v2}, Lx9;->f()Lw9;

    move-result-object v0

    iput-object v3, v0, Lw9;->k:Landroid/view/View;

    iget-object v0, v2, Lx9;->t:LJ9;

    invoke-virtual {v0}, LJ9;->I()V

    iget-object v0, v2, Lx9;->t:LJ9;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LJ9;->x(Z)Z

    const/4 v0, 0x7

    iput v0, v2, Lx9;->a:I

    iput-boolean v1, v2, Lx9;->C:Z

    iget-object v1, v2, Lx9;->L:Landroidx/lifecycle/a;

    sget-object v4, LVb;->ON_RESUME:LVb;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/a;->d(LVb;)V

    iget-object v1, v2, Lx9;->E:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, v2, Lx9;->M:LP9;

    iget-object v1, v1, LP9;->b:Landroidx/lifecycle/a;

    invoke-virtual {v1, v4}, Landroidx/lifecycle/a;->d(LVb;)V

    :cond_6
    iget-object v1, v2, Lx9;->t:LJ9;

    const/4 v4, 0x0

    iput-boolean v4, v1, LJ9;->y:Z

    iput-boolean v4, v1, LJ9;->z:Z

    iget-object v5, v1, LJ9;->F:LL9;

    iput-boolean v4, v5, LL9;->h:Z

    invoke-virtual {v1, v0}, LJ9;->s(I)V

    iget-object p0, p0, Landroidx/fragment/app/a;->a:LK1;

    invoke-virtual {p0, v4}, LK1;->o(Z)V

    iput-object v3, v2, Lx9;->b:Landroid/os/Bundle;

    iput-object v3, v2, Lx9;->c:Landroid/util/SparseArray;

    iput-object v3, v2, Lx9;->d:Landroid/os/Bundle;

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/a;->c:Lx9;

    iget-object v0, p0, Lx9;->E:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lx9;->E:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    iput-object v0, p0, Lx9;->c:Landroid/util/SparseArray;

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lx9;->M:LP9;

    iget-object v1, v1, LP9;->c:LQ9;

    invoke-virtual {v1, v0}, LQ9;->c(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v0, p0, Lx9;->d:Landroid/os/Bundle;

    :cond_2
    return-void
.end method

.method public final p()V
    .locals 5

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/a;->c:Lx9;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "moveto STARTED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Lx9;->t:LJ9;

    invoke-virtual {v0}, LJ9;->I()V

    iget-object v0, v2, Lx9;->t:LJ9;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LJ9;->x(Z)Z

    const/4 v0, 0x5

    iput v0, v2, Lx9;->a:I

    const/4 v1, 0x0

    iput-boolean v1, v2, Lx9;->C:Z

    invoke-virtual {v2}, Lx9;->s()V

    iget-boolean v3, v2, Lx9;->C:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Lx9;->L:Landroidx/lifecycle/a;

    sget-object v4, LVb;->ON_START:LVb;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/a;->d(LVb;)V

    iget-object v3, v2, Lx9;->E:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lx9;->M:LP9;

    iget-object v3, v3, LP9;->b:Landroidx/lifecycle/a;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/a;->d(LVb;)V

    :cond_1
    iget-object v2, v2, Lx9;->t:LJ9;

    iput-boolean v1, v2, LJ9;->y:Z

    iput-boolean v1, v2, LJ9;->z:Z

    iget-object v3, v2, LJ9;->F:LL9;

    iput-boolean v1, v3, LL9;->h:Z

    invoke-virtual {v2, v0}, LJ9;->s(I)V

    iget-object p0, p0, Landroidx/fragment/app/a;->a:LK1;

    invoke-virtual {p0, v1}, LK1;->q(Z)V

    return-void

    :cond_2
    new-instance p0, LWi;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStart()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q()V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p0, Landroidx/fragment/app/a;->c:Lx9;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "movefrom STARTED: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, v2, Lx9;->t:LJ9;

    const/4 v1, 0x1

    iput-boolean v1, v0, LJ9;->z:Z

    iget-object v3, v0, LJ9;->F:LL9;

    iput-boolean v1, v3, LL9;->h:Z

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LJ9;->s(I)V

    iget-object v0, v2, Lx9;->E:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lx9;->M:LP9;

    sget-object v3, LVb;->ON_STOP:LVb;

    invoke-virtual {v0, v3}, LP9;->e(LVb;)V

    :cond_1
    iget-object v0, v2, Lx9;->L:Landroidx/lifecycle/a;

    sget-object v3, LVb;->ON_STOP:LVb;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/a;->d(LVb;)V

    iput v1, v2, Lx9;->a:I

    const/4 v0, 0x0

    iput-boolean v0, v2, Lx9;->C:Z

    invoke-virtual {v2}, Lx9;->t()V

    iget-boolean v1, v2, Lx9;->C:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/fragment/app/a;->a:LK1;

    invoke-virtual {p0, v0}, LK1;->r(Z)V

    return-void

    :cond_2
    new-instance p0, LWi;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " did not call through to super.onStop()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
