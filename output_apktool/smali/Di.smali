.class public final LDi;
.super LUd;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:LLd;

.field public final d:LId;

.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Lce;

.field public final i:LR1;

.field public final j:LV3;

.field public k:LVd;

.field public l:Landroid/view/View;

.field public m:Landroid/view/View;

.field public n:Lde;

.field public o:Landroid/view/ViewTreeObserver;

.field public p:Z

.field public q:Z

.field public r:I

.field public s:I

.field public t:Z


# direct methods
.method public constructor <init>(ILLd;Landroid/content/Context;Landroid/view/View;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LR1;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, LR1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, LDi;->i:LR1;

    new-instance v0, LV3;

    invoke-direct {v0, v1, p0}, LV3;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, LDi;->j:LV3;

    const/4 v0, 0x0

    iput v0, p0, LDi;->s:I

    iput-object p3, p0, LDi;->b:Landroid/content/Context;

    iput-object p2, p0, LDi;->c:LLd;

    iput-boolean p5, p0, LDi;->e:Z

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, LId;

    const v2, 0x7f0b0013

    invoke-direct {v1, p2, v0, p5, v2}, LId;-><init>(LLd;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, LDi;->d:LId;

    iput p1, p0, LDi;->g:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    const v1, 0x7f060017

    invoke-virtual {p5, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result p5

    iput p5, p0, LDi;->f:I

    iput-object p4, p0, LDi;->l:Landroid/view/View;

    new-instance p4, Lce;

    const/4 p5, 0x0

    invoke-direct {p4, p3, p5, p1}, LAc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p4, p0, LDi;->h:Lce;

    invoke-virtual {p2, p0, p3}, LLd;->b(Lee;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, LDi;->p:Z

    if-nez v0, :cond_0

    iget-object p0, p0, LDi;->h:Lce;

    iget-object p0, p0, LAc;->z:LJ1;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(LLd;Z)V
    .locals 1

    iget-object v0, p0, LDi;->c:LLd;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, LDi;->dismiss()V

    iget-object p0, p0, LDi;->n:Lde;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lde;->b(LLd;Z)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LDi;->q:Z

    iget-object p0, p0, LDi;->d:LId;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, LId;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final dismiss()V
    .locals 1

    invoke-virtual {p0}, LDi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LDi;->h:Lce;

    invoke-virtual {p0}, LAc;->dismiss()V

    :cond_0
    return-void
.end method

.method public final e()LK7;
    .locals 0

    iget-object p0, p0, LDi;->h:Lce;

    iget-object p0, p0, LAc;->c:LK7;

    return-object p0
.end method

.method public final h()V
    .locals 7

    invoke-virtual {p0}, LDi;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, LDi;->p:Z

    if-nez v0, :cond_7

    iget-object v0, p0, LDi;->l:Landroid/view/View;

    if-eqz v0, :cond_7

    iput-object v0, p0, LDi;->m:Landroid/view/View;

    iget-object v0, p0, LDi;->h:Lce;

    iget-object v1, v0, LAc;->z:LJ1;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iput-object p0, v0, LAc;->p:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, LAc;->y:Z

    iget-object v2, v0, LAc;->z:LJ1;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v2, p0, LDi;->m:Landroid/view/View;

    iget-object v3, p0, LDi;->o:Landroid/view/ViewTreeObserver;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    iput-object v5, p0, LDi;->o:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_2

    iget-object v3, p0, LDi;->i:LR1;

    invoke-virtual {v5, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v3, p0, LDi;->j:LV3;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v2, v0, LAc;->o:Landroid/view/View;

    iget v2, p0, LDi;->s:I

    iput v2, v0, LAc;->l:I

    iget-boolean v2, p0, LDi;->q:Z

    iget-object v3, p0, LDi;->b:Landroid/content/Context;

    iget-object v5, p0, LDi;->d:LId;

    if-nez v2, :cond_3

    iget v2, p0, LDi;->f:I

    invoke-static {v5, v3, v2}, LUd;->m(Landroid/widget/ListAdapter;Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, LDi;->r:I

    iput-boolean v1, p0, LDi;->q:Z

    :cond_3
    iget v1, p0, LDi;->r:I

    invoke-virtual {v0, v1}, LAc;->r(I)V

    const/4 v1, 0x2

    iget-object v2, v0, LAc;->z:LJ1;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, LUd;->a:Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_4
    move-object v6, v2

    :goto_1
    iput-object v6, v0, LAc;->x:Landroid/graphics/Rect;

    invoke-virtual {v0}, LAc;->h()V

    iget-object v1, v0, LAc;->c:LK7;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v6, p0, LDi;->t:Z

    if-eqz v6, :cond_6

    iget-object p0, p0, LDi;->c:LLd;

    iget-object v6, p0, LLd;->m:Ljava/lang/CharSequence;

    if-eqz v6, :cond_6

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f0b0012

    invoke-virtual {v3, v6, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v6, 0x1020016

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_5

    iget-object p0, p0, LLd;->m:Ljava/lang/CharSequence;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    invoke-virtual {v0, v5}, LAc;->m(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0}, LAc;->h()V

    :goto_2
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Lde;)V
    .locals 0

    iput-object p1, p0, LDi;->n:Lde;

    return-void
.end method

.method public final j(LTi;)Z
    .locals 8

    invoke-virtual {p1}, LLd;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, LXd;

    iget-object v6, p0, LDi;->m:Landroid/view/View;

    iget-object v5, p0, LDi;->b:Landroid/content/Context;

    iget-boolean v7, p0, LDi;->e:Z

    iget v3, p0, LDi;->g:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, LXd;-><init>(ILLd;Landroid/content/Context;Landroid/view/View;Z)V

    iget-object v2, p0, LDi;->n:Lde;

    iput-object v2, v0, LXd;->h:Lde;

    iget-object v3, v0, LXd;->i:LUd;

    if-eqz v3, :cond_0

    invoke-interface {v3, v2}, Lee;->i(Lde;)V

    :cond_0
    invoke-static {p1}, LUd;->u(LLd;)Z

    move-result v2

    iput-boolean v2, v0, LXd;->g:Z

    iget-object v3, v0, LXd;->i:LUd;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, LUd;->o(Z)V

    :cond_1
    iget-object v2, p0, LDi;->k:LVd;

    iput-object v2, v0, LXd;->j:LVd;

    const/4 v2, 0x0

    iput-object v2, p0, LDi;->k:LVd;

    iget-object v2, p0, LDi;->c:LLd;

    invoke-virtual {v2, v1}, LLd;->c(Z)V

    iget-object v2, p0, LDi;->h:Lce;

    iget v3, v2, LAc;->f:I

    invoke-virtual {v2}, LAc;->i()I

    move-result v2

    iget v4, p0, LDi;->s:I

    iget-object v5, p0, LDi;->l:Landroid/view/View;

    sget-object v6, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v5}, LSm;->d(Landroid/view/View;)I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    iget-object v4, p0, LDi;->l:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    invoke-virtual {v0}, LXd;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, v0, LXd;->e:Landroid/view/View;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3, v2, v5, v5}, LXd;->d(IIZZ)V

    :goto_0
    iget-object p0, p0, LDi;->n:Lde;

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lde;->p(LLd;)Z

    :cond_5
    return v5

    :cond_6
    :goto_1
    return v1
.end method

.method public final l(LLd;)V
    .locals 0

    return-void
.end method

.method public final n(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, LDi;->l:Landroid/view/View;

    return-void
.end method

.method public final o(Z)V
    .locals 0

    iget-object p0, p0, LDi;->d:LId;

    iput-boolean p1, p0, LId;->c:Z

    return-void
.end method

.method public final onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, LDi;->p:Z

    iget-object v1, p0, LDi;->c:LLd;

    invoke-virtual {v1, v0}, LLd;->c(Z)V

    iget-object v0, p0, LDi;->o:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LDi;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, LDi;->o:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, LDi;->o:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, LDi;->i:LR1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, LDi;->o:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, LDi;->m:Landroid/view/View;

    iget-object v1, p0, LDi;->j:LV3;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, LDi;->k:LVd;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, LVd;->onDismiss()V

    :cond_2
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, LDi;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final p(I)V
    .locals 0

    iput p1, p0, LDi;->s:I

    return-void
.end method

.method public final q(I)V
    .locals 0

    iget-object p0, p0, LDi;->h:Lce;

    iput p1, p0, LAc;->f:I

    return-void
.end method

.method public final r(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    check-cast p1, LVd;

    iput-object p1, p0, LDi;->k:LVd;

    return-void
.end method

.method public final s(Z)V
    .locals 0

    iput-boolean p1, p0, LDi;->t:Z

    return-void
.end method

.method public final t(I)V
    .locals 0

    iget-object p0, p0, LDi;->h:Lce;

    invoke-virtual {p0, p1}, LAc;->k(I)V

    return-void
.end method
