.class public final Lug;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/List;

.field public e:I

.field public f:I

.field public g:Ltg;

.field public final synthetic h:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lug;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lug;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lug;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lug;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lug;->d:Ljava/util/List;

    const/4 p1, 0x2

    iput p1, p0, Lug;->e:I

    iput p1, p0, Lug;->f:I

    return-void
.end method


# virtual methods
.method public final a(LEg;Z)V
    .locals 4

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->l(LEg;)V

    iget-object v0, p0, Lug;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->o0:LGg;

    const/4 v2, 0x0

    iget-object v3, p1, LEg;->a:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v1, LGg;->e:LFg;

    if-eqz v1, :cond_0

    iget-object v1, v1, LFg;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v3}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v3, v1}, Lhn;->h(Landroid/view/View;Lt;)V

    :cond_1
    if-eqz p2, :cond_4

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->o:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->h0:LAg;

    if-eqz p2, :cond_2

    iget-object p2, v0, Landroidx/recyclerview/widget/RecyclerView;->g:LK1;

    invoke-virtual {p2, p1}, LK1;->M(LEg;)V

    :cond_2
    sget-boolean p2, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "dispatchViewRecycled: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RecyclerView"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_4
    :goto_1
    iput-object v2, p1, LEg;->s:Lfg;

    iput-object v2, p1, LEg;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lug;->c()Ltg;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p1, LEg;->f:I

    invoke-virtual {p0, p2}, Ltg;->a(I)Lsg;

    move-result-object v0

    iget-object v0, v0, Lsg;->a:Ljava/util/ArrayList;

    iget-object p0, p0, Ltg;->a:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lsg;

    iget p0, p0, Lsg;->b:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gt p0, p2, :cond_5

    invoke-static {v3}, Lvf;->d(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    if-eqz p0, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "this scrap item already exists"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    invoke-virtual {p1}, LEg;->p()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    return-void
.end method

.method public final b(I)I
    .locals 3

    iget-object p0, p0, Lug;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:LAg;

    invoke-virtual {v0}, LAg;->b()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:LAg;

    iget-boolean v0, v0, LAg;->g:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->e:Ly0;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ly0;->g(II)I

    move-result p0

    return p0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView;->h0:LAg;

    invoke-virtual {p1}, LAg;->b()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->C()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ltg;
    .locals 2

    iget-object v0, p0, Lug;->g:Ltg;

    if-nez v0, :cond_0

    new-instance v0, Ltg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Ltg;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput v1, v0, Ltg;->b:I

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Ltg;->c:Ljava/util/Set;

    iput-object v0, p0, Lug;->g:Ltg;

    invoke-virtual {p0}, Lug;->d()V

    :cond_0
    iget-object p0, p0, Lug;->g:Ltg;

    return-object p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lug;->g:Ltg;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lug;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    if-eqz p0, :cond_0

    iget-object p0, v0, Ltg;->c:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final e(Lfg;Z)V
    .locals 3

    iget-object p0, p0, Lug;->g:Ltg;

    if-eqz p0, :cond_1

    iget-object v0, p0, Ltg;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object v0, p0, Ltg;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsg;

    iget-object v0, v0, Lsg;->a:Ljava/util/ArrayList;

    move v1, p1

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LEg;

    iget-object v2, v2, LEg;->a:Landroid/view/View;

    invoke-static {v2}, Lvf;->d(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lug;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lug;->g(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->G0:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lug;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView;->g0:Lsa;

    iget-object v0, p0, Lsa;->c:[I

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lsa;->d:I

    :cond_2
    return-void
.end method

.method public final g(I)V
    .locals 5

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    const-string v1, "RecyclerView"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Recycling cached view at index "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lug;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LEg;

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CachedViewHolder to be recycled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v2, v1}, Lug;->a(LEg;Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public final h(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/view/View;)LEg;

    move-result-object v0

    invoke-virtual {v0}, LEg;->m()Z

    move-result v1

    iget-object v2, p0, Lug;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v2, p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, LEg;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, LEg;->n:Lug;

    invoke-virtual {p1, v0}, Lug;->l(LEg;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LEg;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, v0, LEg;->j:I

    and-int/lit8 p1, p1, -0x21

    iput p1, v0, LEg;->j:I

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lug;->i(LEg;)V

    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->M:Ljg;

    if-eqz p0, :cond_3

    invoke-virtual {v0}, LEg;->j()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, v2, Landroidx/recyclerview/widget/RecyclerView;->M:Ljg;

    invoke-virtual {p0, v0}, Ljg;->d(LEg;)V

    :cond_3
    return-void
.end method

.method public final i(LEg;)V
    .locals 12

    invoke-virtual {p1}, LEg;->l()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lug;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p1, LEg;->a:Landroid/view/View;

    if-nez v0, :cond_11

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p1}, LEg;->m()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, LEg;->r()Z

    move-result v0

    if-nez v0, :cond_f

    iget v0, p1, LEg;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    sget-object v0, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v4}, LRm;->i(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v5, v3, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    sget-boolean v5, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    iget-object v6, p0, Lug;->c:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cached view received recycle internal? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Lpi;->g(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p1}, LEg;->j()Z

    move-result v5

    if-eqz v5, :cond_c

    iget v5, p0, Lug;->f:I

    if-lez v5, :cond_a

    const/16 v5, 0x20e

    invoke-virtual {p1, v5}, LEg;->f(I)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v7, p0, Lug;->f:I

    if-lt v5, v7, :cond_4

    if-lez v5, :cond_4

    invoke-virtual {p0, v1}, Lug;->g(I)V

    add-int/lit8 v5, v5, -0x1

    :cond_4
    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->G0:Z

    if-eqz v7, :cond_9

    if-lez v5, :cond_9

    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->g0:Lsa;

    iget v8, p1, LEg;->c:I

    iget-object v9, v7, Lsa;->c:[I

    if-eqz v9, :cond_6

    iget v9, v7, Lsa;->d:I

    mul-int/lit8 v9, v9, 0x2

    move v10, v1

    :goto_2
    if-ge v10, v9, :cond_6

    iget-object v11, v7, Lsa;->c:[I

    aget v11, v11, v10

    if-ne v11, v8, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    :cond_6
    sub-int/2addr v5, v2

    :goto_3
    if-ltz v5, :cond_8

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LEg;

    iget v7, v7, LEg;->c:I

    iget-object v8, v3, Landroidx/recyclerview/widget/RecyclerView;->g0:Lsa;

    iget-object v9, v8, Lsa;->c:[I

    if-eqz v9, :cond_8

    iget v9, v8, Lsa;->d:I

    mul-int/lit8 v9, v9, 0x2

    move v10, v1

    :goto_4
    if-ge v10, v9, :cond_8

    iget-object v11, v8, Lsa;->c:[I

    aget v11, v11, v10

    if-ne v11, v7, :cond_7

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v10, v10, 0x2

    goto :goto_4

    :cond_8
    add-int/2addr v5, v2

    :cond_9
    :goto_5
    invoke-virtual {v6, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v5, v2

    goto :goto_6

    :cond_a
    move v5, v1

    :goto_6
    if-nez v5, :cond_b

    invoke-virtual {p0, p1, v2}, Lug;->a(LEg;Z)V

    :goto_7
    move v1, v5

    goto :goto_8

    :cond_b
    move v2, v1

    goto :goto_7

    :cond_c
    sget-boolean p0, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    if-eqz p0, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "trying to recycle a non-recycleable holder. Hopefully, it will re-visit here. We are still removing it from animation lists"

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "RecyclerView"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move v2, v1

    :goto_8
    iget-object p0, v3, Landroidx/recyclerview/widget/RecyclerView;->g:LK1;

    invoke-virtual {p0, p1}, LK1;->M(LEg;)V

    if-nez v1, :cond_e

    if-nez v2, :cond_e

    if-eqz v0, :cond_e

    invoke-static {v4}, Lvf;->d(Landroid/view/View;)V

    const/4 p0, 0x0

    iput-object p0, p1, LEg;->s:Lfg;

    iput-object p0, p1, LEg;->r:Landroidx/recyclerview/widget/RecyclerView;

    :cond_e
    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p1}, Lpi;->g(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0}, Lpi;->g(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, LEg;->l()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isAttached:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_12

    move v1, v2

    :cond_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->C()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/view/View;)LEg;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, LEg;->f(I)Z

    move-result v0

    iget-object v1, p0, Lug;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_2

    invoke-virtual {p1}, LEg;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->M:Ljg;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, LEg;->e()Ljava/util/List;

    move-result-object v2

    check-cast v0, LQ6;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v0, v0, LQ6;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, LEg;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lug;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lug;->b:Ljava/util/ArrayList;

    :cond_1
    iput-object p0, p1, LEg;->n:Lug;

    const/4 v0, 0x1

    iput-boolean v0, p1, LEg;->o:Z

    iget-object p0, p0, Lug;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, LEg;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, LEg;->k()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    iget-boolean v0, v0, Lfg;->b:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lpi;->g(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    iput-object p0, p1, LEg;->n:Lug;

    const/4 v0, 0x0

    iput-boolean v0, p1, LEg;->o:Z

    iget-object p0, p0, Lug;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public final k(IJ)LEg;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, -0x1

    const/4 v3, 0x1

    iget-object v4, v0, Lug;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-ltz v1, :cond_56

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->h0:LAg;

    invoke-virtual {v5}, LAg;->b()I

    move-result v5

    if-ge v1, v5, :cond_56

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->h0:LAg;

    iget-boolean v6, v5, LAg;->g:Z

    const/4 v8, 0x0

    const/16 v9, 0x20

    if-eqz v6, :cond_6

    iget-object v6, v0, Lug;->b:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    :cond_0
    move v10, v8

    :goto_0
    if-ge v10, v6, :cond_2

    iget-object v11, v0, Lug;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LEg;

    invoke-virtual {v11}, LEg;->s()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v11}, LEg;->d()I

    move-result v12

    if-ne v12, v1, :cond_1

    invoke-virtual {v11, v9}, LEg;->a(I)V

    goto :goto_3

    :cond_1
    add-int/2addr v10, v3

    goto :goto_0

    :cond_2
    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    iget-boolean v10, v10, Lfg;->b:Z

    if-eqz v10, :cond_4

    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->e:Ly0;

    invoke-virtual {v10, v1, v8}, Ly0;->g(II)I

    move-result v10

    if-lez v10, :cond_4

    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    invoke-virtual {v11}, Lfg;->a()I

    move-result v11

    if-ge v10, v11, :cond_4

    iget-object v11, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    invoke-virtual {v11, v10}, Lfg;->b(I)J

    move-result-wide v10

    move v12, v8

    :goto_1
    if-ge v12, v6, :cond_4

    iget-object v13, v0, Lug;->b:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LEg;

    invoke-virtual {v13}, LEg;->s()Z

    move-result v14

    if-nez v14, :cond_3

    iget-wide v14, v13, LEg;->e:J

    cmp-long v14, v14, v10

    if-nez v14, :cond_3

    invoke-virtual {v13, v9}, LEg;->a(I)V

    move-object v11, v13

    goto :goto_3

    :cond_3
    add-int/2addr v12, v3

    goto :goto_1

    :cond_4
    :goto_2
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_5

    move v6, v3

    goto :goto_4

    :cond_5
    move v6, v8

    goto :goto_4

    :cond_6
    move v6, v8

    const/4 v11, 0x0

    :goto_4
    iget-object v10, v0, Lug;->c:Ljava/util/ArrayList;

    iget-object v12, v0, Lug;->a:Ljava/util/ArrayList;

    const-string v13, "RecyclerView"

    if-nez v11, :cond_1f

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v14, v8

    :goto_5
    if-ge v14, v11, :cond_9

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LEg;

    invoke-virtual {v15}, LEg;->s()Z

    move-result v16

    if-nez v16, :cond_8

    invoke-virtual {v15}, LEg;->d()I

    move-result v7

    if-ne v7, v1, :cond_8

    invoke-virtual {v15}, LEg;->i()Z

    move-result v7

    if-nez v7, :cond_8

    iget-boolean v7, v5, LAg;->g:Z

    if-nez v7, :cond_7

    invoke-virtual {v15}, LEg;->k()Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    invoke-virtual {v15, v9}, LEg;->a(I)V

    move-object v11, v15

    goto/16 :goto_b

    :cond_8
    add-int/2addr v14, v3

    goto :goto_5

    :cond_9
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->f:Lo4;

    iget-object v7, v7, Lo4;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v14, v8

    :goto_6
    if-ge v14, v11, :cond_b

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/view/View;)LEg;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, LEg;->d()I

    move-result v9

    if-ne v9, v1, :cond_a

    invoke-virtual/range {v17 .. v17}, LEg;->i()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual/range {v17 .. v17}, LEg;->k()Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_7

    :cond_a
    add-int/2addr v14, v3

    const/16 v9, 0x20

    goto :goto_6

    :cond_b
    const/4 v15, 0x0

    :goto_7
    if-eqz v15, :cond_11

    invoke-static {v15}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/view/View;)LEg;

    move-result-object v7

    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->f:Lo4;

    iget-object v11, v9, Lo4;->a:Leg;

    iget-object v11, v11, Leg;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    if-ltz v11, :cond_10

    iget-object v14, v9, Lo4;->b:Ln4;

    invoke-virtual {v14, v11}, Ln4;->d(I)Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-virtual {v14, v11}, Ln4;->a(I)V

    invoke-virtual {v9, v15}, Lo4;->j(Landroid/view/View;)V

    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->f:Lo4;

    iget-object v11, v9, Lo4;->a:Leg;

    iget-object v11, v11, Leg;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11, v15}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v11

    if-ne v11, v2, :cond_c

    :goto_8
    move v11, v2

    goto :goto_9

    :cond_c
    iget-object v9, v9, Lo4;->b:Ln4;

    invoke-virtual {v9, v11}, Ln4;->d(I)Z

    move-result v14

    if-eqz v14, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v9, v11}, Ln4;->b(I)I

    move-result v9

    sub-int/2addr v11, v9

    :goto_9
    if-eq v11, v2, :cond_e

    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->f:Lo4;

    invoke-virtual {v9, v11}, Lo4;->c(I)V

    invoke-virtual {v0, v15}, Lug;->j(Landroid/view/View;)V

    const/16 v9, 0x2020

    invoke-virtual {v7, v9}, LEg;->a(I)V

    move-object v11, v7

    goto/16 :goto_b

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1}, Lpi;->g(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to unhide a view that was not hidden"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v8

    :goto_a
    if-ge v9, v7, :cond_13

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LEg;

    invoke-virtual {v11}, LEg;->i()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v11}, LEg;->d()I

    move-result v14

    if-ne v14, v1, :cond_12

    invoke-virtual {v11}, LEg;->g()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    if-eqz v7, :cond_14

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "getScrapOrHiddenOrCachedHolderForPosition("

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") found match in cache: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_12
    add-int/2addr v9, v3

    goto :goto_a

    :cond_13
    const/4 v11, 0x0

    :cond_14
    :goto_b
    if-eqz v11, :cond_1f

    invoke-virtual {v11}, LEg;->k()Z

    move-result v7

    if-eqz v7, :cond_17

    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    if-eqz v7, :cond_16

    iget-boolean v7, v5, LAg;->g:Z

    if-eqz v7, :cond_15

    goto :goto_c

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "should not receive a removed view unless it is pre layout"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lpi;->g(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_c
    iget-boolean v7, v5, LAg;->g:Z

    goto :goto_d

    :cond_17
    iget v7, v11, LEg;->c:I

    if-ltz v7, :cond_1e

    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    invoke-virtual {v9}, Lfg;->a()I

    move-result v9

    if-ge v7, v9, :cond_1e

    iget-boolean v7, v5, LAg;->g:Z

    if-nez v7, :cond_19

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v11, LEg;->f:I

    if-eqz v7, :cond_19

    :cond_18
    move v7, v8

    goto :goto_d

    :cond_19
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    iget-boolean v9, v7, Lfg;->b:Z

    if-eqz v9, :cond_1a

    iget-wide v14, v11, LEg;->e:J

    iget v9, v11, LEg;->c:I

    invoke-virtual {v7, v9}, Lfg;->b(I)J

    move-result-wide v19

    cmp-long v7, v14, v19

    if-nez v7, :cond_18

    :cond_1a
    move v7, v3

    :goto_d
    if-nez v7, :cond_1d

    const/4 v7, 0x4

    invoke-virtual {v11, v7}, LEg;->a(I)V

    invoke-virtual {v11}, LEg;->l()Z

    move-result v7

    if-eqz v7, :cond_1b

    iget-object v7, v11, LEg;->a:Landroid/view/View;

    invoke-virtual {v4, v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v7, v11, LEg;->n:Lug;

    invoke-virtual {v7, v11}, Lug;->l(LEg;)V

    goto :goto_e

    :cond_1b
    invoke-virtual {v11}, LEg;->s()Z

    move-result v7

    if-eqz v7, :cond_1c

    iget v7, v11, LEg;->j:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v11, LEg;->j:I

    :cond_1c
    :goto_e
    invoke-virtual {v0, v11}, Lug;->i(LEg;)V

    const/4 v11, 0x0

    goto :goto_f

    :cond_1d
    move v6, v3

    goto :goto_f

    :cond_1e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1}, Lpi;->g(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    :goto_f
    const-wide/16 v19, 0x4

    const-wide/16 v21, 0x0

    const-wide v23, 0x7fffffffffffffffL

    if-nez v11, :cond_35

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->e:Ly0;

    invoke-virtual {v7, v1, v8}, Ly0;->g(II)I

    move-result v7

    if-ltz v7, :cond_34

    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    invoke-virtual {v9}, Lfg;->a()I

    move-result v9

    if-ge v7, v9, :cond_34

    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    iget-boolean v14, v9, Lfg;->b:Z

    if-eqz v14, :cond_28

    invoke-virtual {v9, v7}, Lfg;->b(I)J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v3

    :goto_10
    if-ltz v9, :cond_23

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, LEg;

    iget-wide v2, v11, LEg;->e:J

    cmp-long v2, v2, v14

    if-nez v2, :cond_22

    invoke-virtual {v11}, LEg;->s()Z

    move-result v2

    if-nez v2, :cond_22

    iget v2, v11, LEg;->f:I

    if-nez v2, :cond_21

    const/16 v2, 0x20

    invoke-virtual {v11, v2}, LEg;->a(I)V

    invoke-virtual {v11}, LEg;->k()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, v5, LAg;->g:Z

    if-nez v2, :cond_20

    iget v2, v11, LEg;->j:I

    and-int/lit8 v2, v2, -0xf

    or-int/lit8 v2, v2, 0x2

    iput v2, v11, LEg;->j:I

    :cond_20
    move-object v3, v11

    goto :goto_14

    :cond_21
    const/16 v2, 0x20

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v11, LEg;->a:Landroid/view/View;

    invoke-virtual {v4, v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/view/View;)LEg;

    move-result-object v3

    const/4 v11, 0x0

    iput-object v11, v3, LEg;->n:Lug;

    iput-boolean v8, v3, LEg;->o:Z

    iget v11, v3, LEg;->j:I

    and-int/lit8 v11, v11, -0x21

    iput v11, v3, LEg;->j:I

    invoke-virtual {v0, v3}, Lug;->i(LEg;)V

    :goto_11
    const/4 v3, -0x1

    goto :goto_12

    :cond_22
    const/16 v2, 0x20

    goto :goto_11

    :goto_12
    add-int/2addr v9, v3

    move v2, v3

    const/4 v3, 0x1

    goto :goto_10

    :cond_23
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_13
    if-ltz v2, :cond_25

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LEg;

    iget-wide v11, v3, LEg;->e:J

    cmp-long v9, v11, v14

    if-nez v9, :cond_26

    invoke-virtual {v3}, LEg;->g()Z

    move-result v9

    if-nez v9, :cond_26

    iget v9, v3, LEg;->f:I

    if-nez v9, :cond_24

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_14

    :cond_24
    invoke-virtual {v0, v2}, Lug;->g(I)V

    :cond_25
    const/4 v3, 0x0

    goto :goto_14

    :cond_26
    const/4 v3, -0x1

    add-int/2addr v2, v3

    goto :goto_13

    :goto_14
    if-eqz v3, :cond_27

    iput v7, v3, LEg;->c:I

    move-object v11, v3

    const/4 v6, 0x1

    goto :goto_15

    :cond_27
    move-object v11, v3

    :cond_28
    :goto_15
    if-nez v11, :cond_2d

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    if-eqz v2, :cond_29

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tryGetViewHolderForPositionByDeadline("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") fetching from shared pool"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    invoke-virtual/range {p0 .. p0}, Lug;->c()Ltg;

    move-result-object v2

    iget-object v2, v2, Ltg;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsg;

    if-eqz v2, :cond_2b

    iget-object v2, v2, Lsg;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    :goto_16
    if-ltz v3, :cond_2b

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LEg;

    invoke-virtual {v7}, LEg;->g()Z

    move-result v7

    if-nez v7, :cond_2a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LEg;

    goto :goto_17

    :cond_2a
    const/4 v7, -0x1

    add-int/2addr v3, v7

    goto :goto_16

    :cond_2b
    const/4 v2, 0x0

    :goto_17
    if-eqz v2, :cond_2c

    invoke-virtual {v2}, LEg;->p()V

    sget-boolean v3, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    :cond_2c
    move-object v11, v2

    :cond_2d
    if-nez v11, :cond_35

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v2

    cmp-long v7, p2, v23

    if-eqz v7, :cond_30

    iget-object v7, v0, Lug;->g:Ltg;

    invoke-virtual {v7, v8}, Ltg;->a(I)Lsg;

    move-result-object v7

    iget-wide v9, v7, Lsg;->c:J

    cmp-long v7, v9, v21

    if-eqz v7, :cond_2f

    add-long/2addr v9, v2

    cmp-long v7, v9, p2

    if-gez v7, :cond_2e

    goto :goto_18

    :cond_2e
    move v7, v8

    goto :goto_19

    :cond_2f
    :goto_18
    const/4 v7, 0x1

    :goto_19
    if-nez v7, :cond_30

    const/4 v7, 0x0

    return-object v7

    :cond_30
    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    const-string v9, "RV CreateView"

    invoke-static {v9}, LTl;->a(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Lfg;->e(Landroid/view/ViewGroup;)LEg;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, v11, LEg;->a:Landroid/view/View;

    :try_start_1
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_33

    iput v8, v11, LEg;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, LTl;->b()V

    sget-boolean v9, Landroidx/recyclerview/widget/RecyclerView;->G0:Z

    if-eqz v9, :cond_31

    invoke-static {v7}, Landroidx/recyclerview/widget/RecyclerView;->I(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v7

    if-eqz v7, :cond_31

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v9, v11, LEg;->b:Ljava/lang/ref/WeakReference;

    :cond_31
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v9

    iget-object v7, v0, Lug;->g:Ltg;

    sub-long/2addr v9, v2

    invoke-virtual {v7, v8}, Ltg;->a(I)Lsg;

    move-result-object v2

    iget-wide v14, v2, Lsg;->c:J

    cmp-long v3, v14, v21

    if-nez v3, :cond_32

    goto :goto_1a

    :cond_32
    div-long v14, v14, v19

    const-wide/16 v17, 0x3

    mul-long v14, v14, v17

    div-long v9, v9, v19

    add-long/2addr v9, v14

    :goto_1a
    iput-wide v9, v2, Lsg;->c:J

    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    if-eqz v2, :cond_35

    const-string v2, "tryGetViewHolderForPositionByDeadline created new ViewHolder"

    invoke-static {v13, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :catchall_0
    move-exception v0

    goto :goto_1b

    :cond_33
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewHolder views must not be attached when created. Ensure that you are not passing \'true\' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1b
    invoke-static {}, LTl;->b()V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid item position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "(offset:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ").state:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, LAg;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    :goto_1c
    if-eqz v6, :cond_36

    iget-boolean v2, v5, LAg;->g:Z

    if-nez v2, :cond_36

    const/16 v2, 0x2000

    invoke-virtual {v11, v2}, LEg;->f(I)Z

    move-result v2

    if-eqz v2, :cond_36

    iget v2, v11, LEg;->j:I

    and-int/lit16 v2, v2, -0x2001

    iput v2, v11, LEg;->j:I

    iget-boolean v2, v5, LAg;->j:Z

    if-eqz v2, :cond_36

    invoke-static {v11}, Ljg;->b(LEg;)V

    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->M:Ljg;

    invoke-virtual {v11}, LEg;->e()Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LBe;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v11}, LBe;->a(LEg;)V

    invoke-virtual {v4, v11, v2}, Landroidx/recyclerview/widget/RecyclerView;->a0(LEg;LBe;)V

    :cond_36
    iget-boolean v2, v5, LAg;->g:Z

    iget-object v3, v11, LEg;->a:Landroid/view/View;

    if-eqz v2, :cond_37

    invoke-virtual {v11}, LEg;->h()Z

    move-result v2

    if-eqz v2, :cond_37

    iput v1, v11, LEg;->g:I

    goto :goto_1e

    :cond_37
    invoke-virtual {v11}, LEg;->h()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget v2, v11, LEg;->j:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_38

    const/4 v2, 0x1

    goto :goto_1d

    :cond_38
    move v2, v8

    :goto_1d
    if-nez v2, :cond_3a

    invoke-virtual {v11}, LEg;->i()Z

    move-result v2

    if-eqz v2, :cond_39

    goto :goto_1f

    :cond_39
    :goto_1e
    const/4 v0, 0x1

    goto/16 :goto_2a

    :cond_3a
    :goto_1f
    sget-boolean v2, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    if-eqz v2, :cond_3c

    invoke-virtual {v11}, LEg;->k()Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_20

    :cond_3b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removed holder should be bound and it should come here only in pre-layout. Holder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4, v1}, Lpi;->g(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_20
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->e:Ly0;

    invoke-virtual {v2, v1, v8}, Ly0;->g(II)I

    move-result v2

    const/4 v7, 0x0

    iput-object v7, v11, LEg;->s:Lfg;

    iput-object v4, v11, LEg;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget v9, v11, LEg;->f:I

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v12

    cmp-long v10, p2, v23

    if-eqz v10, :cond_3d

    iget-object v10, v0, Lug;->g:Ltg;

    invoke-virtual {v10, v9}, Ltg;->a(I)Lsg;

    move-result-object v9

    iget-wide v9, v9, Lsg;->d:J

    cmp-long v14, v9, v21

    if-eqz v14, :cond_3d

    add-long/2addr v9, v12

    cmp-long v9, v9, p2

    if-gez v9, :cond_39

    :cond_3d
    invoke-virtual {v11}, LEg;->m()Z

    move-result v9

    if-eqz v9, :cond_3e

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-static {v4, v3, v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->e(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 v9, 0x1

    goto :goto_21

    :cond_3e
    move v9, v8

    :goto_21
    iget-object v10, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v11, LEg;->s:Lfg;

    if-nez v14, :cond_3f

    const/4 v14, 0x1

    goto :goto_22

    :cond_3f
    move v14, v8

    :goto_22
    if-eqz v14, :cond_41

    iput v2, v11, LEg;->c:I

    iget-boolean v15, v10, Lfg;->b:Z

    if-eqz v15, :cond_40

    invoke-virtual {v10, v2}, Lfg;->b(I)J

    move-result-wide v7

    iput-wide v7, v11, LEg;->e:J

    :cond_40
    iget v7, v11, LEg;->j:I

    and-int/lit16 v7, v7, -0x208

    const/4 v8, 0x1

    or-int/2addr v7, v8

    iput v7, v11, LEg;->j:I

    const-string v7, "RV OnBindView"

    invoke-static {v7}, LTl;->a(Ljava/lang/String;)V

    :cond_41
    iput-object v10, v11, LEg;->s:Lfg;

    sget-boolean v7, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    if-eqz v7, :cond_45

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_43

    sget-object v7, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, LUm;->b(Landroid/view/View;)Z

    move-result v7

    invoke-virtual {v11}, LEg;->m()Z

    move-result v8

    if-ne v7, v8, :cond_42

    goto :goto_23

    :cond_42
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Temp-detached state out of sync with reality. holder.isTmpDetached(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, LEg;->m()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", attached to window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, LUm;->b(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", holder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    :goto_23
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_45

    sget-object v7, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, LUm;->b(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_44

    goto :goto_24

    :cond_44
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to bind attached holder with no parent (AKA temp detached): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    :goto_24
    invoke-virtual {v11}, LEg;->e()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v10, v11, v2, v7}, Lfg;->d(LEg;ILjava/util/List;)V

    if-eqz v14, :cond_48

    iget-object v2, v11, LEg;->k:Ljava/util/ArrayList;

    if-eqz v2, :cond_46

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_46
    iget v2, v11, LEg;->j:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v11, LEg;->j:I

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v7, v2, Log;

    if-eqz v7, :cond_47

    check-cast v2, Log;

    const/4 v7, 0x1

    iput-boolean v7, v2, Log;->c:Z

    :cond_47
    invoke-static {}, LTl;->b()V

    :cond_48
    if-eqz v9, :cond_49

    invoke-static {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->f(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)V

    :cond_49
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    iget-object v0, v0, Lug;->g:Ltg;

    iget v2, v11, LEg;->f:I

    sub-long/2addr v7, v12

    invoke-virtual {v0, v2}, Ltg;->a(I)Lsg;

    move-result-object v0

    iget-wide v9, v0, Lsg;->d:J

    cmp-long v2, v9, v21

    if-nez v2, :cond_4a

    goto :goto_25

    :cond_4a
    div-long v9, v9, v19

    const-wide/16 v12, 0x3

    mul-long/2addr v9, v12

    div-long v7, v7, v19

    add-long/2addr v7, v9

    :goto_25
    iput-wide v7, v0, Lsg;->d:J

    iget-object v0, v4, Landroidx/recyclerview/widget/RecyclerView;->B:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x1

    goto :goto_26

    :cond_4b
    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_51

    sget-object v0, Lhn;->a:Ljava/util/WeakHashMap;

    invoke-static {v3}, LRm;->c(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_4c

    const/4 v0, 0x1

    invoke-static {v3, v0}, LRm;->s(Landroid/view/View;I)V

    goto :goto_27

    :cond_4c
    const/4 v0, 0x1

    :goto_27
    iget-object v2, v4, Landroidx/recyclerview/widget/RecyclerView;->o0:LGg;

    if-nez v2, :cond_4d

    goto :goto_29

    :cond_4d
    iget-object v2, v2, LGg;->e:LFg;

    if-eqz v2, :cond_50

    invoke-static {v3}, Lcn;->a(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v7

    if-nez v7, :cond_4e

    const/4 v7, 0x0

    goto :goto_28

    :cond_4e
    instance-of v8, v7, Lr;

    if-eqz v8, :cond_4f

    check-cast v7, Lr;

    iget-object v7, v7, Lr;->a:Lt;

    goto :goto_28

    :cond_4f
    new-instance v8, Lt;

    invoke-direct {v8, v7}, Lt;-><init>(Landroid/view/View$AccessibilityDelegate;)V

    move-object v7, v8

    :goto_28
    if-eqz v7, :cond_50

    if-eq v7, v2, :cond_50

    iget-object v8, v2, LFg;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v8, v3, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_50
    invoke-static {v3, v2}, Lhn;->h(Landroid/view/View;Lt;)V

    goto :goto_29

    :cond_51
    const/4 v0, 0x1

    :goto_29
    iget-boolean v2, v5, LAg;->g:Z

    if-eqz v2, :cond_52

    iput v1, v11, LEg;->g:I

    :cond_52
    move v8, v0

    :goto_2a
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_53

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Log;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2b

    :cond_53
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_54

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Log;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2b

    :cond_54
    check-cast v1, Log;

    :goto_2b
    iput-object v11, v1, Log;->a:LEg;

    if-eqz v6, :cond_55

    if-eqz v8, :cond_55

    move v3, v0

    goto :goto_2c

    :cond_55
    const/4 v3, 0x0

    :goto_2c
    iput-boolean v3, v1, Log;->d:Z

    return-object v11

    :cond_56
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid item position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "). Item count:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Landroidx/recyclerview/widget/RecyclerView;->h0:LAg;

    invoke-virtual {v1}, LAg;->b()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l(LEg;)V
    .locals 1

    iget-boolean v0, p1, LEg;->o:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lug;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lug;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 p0, 0x0

    iput-object p0, p1, LEg;->n:Lug;

    const/4 p0, 0x0

    iput-boolean p0, p1, LEg;->o:Z

    iget p0, p1, LEg;->j:I

    and-int/lit8 p0, p0, -0x21

    iput p0, p1, LEg;->j:I

    return-void
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lug;->h:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->n:Lng;

    if-eqz v0, :cond_0

    iget v0, v0, Lng;->j:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lug;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lug;->f:I

    iget-object v0, p0, Lug;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lug;->f:I

    if-le v2, v3, :cond_1

    invoke-virtual {p0, v1}, Lug;->g(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
