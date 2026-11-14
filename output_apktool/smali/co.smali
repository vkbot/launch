.class public final Lco;
.super Lp0;
.source "SourceFile"

# interfaces
.implements LJd;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:LLd;

.field public e:LK1;

.field public f:Ljava/lang/ref/WeakReference;

.field public final synthetic g:Leo;


# direct methods
.method public constructor <init>(Leo;Landroid/content/Context;LK1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco;->g:Leo;

    iput-object p2, p0, Lco;->c:Landroid/content/Context;

    iput-object p3, p0, Lco;->e:LK1;

    new-instance p1, LLd;

    invoke-direct {p1, p2}, LLd;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    iput p2, p1, LLd;->l:I

    iput-object p1, p0, Lco;->d:LLd;

    iput-object p0, p1, LLd;->e:LJd;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lco;->g:Leo;

    iget-object v1, v0, Leo;->y:Lco;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Leo;->F:Z

    if-eqz v1, :cond_1

    iput-object p0, v0, Leo;->z:Lco;

    iget-object v1, p0, Lco;->e:LK1;

    iput-object v1, v0, Leo;->A:LK1;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lco;->e:LK1;

    invoke-virtual {v1, p0}, LK1;->G(Lp0;)V

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lco;->e:LK1;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Leo;->U(Z)V

    iget-object p0, v0, Leo;->v:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v2, p0, Landroidx/appcompat/widget/ActionBarContextView;->k:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    :cond_2
    iget-object p0, v0, Leo;->s:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean v2, v0, Leo;->K:Z

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    iput-object v1, v0, Leo;->y:Lco;

    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lco;->f:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final c()LLd;
    .locals 0

    iget-object p0, p0, Lco;->d:LLd;

    return-object p0
.end method

.method public final d(LLd;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lco;->e:LK1;

    if-eqz p1, :cond_0

    iget-object p1, p1, LK1;->b:Ljava/lang/Object;

    check-cast p1, Lr7;

    invoke-virtual {p1, p0, p2}, Lr7;->c(Lp0;Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Lbj;

    iget-object p0, p0, Lco;->c:Landroid/content/Context;

    invoke-direct {v0, p0}, Lbj;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lco;->g:Leo;

    iget-object p0, p0, Leo;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lco;->g:Leo;

    iget-object p0, p0, Leo;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lco;->g:Leo;

    iget-object v0, v0, Leo;->y:Lco;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lco;->d:LLd;

    invoke-virtual {v0}, LLd;->w()V

    :try_start_0
    iget-object v1, p0, Lco;->e:LK1;

    invoke-virtual {v1, p0, v0}, LK1;->H(Lp0;LLd;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LLd;->v()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, LLd;->v()V

    throw p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lco;->g:Leo;

    iget-object p0, p0, Leo;->v:Landroidx/appcompat/widget/ActionBarContextView;

    iget-boolean p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->s:Z

    return p0
.end method

.method public final j(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lco;->g:Leo;

    iget-object v0, v0, Leo;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lco;->f:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Lco;->g:Leo;

    iget-object v0, v0, Leo;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lco;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lco;->g:Leo;

    iget-object p0, p0, Leo;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(I)V
    .locals 1

    iget-object v0, p0, Lco;->g:Leo;

    iget-object v0, v0, Leo;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lco;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lco;->g:Leo;

    iget-object p0, p0, Leo;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final o(Z)V
    .locals 0

    iput-boolean p1, p0, Lp0;->b:Z

    iget-object p0, p0, Lco;->g:Leo;

    iget-object p0, p0, Leo;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public final t(LLd;)V
    .locals 0

    iget-object p1, p0, Lco;->e:LK1;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lco;->h()V

    iget-object p0, p0, Lco;->g:Leo;

    iget-object p0, p0, Leo;->v:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView;->d:Ll0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ll0;->l()Z

    :cond_1
    return-void
.end method
