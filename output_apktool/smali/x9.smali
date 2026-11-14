.class public abstract Lx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lbc;
.implements Lsn;
.implements LEa;
.implements Lyh;


# static fields
.field public static final Q:Ljava/lang/Object;


# instance fields
.field public A:Z

.field public final B:Z

.field public C:Z

.field public D:Landroid/view/ViewGroup;

.field public E:Landroid/view/View;

.field public F:Z

.field public G:Z

.field public H:Lw9;

.field public I:Z

.field public J:Z

.field public K:LWb;

.field public L:Landroidx/lifecycle/a;

.field public M:LP9;

.field public final N:Landroidx/lifecycle/b;

.field public O:LQ9;

.field public final P:Ljava/util/ArrayList;

.field public a:I

.field public b:Landroid/os/Bundle;

.field public c:Landroid/util/SparseArray;

.field public d:Landroid/os/Bundle;

.field public e:Ljava/lang/String;

.field public f:Landroid/os/Bundle;

.field public g:Lx9;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/Boolean;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:I

.field public r:LJ9;

.field public s:Ly9;

.field public t:LJ9;

.field public u:Lx9;

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx9;->Q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lx9;->a:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lx9;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lx9;->h:Ljava/lang/String;

    iput-object v0, p0, Lx9;->j:Ljava/lang/Boolean;

    new-instance v0, LJ9;

    invoke-direct {v0}, LJ9;-><init>()V

    iput-object v0, p0, Lx9;->t:LJ9;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx9;->B:Z

    iput-boolean v0, p0, Lx9;->G:Z

    sget-object v0, LWb;->e:LWb;

    iput-object v0, p0, Lx9;->K:LWb;

    new-instance v0, Landroidx/lifecycle/b;

    invoke-direct {v0}, Landroidx/lifecycle/b;-><init>()V

    iput-object v0, p0, Lx9;->N:Landroidx/lifecycle/b;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx9;->P:Ljava/util/ArrayList;

    new-instance v0, Landroidx/lifecycle/a;

    invoke-direct {v0, p0}, Landroidx/lifecycle/a;-><init>(Lbc;)V

    iput-object v0, p0, Lx9;->L:Landroidx/lifecycle/a;

    new-instance v0, LQ9;

    invoke-direct {v0, p0}, LQ9;-><init>(Lyh;)V

    iput-object v0, p0, Lx9;->O:LQ9;

    return-void
.end method


