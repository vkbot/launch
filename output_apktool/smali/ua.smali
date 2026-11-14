.class public final Lua;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final e:Ljava/lang/ThreadLocal;

.field public static final f:LG0;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:J

.field public c:J

.field public d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lua;->e:Ljava/lang/ThreadLocal;

    new-instance v0, LG0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LG0;-><init>(I)V

    sput-object v0, Lua;->f:LG0;

    return-void
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView;IJ)LEg;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lo4;

    invoke-virtual {v0}, Lo4;->h()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lo4;

    invoke-virtual {v3, v2}, Lo4;->g(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/view/View;)LEg;

    move-result-object v3

    iget v4, v3, LEg;->c:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, LEg;->i()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lug;

    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->U()V

    invoke-virtual {v0, p1, p2, p3}, Lug;->k(IJ)LEg;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, LEg;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, LEg;->i()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p1, LEg;->a:Landroid/view/View;

    invoke-virtual {v0, p2}, Lug;->h(Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1, v1}, Lug;->a(LEg;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->V(Z)V

    return-object p1

    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->V(Z)V

    throw p1
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    iget-boolean v0, p1, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroidx/recyclerview/widget/RecyclerView;->A0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lua;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "attempting to post unregistered view!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-wide v0, p0, Lua;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lua;->b:J

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView;->g0:Lsa;

    iput p2, p0, Lsa;->a:I

    iput p3, p0, Lsa;->b:I

    return-void
.end method

.method public final b(J)V
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lua;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/view/View;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v6, Landroidx/recyclerview/widget/RecyclerView;->g0:Lsa;

    invoke-virtual {v7, v6, v3}, Lsa;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v6, v7, Lsa;->d:I

    add-int/2addr v5, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lua;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move v4, v3

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    if-ge v4, v2, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_5

    :cond_2
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView;->g0:Lsa;

    iget v9, v8, Lsa;->a:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    iget v10, v8, Lsa;->b:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    add-int/2addr v10, v9

    move v9, v3

    :goto_2
    iget v11, v8, Lsa;->d:I

    mul-int/lit8 v11, v11, 0x2

    if-ge v9, v11, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v5, v11, :cond_3

    new-instance v11, Lta;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lta;

    :goto_3
    iget-object v12, v8, Lsa;->c:[I

    add-int/lit8 v13, v9, 0x1

    aget v13, v12, v13

    if-gt v13, v10, :cond_4

    move v14, v6

    goto :goto_4

    :cond_4
    move v14, v3

    :goto_4
    iput-boolean v14, v11, Lta;->a:Z

    iput v10, v11, Lta;->b:I

    iput v13, v11, Lta;->c:I

    iput-object v7, v11, Lta;->d:Landroidx/recyclerview/widget/RecyclerView;

    aget v12, v12, v9

    iput v12, v11, Lta;->e:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    sget-object v1, Lua;->f:LG0;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v1, v3

    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lta;

    iget-object v4, v2, Lta;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_7

    goto/16 :goto_c

    :cond_7
    iget-boolean v5, v2, Lta;->a:Z

    if-eqz v5, :cond_8

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_7

    :cond_8
    move-wide/from16 v7, p1

    :goto_7
    iget v5, v2, Lta;->e:I

    invoke-static {v4, v5, v7, v8}, Lua;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)LEg;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v5, v4, LEg;->b:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_e

    invoke-virtual {v4}, LEg;->h()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, LEg;->i()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v4, v4, LEg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v4, :cond_9

    goto :goto_a

    :cond_9
    iget-boolean v5, v4, Landroidx/recyclerview/widget/RecyclerView;->D:Z

    if-eqz v5, :cond_c

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->f:Lo4;

    invoke-virtual {v5}, Lo4;->h()I

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->M:Ljg;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljg;->e()V

    :cond_a
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->n:Lng;

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->c:Lug;

    if-eqz v5, :cond_b

    invoke-virtual {v5, v7}, Lng;->g0(Lug;)V

    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->n:Lng;

    invoke-virtual {v5, v7}, Lng;->h0(Lug;)V

    :cond_b
    iget-object v5, v7, Lug;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v7}, Lug;->f()V

    :cond_c
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView;->g0:Lsa;

    invoke-virtual {v5, v4, v6}, Lsa;->b(Landroidx/recyclerview/widget/RecyclerView;Z)V

    iget v7, v5, Lsa;->d:I

    if-eqz v7, :cond_e

    :try_start_0
    const-string v7, "RV Nested Prefetch"

    invoke-static {v7}, LTl;->a(Ljava/lang/String;)V

    iget-object v7, v4, Landroidx/recyclerview/widget/RecyclerView;->h0:LAg;

    iget-object v8, v4, Landroidx/recyclerview/widget/RecyclerView;->m:Lfg;

    iput v6, v7, LAg;->d:I

    invoke-virtual {v8}, Lfg;->a()I

    move-result v8

    iput v8, v7, LAg;->e:I

    iput-boolean v3, v7, LAg;->g:Z

    iput-boolean v3, v7, LAg;->h:Z

    iput-boolean v3, v7, LAg;->i:Z

    move v7, v3

    :goto_8
    iget v8, v5, Lsa;->d:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_d

    iget-object v8, v5, Lsa;->c:[I

    aget v8, v8, v7

    move-wide/from16 v9, p1

    invoke-static {v4, v8, v9, v10}, Lua;->c(Landroidx/recyclerview/widget/RecyclerView;IJ)LEg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v7, 0x2

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_d
    move-wide/from16 v9, p1

    invoke-static {}, LTl;->b()V

    goto :goto_b

    :goto_9
    invoke-static {}, LTl;->b()V

    throw v0

    :cond_e
    :goto_a
    move-wide/from16 v9, p1

    :goto_b
    iput-boolean v3, v2, Lta;->a:Z

    iput v3, v2, Lta;->b:I

    iput v3, v2, Lta;->c:I

    const/4 v4, 0x0

    iput-object v4, v2, Lta;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput v3, v2, Lta;->e:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_f
    :goto_c
    return-void
.end method

.method public final run()V
    .locals 9

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, LTl;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lua;->a:Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    iput-wide v0, p0, Lua;->b:J

    invoke-static {}, LTl;->b()V

    return-void

    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move-wide v5, v0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/view/View;->getWindowVisibility()I

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    cmp-long v2, v5, v0

    if-nez v2, :cond_3

    iput-wide v0, p0, Lua;->b:J

    invoke-static {}, LTl;->b()V

    return-void

    :cond_3
    :try_start_3
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    iget-wide v4, p0, Lua;->c:J

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lua;->b(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-wide v0, p0, Lua;->b:J

    invoke-static {}, LTl;->b()V

    return-void

    :goto_2
    iput-wide v0, p0, Lua;->b:J

    invoke-static {}, LTl;->b()V

    throw v2
.end method
