.class public final Lo1;
.super Lvf;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lo1;->c:I

    iput-object p2, p0, Lo1;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v2, p0, Lo1;->d:Ljava/lang/Object;

    iget p0, p0, Lo1;->c:I

    packed-switch p0, :pswitch_data_0

    check-cast v2, LK1;

    iget-object p0, v2, LK1;->c:Ljava/lang/Object;

    check-cast p0, Ly1;

    iget-object p0, p0, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p0, v2, LK1;->c:Ljava/lang/Object;

    check-cast p0, Ly1;

    iget-object v0, p0, Ly1;->w:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v2, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LVm;->c(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->e()V

    iget-object v0, p0, Ly1;->y:Lwn;

    invoke-virtual {v0, v1}, Lwn;->d(Lyn;)V

    iput-object v1, p0, Ly1;->y:Lwn;

    iget-object p0, p0, Ly1;->A:Landroid/view/ViewGroup;

    sget-object v0, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LVm;->c(Landroid/view/View;)V

    return-void

    :pswitch_0
    check-cast v2, Ly1;

    iget-object p0, v2, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, v2, Ly1;->y:Lwn;

    invoke-virtual {p0, v1}, Lwn;->d(Lyn;)V

    iput-object v1, v2, Ly1;->y:Lwn;

    return-void

    :pswitch_1
    check-cast v2, Lm1;

    iget-object p0, v2, Lm1;->b:Ly1;

    iget-object p0, p0, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, v2, Lm1;->b:Ly1;

    iget-object v0, p0, Ly1;->y:Lwn;

    invoke-virtual {v0, v1}, Lwn;->d(Lyn;)V

    iput-object v1, p0, Ly1;->y:Lwn;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lo1;->d:Ljava/lang/Object;

    iget p0, p0, Lo1;->c:I

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast v1, Ly1;

    iget-object p0, v1, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    iget-object p0, v1, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Landroid/view/View;

    if-eqz p0, :cond_0

    iget-object p0, v1, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget-object v0, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LVm;->c(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast v1, Lm1;

    iget-object p0, v1, Lm1;->b:Ly1;

    iget-object p0, p0, Ly1;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
