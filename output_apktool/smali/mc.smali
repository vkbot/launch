.class public final Lmc;
.super Lpg;
.source "SourceFile"


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView;

.field public b:Landroid/widget/Scroller;

.field public final c:Lni;

.field public final synthetic d:I

.field public e:LWe;

.field public f:LWe;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lmc;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lni;

    invoke-direct {p1, p0}, Lni;-><init>(Lmc;)V

    iput-object p1, p0, Lmc;->c:Lni;

    return-void
.end method

.method public static c(Landroid/view/View;LY7;)I
    .locals 1

    invoke-virtual {p1, p0}, LY7;->e(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, p0}, LY7;->c(Landroid/view/View;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    invoke-virtual {p1}, LY7;->k()I

    move-result v0

    invoke-virtual {p1}, LY7;->l()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static e(Lng;LY7;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lng;->v()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, LY7;->k()I

    move-result v2

    invoke-virtual {p1}, LY7;->l()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Lng;->u(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, LY7;->e(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1, v5}, LY7;->c(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static f(Lng;LY7;)Landroid/view/View;
    .locals 8

    invoke-virtual {p0}, Lng;->v()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, LY7;->k()I

    move-result v2

    invoke-virtual {p1}, LY7;->l()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    const v2, 0x7fffffff

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p0, v4}, Lng;->u(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p1, v5}, LY7;->e(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p1, v5}, LY7;->c(Landroid/view/View;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move-object v1, v5

    move v2, v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 3

    iget-object v0, p0, Lmc;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmc;->c:Lni;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->j0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lmc;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Lpg;)V

    :cond_2
    iput-object p1, p0, Lmc;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Lpg;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lmc;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->j(Lrg;)V

    iget-object p1, p0, Lmc;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Lpg;)V

    new-instance p1, Landroid/widget/Scroller;

    iget-object v0, p0, Lmc;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p1, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lmc;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lmc;->l()V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "An instance of OnFlingListener already set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public final b(Lng;Landroid/view/View;)[I
    .locals 6

    iget v0, p0, Lmc;->d:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1}, Lng;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lmc;->i(Lng;)LY7;

    move-result-object v1

    invoke-static {p2, v1}, Lmc;->c(Landroid/view/View;LY7;)I

    move-result v1

    aput v1, v0, v2

    goto :goto_0

    :cond_0
    aput v2, v0, v2

    :goto_0
    invoke-virtual {p1}, Lng;->e()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lmc;->k(Lng;)LY7;

    move-result-object p0

    invoke-static {p2, p0}, Lmc;->c(Landroid/view/View;LY7;)I

    move-result p0

    aput p0, v0, v3

    goto :goto_1

    :cond_1
    aput v2, v0, v3

    :goto_1
    return-object v0

    :pswitch_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    invoke-virtual {p1}, Lng;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lmc;->h(Lng;)LY7;

    move-result-object v2

    invoke-virtual {v2, p2}, LY7;->e(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v2, p2}, LY7;->c(Landroid/view/View;)I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v5, v4

    invoke-virtual {v2}, LY7;->k()I

    move-result v4

    invoke-virtual {v2}, LY7;->l()I

    move-result v2

    div-int/2addr v2, v0

    add-int/2addr v2, v4

    sub-int/2addr v5, v2

    aput v5, v1, v3

    goto :goto_2

    :cond_2
    aput v3, v1, v3

    :goto_2
    invoke-virtual {p1}, Lng;->e()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lmc;->j(Lng;)LY7;

    move-result-object p0

    invoke-virtual {p0, p2}, LY7;->e(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p2}, LY7;->c(Landroid/view/View;)I

    move-result p2

    div-int/2addr p2, v0

    add-int/2addr p2, p1

    invoke-virtual {p0}, LY7;->k()I

    move-result p1

    invoke-virtual {p0}, LY7;->l()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr p0, p1

    sub-int/2addr p2, p0

    aput p2, v1, v4

    goto :goto_3

    :cond_3
    aput v3, v1, v4

    :goto_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lng;LY7;II)I
    .locals 10

    iget-object v0, p0, Lmc;->b:Landroid/widget/Scroller;

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v5, -0x80000000

    const v6, 0x7fffffff

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p3, p0, Lmc;->b:Landroid/widget/Scroller;

    invoke-virtual {p3}, Landroid/widget/Scroller;->getFinalX()I

    move-result p3

    iget-object p0, p0, Lmc;->b:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/Scroller;->getFinalY()I

    move-result p0

    filled-new-array {p3, p0}, [I

    move-result-object p0

    invoke-virtual {p1}, Lng;->v()I

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    move v6, v0

    move v5, v4

    move v4, v3

    move-object v3, v2

    :goto_0
    if-ge v6, p3, :cond_4

    invoke-virtual {p1, v6}, Lng;->u(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lng;->F(Landroid/view/View;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    goto :goto_1

    :cond_1
    if-ge v8, v4, :cond_2

    move-object v2, v7

    move v4, v8

    :cond_2
    if-le v8, v5, :cond_3

    move-object v3, v7

    move v5, v8

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_7

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2, v2}, LY7;->e(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, v3}, LY7;->e(Landroid/view/View;)I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, v2}, LY7;->b(Landroid/view/View;)I

    move-result p3

    invoke-virtual {p2, v3}, LY7;->b(Landroid/view/View;)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    int-to-float p1, p2

    mul-float/2addr p1, v1

    sub-int/2addr v5, v4

    add-int/2addr v5, p4

    int-to-float p2, v5

    div-float v1, p1, p2

    :cond_7
    :goto_2
    const/4 p1, 0x0

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_8

    return v0

    :cond_8
    aget p1, p0, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    aget p2, p0, p4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-le p1, p2, :cond_9

    aget p0, p0, v0

    goto :goto_3

    :cond_9
    aget p0, p0, p4

    :goto_3
    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public final g(Lng;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lmc;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lng;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lmc;->k(Lng;)LY7;

    move-result-object p0

    invoke-static {p1, p0}, Lmc;->f(Lng;LY7;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lng;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lmc;->i(Lng;)LY7;

    move-result-object p0

    invoke-static {p1, p0}, Lmc;->f(Lng;LY7;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Lng;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lmc;->j(Lng;)LY7;

    move-result-object p0

    invoke-static {p1, p0}, Lmc;->e(Lng;LY7;)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lng;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lmc;->h(Lng;)LY7;

    move-result-object p0

    invoke-static {p1, p0}, Lmc;->e(Lng;LY7;)Landroid/view/View;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public h(Lng;)LY7;
    .locals 2

    iget-object v0, p0, Lmc;->f:LWe;

    if-eqz v0, :cond_0

    iget-object v0, v0, LY7;->b:Ljava/lang/Object;

    check-cast v0, Lng;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, LWe;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LWe;-><init>(Lng;I)V

    iput-object v0, p0, Lmc;->f:LWe;

    :cond_1
    iget-object p0, p0, Lmc;->f:LWe;

    return-object p0
.end method

.method public i(Lng;)LY7;
    .locals 2

    iget-object v0, p0, Lmc;->f:LWe;

    if-eqz v0, :cond_0

    iget-object v0, v0, LY7;->b:Ljava/lang/Object;

    check-cast v0, Lng;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, LWe;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LWe;-><init>(Lng;I)V

    iput-object v0, p0, Lmc;->f:LWe;

    :cond_1
    iget-object p0, p0, Lmc;->f:LWe;

    return-object p0
.end method

.method public j(Lng;)LY7;
    .locals 2

    iget-object v0, p0, Lmc;->e:LWe;

    if-eqz v0, :cond_0

    iget-object v0, v0, LY7;->b:Ljava/lang/Object;

    check-cast v0, Lng;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, LWe;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LWe;-><init>(Lng;I)V

    iput-object v0, p0, Lmc;->e:LWe;

    :cond_1
    iget-object p0, p0, Lmc;->e:LWe;

    return-object p0
.end method

.method public k(Lng;)LY7;
    .locals 2

    iget-object v0, p0, Lmc;->e:LWe;

    if-eqz v0, :cond_0

    iget-object v0, v0, LY7;->b:Ljava/lang/Object;

    check-cast v0, Lng;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, LWe;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LWe;-><init>(Lng;I)V

    iput-object v0, p0, Lmc;->e:LWe;

    :cond_1
    iget-object p0, p0, Lmc;->e:LWe;

    return-object p0
.end method

.method public final l()V
    .locals 5

    iget-object v0, p0, Lmc;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lmc;->g(Lng;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0, v1}, Lmc;->b(Lng;Landroid/view/View;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_3

    aget v4, v0, v3

    if-eqz v4, :cond_4

    :cond_3
    iget-object p0, p0, Lmc;->a:Landroidx/recyclerview/widget/RecyclerView;

    aget v0, v0, v3

    invoke-virtual {p0, v2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->k0(IIZ)V

    :cond_4
    return-void
.end method
