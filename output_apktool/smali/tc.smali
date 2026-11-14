.class public final Ltc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/view/LayoutInflater;

.field public c:LLd;

.field public d:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public e:Lde;

.field public f:Lsc;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltc;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltc;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final b(LLd;Z)V
    .locals 0

    iget-object p0, p0, Ltc;->e:Lde;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lde;->b(LLd;Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    iget-object p0, p0, Ltc;->f:Lsc;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lsc;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f(Landroid/content/Context;LLd;)V
    .locals 1

    iget-object v0, p0, Ltc;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Ltc;->a:Landroid/content/Context;

    iget-object v0, p0, Ltc;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Ltc;->b:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Ltc;->c:LLd;

    iget-object p0, p0, Ltc;->f:Lsc;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lsc;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final g(LPd;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i(Lde;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(LTi;)Z
    .locals 6

    invoke-virtual {p1}, LLd;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, LMd;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, LMd;->a:LTi;

    new-instance v1, Lvj;

    iget-object v2, p1, LLd;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lvj;-><init>(Landroid/content/Context;)V

    new-instance v3, Ltc;

    iget-object v4, v1, Lvj;->b:Ljava/lang/Object;

    check-cast v4, LB0;

    iget-object v5, v4, LB0;->a:Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, v5}, Ltc;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v3, v0, LMd;->c:Ltc;

    iput-object v0, v3, Ltc;->e:Lde;

    invoke-virtual {p1, v3, v2}, LLd;->b(Lee;Landroid/content/Context;)V

    iget-object v2, v0, LMd;->c:Ltc;

    iget-object v3, v2, Ltc;->f:Lsc;

    if-nez v3, :cond_1

    new-instance v3, Lsc;

    invoke-direct {v3, v2}, Lsc;-><init>(Ltc;)V

    iput-object v3, v2, Ltc;->f:Lsc;

    :cond_1
    iget-object v2, v2, Ltc;->f:Lsc;

    iput-object v2, v4, LB0;->g:Ljava/lang/Object;

    iput-object v0, v4, LB0;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p1, LLd;->o:Landroid/view/View;

    if-eqz v2, :cond_2

    iput-object v2, v4, LB0;->e:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v2, p1, LLd;->n:Landroid/graphics/drawable/Drawable;

    iput-object v2, v4, LB0;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, LLd;->m:Ljava/lang/CharSequence;

    iput-object v2, v4, LB0;->d:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v4, LB0;->f:LMd;

    invoke-virtual {v1}, Lvj;->d()LF0;

    move-result-object v1

    iput-object v1, v0, LMd;->b:LF0;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, LMd;->b:LF0;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, LMd;->b:LF0;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Ltc;->e:Lde;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lde;->p(LLd;)Z

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final k(LPd;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Ltc;->c:LLd;

    iget-object p2, p0, Ltc;->f:Lsc;

    invoke-virtual {p2, p3}, Lsc;->b(I)LPd;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, LLd;->q(Landroid/view/MenuItem;Lee;I)Z

    return-void
.end method
