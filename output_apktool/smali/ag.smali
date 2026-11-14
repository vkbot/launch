.class public abstract Lag;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# instance fields
.field public final s:LO;

.field public t:I

.field public final u:LEd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v0, 0x7f0302ee

    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0b0043

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v1, LEd;

    invoke-direct {v1}, LEd;-><init>()V

    iput-object v1, p0, Lag;->u:LEd;

    new-instance v2, LNg;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v2, v3}, LNg;-><init>(F)V

    iget-object v3, v1, LEd;->a:LDd;

    iget-object v3, v3, LDd;->a:LVh;

    invoke-virtual {v3}, LVh;->e()LUh;

    move-result-object v3

    iput-object v2, v3, LUh;->e:Lb6;

    iput-object v2, v3, LUh;->f:Lb6;

    iput-object v2, v3, LUh;->g:Lb6;

    iput-object v2, v3, LUh;->h:Lb6;

    invoke-virtual {v3}, LUh;->a()LVh;

    move-result-object v2

    invoke-virtual {v1, v2}, LEd;->setShapeAppearanceModel(LVh;)V

    iget-object v1, p0, Lag;->u:LEd;

    const/4 v2, -0x1

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, LEd;->i(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lag;->u:LEd;

    sget-object v2, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p0, v1}, LRm;->q(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    sget-object v1, LYf;->t:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lag;->t:I

    new-instance p2, LO;

    const/16 v0, 0xe

    invoke-direct {p2, v0, p0}, LO;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lag;->s:LO;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {}, LSm;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lag;->s:LO;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public abstract m()V
.end method

.method public final onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    invoke-virtual {p0}, Lag;->m()V

    return-void
.end method

.method public final onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lag;->s:LO;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lag;->u:LEd;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, LEd;->i(Landroid/content/res/ColorStateList;)V

    return-void
.end method
