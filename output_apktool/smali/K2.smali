.class public final LK2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqg;


# instance fields
.field public final a:Landroidx/recyclerview/widget/RecyclerView;

.field public final b:LY0;

.field public c:Z

.field public final d:Landroid/os/Handler;

.field public final e:I

.field public final f:F

.field public g:Ljava/lang/String;

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:Ljava/lang/String;

.field public m:Landroid/graphics/drawable/BitmapDrawable;

.field public n:F

.field public o:F

.field public final p:LO;

.field public final q:LJ2;

.field public r:Landroid/animation/ValueAnimator;

.field public s:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;LY0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, LK2;->b:LY0;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, LK2;->d:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, LK2;->e:I

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr p2, v0

    iput p2, p0, LK2;->f:F

    new-instance p2, LO;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, LO;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, LK2;->p:LO;

    new-instance p2, LJ2;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p0}, LJ2;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, LK2;->q:LJ2;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "rv"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, LK2;->c:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget-object v1, p0, LK2;->p:LO;

    iget-object v2, p0, LK2;->d:Landroid/os/Handler;

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, LK2;->l:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, LK2;->f(Landroid/view/MotionEvent;)V

    return v4

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, LK2;->j:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, LK2;->k:F

    iget-object p1, p0, LK2;->g:Ljava/lang/String;

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v4, p0, LK2;->h:F

    sub-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v4, p0, LK2;->e:I

    int-to-float v4, v4

    cmpl-float p1, p1, v4

    if-gtz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p2, p0, LK2;->i:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_a

    :cond_3
    iput-object v3, p0, LK2;->g:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, LK2;->l:Ljava/lang/String;

    if-eqz p1, :cond_5

    move v0, v4

    :cond_5
    invoke-virtual {p0}, LK2;->d()V

    return v0

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, LK2;->h:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, LK2;->i:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, LK2;->j:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, LK2;->k:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v4, p0, LK2;->b:LY0;

    iget-object v5, p0, LK2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v5, p1, p2}, LY0;->g(Landroidx/recyclerview/widget/RecyclerView;FF)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p2, v4, LY0;->h:Ljava/lang/Object;

    div-int/lit8 v4, p1, 0xa

    invoke-static {p2, v4}, LL4;->x0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_7

    rem-int/lit8 p1, p1, 0xa

    invoke-static {p2, p1}, LL4;->x0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2;

    goto :goto_0

    :cond_7
    move-object p1, v3

    :goto_0
    instance-of p2, p1, Lu2;

    if-eqz p2, :cond_8

    check-cast p1, Lu2;

    goto :goto_1

    :cond_8
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_9

    iget-object p1, p1, Lu2;->a:Lcom/omoda/launcher/data/AppInfo;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    :cond_9
    iput-object v3, p0, LK2;->g:Ljava/lang/String;

    if-eqz v3, :cond_a

    const-wide/16 p0, 0x190

    invoke-virtual {v2, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_2
    return v0
.end method

.method public final c(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "rv"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, LK2;->f(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LK2;->d()V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, LK2;->g:Ljava/lang/String;

    iget-object v1, p0, LK2;->d:Landroid/os/Handler;

    iget-object v2, p0, LK2;->p:LO;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, LK2;->s:Z

    iget-object v2, p0, LK2;->q:LJ2;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, LK2;->m:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v2, p0, LK2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object v0, p0, LK2;->m:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, LK2;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    iput-object v0, p0, LK2;->l:Ljava/lang/String;

    iget-object p0, p0, LK2;->b:LY0;

    invoke-virtual {p0, v0}, LY0;->j(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 6

    iget-object v0, p0, LK2;->m:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v4, p0, LK2;->j:F

    iget v5, p0, LK2;->n:F

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    iget v5, p0, LK2;->k:F

    iget p0, p0, LK2;->o:F

    mul-float/2addr p0, v2

    sub-float/2addr v5, p0

    float-to-int p0, v4

    float-to-int v2, v5

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-float/2addr v5, v3

    float-to-int v3, v5

    invoke-virtual {v0, p0, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public final f(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, LK2;->j:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, LK2;->k:F

    invoke-virtual {p0}, LK2;->e()V

    invoke-virtual {p0}, LK2;->g()V

    iget p1, p0, LK2;->j:F

    iget v0, p0, LK2;->f:F

    cmpg-float v1, p1, v0

    iget-object v2, p0, LK2;->q:LJ2;

    iget-object v3, p0, LK2;->d:Landroid/os/Handler;

    if-ltz v1, :cond_1

    iget-object v1, p0, LK2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, LK2;->s:Z

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean p1, p0, LK2;->s:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, LK2;->s:Z

    const-wide/16 p0, 0x258

    invoke-virtual {v3, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public final g()V
    .locals 6

    iget-object v0, p0, LK2;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, LK2;->j:F

    iget v2, p0, LK2;->k:F

    iget-object v3, p0, LK2;->b:LY0;

    iget-object p0, p0, LK2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p0, v1, v2}, LY0;->g(Landroidx/recyclerview/widget/RecyclerView;FF)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object v1, v3, LY0;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v5}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    :goto_1
    if-gez v4, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v0, v3, LY0;->i:Ljava/util/List;

    invoke-static {v0}, LM4;->o0(Ljava/util/List;)I

    move-result v0

    invoke-static {p0, v2, v0}, Lvf;->f(III)I

    move-result p0

    if-ne v4, p0, :cond_4

    goto :goto_5

    :cond_4
    iget-object v0, v3, LY0;->i:Ljava/util/List;

    invoke-static {v0}, LL4;->D0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-object v0, v3, LY0;->i:Ljava/util/List;

    iget-object p0, v3, LY0;->g:LIa;

    iget v1, p0, LIa;->a:I

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v2}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object p0, p0, LIa;->b:Lcom/omoda/launcher/data/PrefsAppOrderStore;

    invoke-interface {p0, v1}, Lcom/omoda/launcher/data/AppOrderStore;->save(Ljava/util/List;)V

    goto :goto_4

    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v2}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object p0, p0, LIa;->b:Lcom/omoda/launcher/data/PrefsAppOrderStore;

    invoke-interface {p0, v1}, Lcom/omoda/launcher/data/AppOrderStore;->save(Ljava/util/List;)V

    :goto_4
    invoke-virtual {v3}, LY0;->i()V

    :cond_7
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