# virtual methods
.method public final A(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lx9;->r:LJ9;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, LJ9;->y:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, LJ9;->z:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added and state has been saved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lx9;->f:Landroid/os/Bundle;

    return-void
.end method

.method public final b()Lh1;
    .locals 0

    iget-object p0, p0, Lx9;->O:LQ9;

    iget-object p0, p0, LQ9;->c:Ljava/lang/Object;

    check-cast p0, Lh1;

    return-object p0
.end method

.method public final c()Lrn;
    .locals 2

    iget-object v0, p0, Lx9;->r:LJ9;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lx9;->i()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lx9;->r:LJ9;

    iget-object v0, v0, LJ9;->F:LL9;

    iget-object v0, v0, LL9;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lx9;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrn;

    if-nez v1, :cond_0

    new-instance v1, Lrn;

    invoke-direct {v1}, Lrn;-><init>()V

    iget-object p0, p0, Lx9;->e:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Landroidx/lifecycle/a;
    .locals 0

    iget-object p0, p0, Lx9;->L:Landroidx/lifecycle/a;

    return-object p0
.end method

.method public e()Lnb;
    .locals 1

    new-instance v0, Lv9;

    invoke-direct {v0, p0}, Lv9;-><init>(Lx9;)V

    return-object v0
.end method

.method public final f()Lw9;
    .locals 2

    iget-object v0, p0, Lx9;->H:Lw9;

    if-nez v0, :cond_0

    new-instance v0, Lw9;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lx9;->Q:Ljava/lang/Object;

    iput-object v1, v0, Lw9;->g:Ljava/lang/Object;

    iput-object v1, v0, Lw9;->h:Ljava/lang/Object;

    iput-object v1, v0, Lw9;->i:Ljava/lang/Object;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lw9;->j:F

    const/4 v1, 0x0

    iput-object v1, v0, Lw9;->k:Landroid/view/View;

    iput-object v0, p0, Lx9;->H:Lw9;

    :cond_0
    iget-object p0, p0, Lx9;->H:Lw9;

    return-object p0
.end method

.method public final g()LJ9;
    .locals 3

    iget-object v0, p0, Lx9;->s:Ly9;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lx9;->t:LJ9;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has not been attached yet."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lx9;->s:Ly9;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ly9;->s:Lb1;

    :goto_0
    return-object p0
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Lx9;->K:LWb;

    sget-object v1, LWb;->b:LWb;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lx9;->u:Lx9;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object p0, p0, Lx9;->u:Lx9;

    invoke-virtual {p0}, Lx9;->i()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method public final j()LJ9;
    .locals 3

    iget-object v0, p0, Lx9;->r:LJ9;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not associated with a fragment manager."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " received the following in onActivityResult(): requestCode: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " resultCode: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " data: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public l(Lb1;)V
    .locals 1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lx9;->C:Z

    iget-object v0, p0, Lx9;->s:Ly9;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ly9;->r:Lb1;

    :goto_0
    if-eqz v0, :cond_1

    iput-boolean p1, p0, Lx9;->C:Z

    :cond_1
    return-void
.end method

.method public m(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx9;->C:Z

    invoke-virtual {p0, p1}, Lx9;->y(Landroid/os/Bundle;)V

    iget-object p0, p0, Lx9;->t:LJ9;

    iget p1, p0, LJ9;->m:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, LJ9;->y:Z

    iput-boolean p1, p0, LJ9;->z:Z

    iget-object v1, p0, LJ9;->F:LL9;

    iput-boolean p1, v1, LL9;->h:Z

    invoke-virtual {p0, v0}, LJ9;->s(I)V

    :goto_0
    return-void
.end method

.method public n(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx9;->C:Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lx9;->C:Z

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    iget-object v0, p0, Lx9;->s:Ly9;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Ly9;->r:Lb1;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Fragment "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to an activity."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx9;->C:Z

    return-void
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx9;->C:Z

    return-void
.end method

.method public q(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object p1, p0, Lx9;->s:Ly9;

    if-eqz p1, :cond_0

    iget-object p1, p1, Ly9;->v:Lb1;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object p0, p0, Lx9;->t:LJ9;

    iget-object p0, p0, LJ9;->f:LB9;

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract r(Landroid/os/Bundle;)V
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx9;->C:Z

    return-void
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lx9;->C:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx9;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lx9;->v:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lx9;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lx9;->x:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx9;->x:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lx9;->C:Z

    return-void
.end method

.method public v(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1

    iget-object p3, p0, Lx9;->t:LJ9;

    invoke-virtual {p3}, LJ9;->I()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lx9;->p:Z

    new-instance p3, LP9;

    invoke-virtual {p0}, Lx9;->c()Lrn;

    move-result-object v0

    invoke-direct {p3, v0}, LP9;-><init>(Lrn;)V

    iput-object p3, p0, Lx9;->M:LP9;

    invoke-virtual {p0, p1, p2}, Lx9;->n(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lx9;->E:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lx9;->M:LP9;

    invoke-virtual {p1}, LP9;->f()V

    iget-object p1, p0, Lx9;->E:Landroid/view/View;

    iget-object p2, p0, Lx9;->M:LP9;

    const-string p3, "<this>"

    invoke-static {p1, p3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f08026b

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lx9;->E:Landroid/view/View;

    iget-object p2, p0, Lx9;->M:LP9;

    invoke-static {p1, p3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f08026e

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lx9;->E:Landroid/view/View;

    iget-object p2, p0, Lx9;->M:LP9;

    invoke-static {p1, p3}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f08026d

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lx9;->N:Landroidx/lifecycle/b;

    iget-object p0, p0, Lx9;->M:LP9;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/b;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lx9;->M:LP9;

    iget-object p1, p1, LP9;->b:Landroidx/lifecycle/a;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lx9;->M:LP9;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final w()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Lx9;->h()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to a context."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final x()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lx9;->E:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final y(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lx9;->t:LJ9;

    invoke-virtual {v0, p1}, LJ9;->N(Landroid/os/Parcelable;)V

    iget-object p0, p0, Lx9;->t:LJ9;

    const/4 p1, 0x0

    iput-boolean p1, p0, LJ9;->y:Z

    iput-boolean p1, p0, LJ9;->z:Z

    iget-object v0, p0, LJ9;->F:LL9;

    iput-boolean p1, v0, LL9;->h:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LJ9;->s(I)V

    :cond_0
    return-void
.end method

.method public final z(IIII)V
    .locals 1

    iget-object v0, p0, Lx9;->H:Lw9;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lx9;->f()Lw9;

    move-result-object v0

    iput p1, v0, Lw9;->b:I

    invoke-virtual {p0}, Lx9;->f()Lw9;

    move-result-object p1

    iput p2, p1, Lw9;->c:I

    invoke-virtual {p0}, Lx9;->f()Lw9;

    move-result-object p1

    iput p3, p1, Lw9;->d:I

    invoke-virtual {p0}, Lx9;->f()Lw9;

    move-result-object p0

    iput p4, p0, Lw9;->e:I

    return-void
.end method
