.class public final LZ1;
.super LAc;
.source "SourceFile"

# interfaces
.implements Lb2;


# instance fields
.field public A:Ljava/lang/CharSequence;

.field public B:LW1;

.field public final C:Landroid/graphics/Rect;

.field public D:I

.field public final synthetic E:Lc2;


# direct methods
.method public constructor <init>(Lc2;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    iput-object p1, p0, LZ1;->E:Lc2;

    const v0, 0x7f0303d7

    invoke-direct {p0, p2, p3, v0}, LAc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, LZ1;->C:Landroid/graphics/Rect;

    iput-object p1, p0, LAc;->o:Landroid/view/View;

    const/4 p1, 0x1

    iput-boolean p1, p0, LAc;->y:Z

    iget-object p2, p0, LAc;->z:LJ1;

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance p1, LX1;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, LX1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, LAc;->p:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, LZ1;->A:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final f(II)V
    .locals 4

    iget-object v0, p0, LAc;->z:LJ1;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    invoke-virtual {p0}, LZ1;->s()V

    const/4 v2, 0x2

    iget-object v3, p0, LAc;->z:LJ1;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, LAc;->h()V

    iget-object v2, p0, LAc;->c:LK7;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    invoke-static {v2, p1}, LT1;->d(Landroid/view/View;I)V

    invoke-static {v2, p2}, LT1;->c(Landroid/view/View;I)V

    iget-object p1, p0, LZ1;->E:Lc2;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result p2

    iget-object v2, p0, LAc;->c:LK7;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, LK7;->setListSelectionHidden(Z)V

    invoke-virtual {v2, p2}, Landroid/widget/AdapterView;->setSelection(I)V

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p2, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_0
    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, LR1;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, LR1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance p1, LY1;

    invoke-direct {p1, p0, p2}, LY1;-><init>(LZ1;LR1;)V

    iget-object p0, p0, LAc;->z:LJ1;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_2
    return-void
.end method

.method public final g(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, LZ1;->A:Ljava/lang/CharSequence;

    return-void
.end method

.method public final m(Landroid/widget/ListAdapter;)V
    .locals 0

    invoke-super {p0, p1}, LAc;->m(Landroid/widget/ListAdapter;)V

    check-cast p1, LW1;

    iput-object p1, p0, LZ1;->B:LW1;

    return-void
.end method

.method public final n(I)V
    .locals 0

    iput p1, p0, LZ1;->D:I

    return-void
.end method

.method public final s()V
    .locals 9

    iget-object v0, p0, LAc;->z:LJ1;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, LZ1;->E:Lc2;

    if-eqz v1, :cond_1

    iget-object v3, v2, Lc2;->h:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    invoke-static {v2}, LDn;->a(Landroid/view/View;)Z

    move-result v1

    iget-object v3, v2, Lc2;->h:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget v1, v3, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v1, v3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lc2;->h:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->left:I

    move v1, v3

    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v2, Lc2;->g:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_3

    iget-object v6, p0, LZ1;->B:LW1;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lc2;->a(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, v2, Lc2;->h:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v8

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    if-le v0, v6, :cond_2

    move v0, v6

    :cond_2
    sub-int v6, v5, v3

    sub-int/2addr v6, v4

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, LAc;->r(I)V

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    if-ne v6, v0, :cond_4

    sub-int v0, v5, v3

    sub-int/2addr v0, v4

    invoke-virtual {p0, v0}, LAc;->r(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v6}, LAc;->r(I)V

    :goto_1
    invoke-static {v2}, LDn;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    sub-int/2addr v5, v4

    iget v0, p0, LAc;->e:I

    sub-int/2addr v5, v0

    iget v0, p0, LZ1;->D:I

    sub-int/2addr v5, v0

    add-int/2addr v5, v1

    goto :goto_2

    :cond_5
    iget v0, p0, LZ1;->D:I

    add-int/2addr v3, v0

    add-int v5, v3, v1

    :goto_2
    iput v5, p0, LAc;->f:I

    return-void
.end method
