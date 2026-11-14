.class public final Lvb;
.super Lkg;
.source "SourceFile"


# instance fields
.field public A:Landroid/graphics/Rect;

.field public B:J

.field public final a:Ljava/util/ArrayList;

.field public final b:[F

.field public c:LEg;

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:I

.field public final m:Lvj;

.field public n:I

.field public o:I

.field public final p:Ljava/util/ArrayList;

.field public q:I

.field public r:Landroidx/recyclerview/widget/RecyclerView;

.field public final s:LJ2;

.field public t:Landroid/view/VelocityTracker;

.field public u:Ljava/util/ArrayList;

.field public v:Ljava/util/ArrayList;

.field public w:Landroid/view/View;

.field public x:LL;

.field public y:Lub;

.field public final z:Lrb;


# direct methods
.method public constructor <init>(Lvj;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvb;->a:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lvb;->b:[F

    const/4 v0, 0x0

    iput-object v0, p0, Lvb;->c:LEg;

    const/4 v1, -0x1

    iput v1, p0, Lvb;->l:I

    const/4 v1, 0x0

    iput v1, p0, Lvb;->n:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lvb;->p:Ljava/util/ArrayList;

    new-instance v1, LJ2;

    const/16 v2, 0x9

    invoke-direct {v1, v2, p0}, LJ2;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lvb;->s:LJ2;

    iput-object v0, p0, Lvb;->w:Landroid/view/View;

    new-instance v0, Lrb;

    invoke-direct {v0, p0}, Lrb;-><init>(Lvb;)V

    iput-object v0, p0, Lvb;->z:Lrb;

    iput-object p1, p0, Lvb;->m:Lvj;

    return-void
.end method

.method public static n(Landroid/view/View;FFFF)Z
    .locals 1

    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_0

    cmpl-float p1, p2, p4

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p4, p0

    cmpg-float p0, p2, p4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final d(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;LAg;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public final e(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lvb;->c:LEg;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lvb;->b:[F

    invoke-virtual {v0, v1}, Lvb;->m([F)V

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    move v9, v1

    move v8, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v8, v1

    move v9, v8

    :goto_0
    iget-object v10, v0, Lvb;->c:LEg;

    iget-object v11, v0, Lvb;->p:Ljava/util/ArrayList;

    iget-object v12, v0, Lvb;->m:Lvj;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v2

    :goto_1
    if-ge v14, v13, :cond_3

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsb;

    iget v1, v0, Lsb;->a:F

    iget v2, v0, Lsb;->c:F

    cmpl-float v3, v1, v2

    iget-object v4, v0, Lsb;->e:LEg;

    if-nez v3, :cond_1

    iget-object v1, v4, LEg;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iput v1, v0, Lsb;->i:F

    goto :goto_2

    :cond_1
    iget v3, v0, Lsb;->m:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, v0, Lsb;->i:F

    :goto_2
    iget v1, v0, Lsb;->b:F

    iget v2, v0, Lsb;->d:F

    cmpl-float v3, v1, v2

    if-nez v3, :cond_2

    iget-object v1, v4, LEg;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    iput v1, v0, Lsb;->j:F

    goto :goto_3

    :cond_2
    iget v3, v0, Lsb;->m:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, v3

    add-float/2addr v2, v1

    iput v2, v0, Lsb;->j:F

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v15

    iget v4, v0, Lsb;->i:F

    iget v5, v0, Lsb;->j:F

    const/4 v6, 0x0

    iget-object v3, v0, Lsb;->e:LEg;

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v0 .. v6}, Lvj;->f(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;LEg;FFZ)V

    invoke-virtual {v7, v15}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    const/4 v6, 0x1

    move-object v0, v12

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v10

    move v4, v8

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lvj;->f(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;LEg;FFZ)V

    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method public final f(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    iget-object v0, p0, Lvb;->c:LEg;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvb;->b:[F

    invoke-virtual {p0, v0}, Lvb;->m([F)V

    aget v3, v0, v1

    aget v0, v0, v2

    :cond_0
    iget-object v0, p0, Lvb;->c:LEg;

    iget-object v3, p0, Lvb;->p:Ljava/util/ArrayList;

    iget-object p0, p0, Lvb;->m:Lvj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    move v4, v1

    :goto_0
    if-ge v4, p0, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsb;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    iget-object v5, v5, Lsb;->e:LEg;

    iget-object v5, v5, LEg;->a:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    sub-int/2addr p0, v2

    :goto_1
    if-ltz p0, :cond_5

    invoke-interface {v3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsb;

    iget-boolean v0, p1, Lsb;->l:Z

    if-eqz v0, :cond_3

    iget-boolean p1, p1, Lsb;->h:Z

    if-nez p1, :cond_3

    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    move v1, v2

    :cond_4
    :goto_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    :cond_6
    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 7

    iget-object v0, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lvb;->z:Lrb;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->d0(Lkg;)V

    iget-object v0, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Lqg;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    iput-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Lqg;

    :cond_1
    iget-object v0, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lvb;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    const/4 v4, 0x0

    if-ltz v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsb;

    iget-object v5, v4, Lsb;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v5, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Lsb;->e:LEg;

    iget-object v6, p0, Lvb;->m:Lvj;

    invoke-virtual {v6, v5, v4}, Lvj;->a(Landroidx/recyclerview/widget/RecyclerView;LEg;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v3, p0, Lvb;->w:Landroid/view/View;

    iget-object v0, p0, Lvb;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, p0, Lvb;->t:Landroid/view/VelocityTracker;

    :cond_4
    iget-object v0, p0, Lvb;->y:Lub;

    if-eqz v0, :cond_5

    iput-boolean v4, v0, Lub;->a:Z

    iput-object v3, p0, Lvb;->y:Lub;

    :cond_5
    iget-object v0, p0, Lvb;->x:LL;

    if-eqz v0, :cond_6

    iput-object v3, p0, Lvb;->x:LL;

    :cond_6
    iput-object p1, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600aa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lvb;->f:F

    const v0, 0x7f0600a9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lvb;->g:F

    iget-object p1, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lvb;->q:I

    iget-object p1, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->i(Lkg;)V

    iget-object p1, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->C:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->C:Ljava/util/ArrayList;

    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->C:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lub;

    invoke-direct {p1, p0}, Lub;-><init>(Lvb;)V

    iput-object p1, p0, Lvb;->y:Lub;

    new-instance p1, LL;

    iget-object v0, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lvb;->y:Lub;

    const/16 v2, 0xf

    invoke-direct {p1, v0, v1, v2}, LL;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;I)V

    iput-object p1, p0, Lvb;->x:LL;

    return-void
.end method

.method public final h(LEg;I)I
    .locals 8

    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_3

    iget v0, p0, Lvb;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Lvb;->t:Landroid/view/VelocityTracker;

    iget-object v5, p0, Lvb;->m:Lvj;

    if-eqz v4, :cond_2

    iget v6, p0, Lvb;->l:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    iget v6, p0, Lvb;->g:F

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v4, p0, Lvb;->t:Landroid/view/VelocityTracker;

    iget v6, p0, Lvb;->l:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    iget-object v6, p0, Lvb;->t:Landroid/view/VelocityTracker;

    iget v7, p0, Lvb;->l:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    cmpl-float v1, v4, v1

    if-lez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    and-int v3, v2, p2

    if-eqz v3, :cond_2

    if-ne v0, v2, :cond_2

    iget v3, p0, Lvb;->f:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "vh"

    invoke-static {p1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, p1

    and-int p1, p2, v0

    if-eqz p1, :cond_3

    iget p0, p0, Lvb;->h:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final i(IILandroid/view/MotionEvent;)V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lvb;->c:LEg;

    if-nez v1, :cond_d

    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    iget p1, p0, Lvb;->n:I

    if-eq p1, v1, :cond_d

    iget-object p1, p0, Lvb;->m:Lvj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object p1

    iget v2, p0, Lvb;->l:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v5, p0, Lvb;->d:F

    sub-float/2addr v3, v5

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v5, p0, Lvb;->e:F

    sub-float/2addr v2, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v5, p0, Lvb;->q:I

    int-to-float v5, v5

    cmpg-float v6, v3, v5

    if-gez v6, :cond_2

    cmpg-float v5, v2, v5

    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    cmpl-float v5, v3, v2

    if-lez v5, :cond_3

    invoke-virtual {p1}, Lng;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    invoke-virtual {p1}, Lng;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p3}, Lvb;->l(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)LEg;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_6

    return-void

    :cond_6
    iget-object p1, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, LSm;->d(Landroid/view/View;)I

    move-result p1

    const/16 v2, 0x101

    invoke-static {v2, p1}, Lvj;->b(II)I

    move-result p1

    const v2, 0xff00

    and-int/2addr p1, v2

    shr-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    iget v3, p0, Lvb;->d:F

    sub-float/2addr v2, v3

    iget v3, p0, Lvb;->e:F

    sub-float/2addr p2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lvb;->q:I

    int-to-float v6, v6

    cmpg-float v7, v3, v6

    if-gez v7, :cond_8

    cmpg-float v6, v5, v6

    if-gez v6, :cond_8

    return-void

    :cond_8
    cmpl-float v3, v3, v5

    const/4 v5, 0x0

    if-lez v3, :cond_a

    cmpg-float p2, v2, v5

    if-gez p2, :cond_9

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_9

    return-void

    :cond_9
    cmpl-float p2, v2, v5

    if-lez p2, :cond_c

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_c

    return-void

    :cond_a
    cmpg-float v2, p2, v5

    if-gez v2, :cond_b

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_b

    return-void

    :cond_b
    cmpl-float p2, p2, v5

    if-lez p2, :cond_c

    and-int/2addr p1, v1

    if-nez p1, :cond_c

    return-void

    :cond_c
    iput v5, p0, Lvb;->i:F

    iput v5, p0, Lvb;->h:F

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lvb;->l:I

    invoke-virtual {p0, v4, v0}, Lvb;->q(LEg;I)V

    :cond_d
    return-void
.end method

.method public final j(LEg;I)I
    .locals 8

    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_3

    iget v0, p0, Lvb;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v4, p0, Lvb;->t:Landroid/view/VelocityTracker;

    iget-object v5, p0, Lvb;->m:Lvj;

    if-eqz v4, :cond_2

    iget v6, p0, Lvb;->l:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_2

    iget v6, p0, Lvb;->g:F

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v4, p0, Lvb;->t:Landroid/view/VelocityTracker;

    iget v6, p0, Lvb;->l:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    iget-object v6, p0, Lvb;->t:Landroid/view/VelocityTracker;

    iget v7, p0, Lvb;->l:I

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v6

    cmpl-float v1, v6, v1

    if-lez v1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    and-int v3, v2, p2

    if-eqz v3, :cond_2

    if-ne v2, v0, :cond_2

    iget v3, p0, Lvb;->f:F

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "vh"

    invoke-static {p1, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x3e99999a    # 0.3f

    mul-float/2addr v1, p1

    and-int p1, p2, v0

    if-eqz p1, :cond_3

    iget p0, p0, Lvb;->i:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final k(LEg;Z)V
    .locals 3

    iget-object p0, p0, Lvb;->p:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsb;

    iget-object v2, v1, Lsb;->e:LEg;

    if-ne v2, p1, :cond_1

    iget-boolean p1, v1, Lsb;->k:Z

    or-int/2addr p1, p2

    iput-boolean p1, v1, Lsb;->k:Z

    iget-boolean p1, v1, Lsb;->l:Z

    if-nez p1, :cond_0

    iget-object p1, v1, Lsb;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final l(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lvb;->c:LEg;

    if-eqz v1, :cond_0

    iget v2, p0, Lvb;->j:F

    iget v3, p0, Lvb;->h:F

    add-float/2addr v2, v3

    iget v3, p0, Lvb;->k:F

    iget v4, p0, Lvb;->i:F

    add-float/2addr v3, v4

    iget-object v1, v1, LEg;->a:Landroid/view/View;

    invoke-static {v1, v0, p1, v2, v3}, Lvb;->n(Landroid/view/View;FFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lvb;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsb;

    iget-object v4, v3, Lsb;->e:LEg;

    iget-object v4, v4, LEg;->a:Landroid/view/View;

    iget v5, v3, Lsb;->i:F

    iget v3, v3, Lsb;->j:F

    invoke-static {v4, v0, p1, v5, v3}, Lvb;->n(Landroid/view/View;FFFF)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->E(FF)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final m([F)V
    .locals 3

    iget v0, p0, Lvb;->o:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lvb;->j:F

    iget v2, p0, Lvb;->h:F

    add-float/2addr v0, v2

    iget-object v2, p0, Lvb;->c:LEg;

    iget-object v2, v2, LEg;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lvb;->c:LEg;

    iget-object v0, v0, LEg;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    :goto_0
    iget v0, p0, Lvb;->o:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lvb;->k:F

    iget v2, p0, Lvb;->i:F

    add-float/2addr v0, v2

    iget-object p0, p0, Lvb;->c:LEg;

    iget-object p0, p0, LEg;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v0, p0

    aput v0, p1, v1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lvb;->c:LEg;

    iget-object p0, p0, LEg;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    aput p0, p1, v1

    :goto_1
    return-void
.end method

.method public final o(LEg;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, v0, Lvb;->n:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    return-void

    :cond_1
    iget-object v2, v0, Lvb;->m:Lvj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Lvb;->j:F

    iget v4, v0, Lvb;->h:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    iget v4, v0, Lvb;->k:F

    iget v5, v0, Lvb;->i:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v1, LEg;->a:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v1, LEg;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    cmpg-float v5, v5, v7

    if-gez v5, :cond_2

    return-void

    :cond_2
    iget-object v5, v0, Lvb;->u:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lvb;->u:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lvb;->v:Ljava/util/ArrayList;

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v0, Lvb;->v:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_0
    iget v5, v0, Lvb;->j:F

    iget v7, v0, Lvb;->h:F

    add-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v7, v0, Lvb;->k:F

    iget v8, v0, Lvb;->i:F

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v9, v7

    add-int v10, v5, v8

    div-int/2addr v10, v3

    add-int v11, v7, v9

    div-int/2addr v11, v3

    iget-object v12, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object v12

    invoke-virtual {v12}, Lng;->v()I

    move-result v13

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_8

    invoke-virtual {v12, v15}, Lng;->u(I)Landroid/view/View;

    move-result-object v14

    if-ne v14, v6, :cond_4

    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v7

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v3

    if-lt v3, v7, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v3

    if-gt v3, v9, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v3

    if-lt v3, v5, :cond_5

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v3

    if-le v3, v8, :cond_6

    :cond_5
    move/from16 v18, v5

    move/from16 v19, v7

    const/16 v17, 0x2

    goto :goto_3

    :cond_6
    iget-object v3, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v14}, Landroidx/recyclerview/widget/RecyclerView;->M(Landroid/view/View;)LEg;

    move-result-object v3

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v18

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v19

    add-int v19, v19, v18

    const/16 v17, 0x2

    div-int/lit8 v19, v19, 0x2

    sub-int v18, v10, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v19

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    add-int v14, v14, v19

    div-int/lit8 v14, v14, 0x2

    sub-int v14, v11, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    mul-int v18, v18, v18

    mul-int/2addr v14, v14

    add-int v14, v14, v18

    iget-object v1, v0, Lvb;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v18, v5

    move/from16 v19, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v5, v1, :cond_7

    move/from16 v20, v1

    iget-object v1, v0, Lvb;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v14, v1, :cond_7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v20

    goto :goto_2

    :cond_7
    iget-object v1, v0, Lvb;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, v0, Lvb;->v:Ljava/util/ArrayList;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v17

    move/from16 v5, v18

    move/from16 v7, v19

    goto/16 :goto_1

    :cond_8
    iget-object v1, v0, Lvb;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_9

    return-void

    :cond_9
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v8, v4, v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v9, :cond_f

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LEg;

    if-lez v7, :cond_a

    iget-object v13, v12, LEg;->a:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    sub-int/2addr v13, v3

    if-gez v13, :cond_a

    iget-object v15, v12, LEg;->a:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v15

    move-object/from16 v16, v1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v1

    if-le v15, v1, :cond_b

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v11, :cond_b

    move v11, v1

    move-object v10, v12

    goto :goto_5

    :cond_a
    move-object/from16 v16, v1

    :cond_b
    :goto_5
    if-gez v7, :cond_c

    iget-object v1, v12, LEg;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, v2

    if-lez v1, :cond_c

    iget-object v13, v12, LEg;->a:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v15

    if-ge v13, v15, :cond_c

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v11, :cond_c

    move v11, v1

    move-object v10, v12

    :cond_c
    if-gez v8, :cond_d

    iget-object v1, v12, LEg;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, v4

    if-lez v1, :cond_d

    iget-object v13, v12, LEg;->a:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v15

    if-ge v13, v15, :cond_d

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v11, :cond_d

    move v11, v1

    move-object v10, v12

    :cond_d
    if-lez v8, :cond_e

    iget-object v1, v12, LEg;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, v5

    if-gez v1, :cond_e

    iget-object v13, v12, LEg;->a:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v15

    if-le v13, v15, :cond_e

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v11, :cond_e

    move v11, v1

    move-object v10, v12

    :cond_e
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_4

    :cond_f
    if-nez v10, :cond_10

    iget-object v1, v0, Lvb;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v0, Lvb;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_10
    invoke-virtual {v10}, LEg;->b()I

    invoke-virtual/range {p1 .. p1}, LEg;->b()I

    iget-object v0, v0, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "rv"

    invoke-static {v0, v1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final p(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lvb;->w:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lvb;->w:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final q(LEg;I)V
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    const/16 v13, 0x8

    iget-object v0, v10, Lvb;->c:LEg;

    if-ne v11, v0, :cond_0

    iget v0, v10, Lvb;->n:I

    if-ne v12, v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, v10, Lvb;->B:J

    iget v3, v10, Lvb;->n:I

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v14}, Lvb;->k(LEg;Z)V

    iput v12, v10, Lvb;->n:I

    const/4 v15, 0x2

    if-ne v12, v15, :cond_2

    if-eqz v11, :cond_1

    iget-object v0, v11, LEg;->a:Landroid/view/View;

    iput-object v0, v10, Lvb;->w:Landroid/view/View;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must pass a ViewHolder when dragging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    mul-int/lit8 v0, v12, 0x8

    add-int/2addr v0, v13

    shl-int v0, v14, v0

    add-int/lit8 v16, v0, -0x1

    iget-object v9, v10, Lvb;->c:LEg;

    iget-object v8, v10, Lvb;->m:Lvj;

    const/16 v7, 0x101

    const/4 v6, 0x0

    if-eqz v9, :cond_14

    iget-object v0, v9, LEg;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_13

    if-ne v3, v15, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    iget v0, v10, Lvb;->n:I

    if-ne v0, v15, :cond_5

    :cond_4
    :goto_1
    move v1, v6

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v10, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v1, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LSm;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {v7, v0}, Lvj;->b(II)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/2addr v0, v13

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget v1, v10, Lvb;->h:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v10, Lvb;->i:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    invoke-virtual {v10, v9, v0}, Lvb;->h(LEg;I)I

    move-result v1

    if-lez v1, :cond_7

    and-int v0, v14, v1

    if-nez v0, :cond_a

    iget-object v0, v10, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, LSm;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {v1, v0}, Lvj;->c(II)I

    move-result v1

    goto :goto_2

    :cond_7
    invoke-virtual {v10, v9, v0}, Lvb;->j(LEg;I)I

    move-result v1

    if-lez v1, :cond_4

    goto :goto_2

    :cond_8
    invoke-virtual {v10, v9, v0}, Lvb;->j(LEg;I)I

    move-result v1

    if-lez v1, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v10, v9, v0}, Lvb;->h(LEg;I)I

    move-result v1

    if-lez v1, :cond_4

    and-int v0, v14, v1

    if-nez v0, :cond_a

    iget-object v0, v10, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, LSm;->d(Landroid/view/View;)I

    move-result v0

    invoke-static {v1, v0}, Lvj;->c(II)I

    move-result v1

    :cond_a
    :goto_2
    move v4, v1

    :goto_3
    iget-object v0, v10, Lvb;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v5, v10, Lvb;->t:Landroid/view/VelocityTracker;

    :cond_b
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq v4, v14, :cond_d

    if-eq v4, v15, :cond_d

    if-eq v4, v0, :cond_c

    if-eq v4, v13, :cond_c

    const/16 v2, 0x10

    if-eq v4, v2, :cond_c

    const/16 v2, 0x20

    if-eq v4, v2, :cond_c

    move/from16 v18, v1

    move/from16 v19, v18

    goto :goto_4

    :cond_c
    iget v2, v10, Lvb;->h:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object v0, v10, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v2, v0

    move/from16 v19, v1

    move/from16 v18, v2

    goto :goto_4

    :cond_d
    iget v0, v10, Lvb;->i:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v2, v10, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    move/from16 v19, v0

    move/from16 v18, v1

    :goto_4
    if-ne v3, v15, :cond_e

    move v2, v13

    goto :goto_5

    :cond_e
    if-lez v4, :cond_f

    move v2, v15

    goto :goto_5

    :cond_f
    const/4 v2, 0x4

    :goto_5
    iget-object v0, v10, Lvb;->b:[F

    invoke-virtual {v10, v0}, Lvb;->m([F)V

    aget v17, v0, v6

    aget v20, v0, v14

    new-instance v1, Lsb;

    move-object v0, v1

    move-object v14, v1

    move-object/from16 v1, p0

    move v15, v2

    move-object v2, v9

    move/from16 v21, v4

    move/from16 v4, v17

    move/from16 v5, v20

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v17, v8

    move/from16 v8, v21

    move-object/from16 v18, v9

    invoke-direct/range {v0 .. v9}, Lsb;-><init>(Lvb;LEg;IFFFFILEg;)V

    iget-object v0, v10, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Ljg;

    move-result-object v0

    if-nez v0, :cond_11

    if-ne v15, v13, :cond_10

    const-wide/16 v0, 0xc8

    goto :goto_6

    :cond_10
    const-wide/16 v0, 0xfa

    goto :goto_6

    :cond_11
    if-ne v15, v13, :cond_12

    iget-wide v0, v0, Ljg;->e:J

    goto :goto_6

    :cond_12
    iget-wide v0, v0, Ljg;->d:J

    :goto_6
    iget-object v2, v14, Lsb;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v10, Lvb;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v18

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, LEg;->q(Z)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    move-object/from16 v2, v17

    const/4 v0, 0x0

    const/4 v6, 0x1

    goto :goto_7

    :cond_13
    move v3, v6

    move-object/from16 v17, v8

    move-object v1, v9

    invoke-virtual {v10, v0}, Lvb;->p(Landroid/view/View;)V

    iget-object v0, v10, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v2, v17

    invoke-virtual {v2, v0, v1}, Lvj;->a(Landroidx/recyclerview/widget/RecyclerView;LEg;)V

    const/4 v0, 0x0

    :goto_7
    iput-object v0, v10, Lvb;->c:LEg;

    goto :goto_8

    :cond_14
    move v3, v6

    move-object v2, v8

    :goto_8
    if-eqz v11, :cond_15

    iget-object v0, v10, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, LSm;->d(Landroid/view/View;)I

    move-result v0

    const/16 v1, 0x101

    invoke-static {v1, v0}, Lvj;->b(II)I

    move-result v0

    and-int v0, v0, v16

    iget v1, v10, Lvb;->n:I

    mul-int/2addr v1, v13

    shr-int/2addr v0, v1

    iput v0, v10, Lvb;->o:I

    iget-object v0, v11, LEg;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iput v1, v10, Lvb;->j:F

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iput v1, v10, Lvb;->k:F

    iput-object v11, v10, Lvb;->c:LEg;

    const/4 v1, 0x2

    if-ne v12, v1, :cond_15

    invoke-virtual {v0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_15
    iget-object v0, v10, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v1, v10, Lvb;->c:LEg;

    if-eqz v1, :cond_16

    const/4 v3, 0x1

    :cond_16
    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_17
    if-nez v6, :cond_18

    iget-object v0, v10, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lng;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lng;->f:Z

    :cond_18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v10, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final r(IILandroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p3, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    iget p3, p0, Lvb;->d:F

    sub-float/2addr v0, p3

    iput v0, p0, Lvb;->h:F

    iget p3, p0, Lvb;->e:F

    sub-float/2addr p2, p3

    iput p2, p0, Lvb;->i:F

    and-int/lit8 p2, p1, 0x4

    const/4 p3, 0x0

    if-nez p2, :cond_0

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lvb;->h:F

    :cond_0
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_1

    iget p2, p0, Lvb;->h:F

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lvb;->h:F

    :cond_1
    and-int/lit8 p2, p1, 0x1

    if-nez p2, :cond_2

    iget p2, p0, Lvb;->i:F

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lvb;->i:F

    :cond_2
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    iget p1, p0, Lvb;->i:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lvb;->i:F

    :cond_3
    return-void
.end method
