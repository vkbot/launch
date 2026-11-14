.class public abstract Ljg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Leg;

.field public b:Ljava/util/ArrayList;

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public static b(LEg;)V
    .locals 2

    iget v0, p0, LEg;->j:I

    invoke-virtual {p0}, LEg;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p0}, LEg;->b()I

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract a(LEg;LEg;LBe;LBe;)Z
.end method

.method public final c(LEg;)V
    .locals 8

    iget-object p0, p0, Ljg;->a:Leg;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LEg;->q(Z)V

    iget-object v1, p1, LEg;->h:LEg;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, LEg;->i:LEg;

    if-nez v1, :cond_0

    iput-object v2, p1, LEg;->h:LEg;

    :cond_0
    iput-object v2, p1, LEg;->i:LEg;

    iget v1, p1, LEg;->j:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object p0, p0, Leg;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->l0()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView;->f:Lo4;

    iget-object v2, v1, Lo4;->b:Ln4;

    iget-object v3, v1, Lo4;->a:Leg;

    iget v4, v1, Lo4;->d:I

    const/4 v5, 0x0

    iget-object v6, p1, LEg;->a:Landroid/view/View;

    if-ne v4, v0, :cond_3

    iget-object v0, v1, Lo4;->e:Landroid/view/View;

    if-ne v0, v6, :cond_2

    :goto_0
    move v0, v5

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeViewIfHidden within removeView(At) for a different view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    const/4 v7, 0x2

    if-eq v4, v7, :cond_7

    :try_start_0
    iput v7, v1, Lo4;->d:I

    iget-object v4, v3, Leg;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_4

    invoke-virtual {v1, v6}, Lo4;->j(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput v5, v1, Lo4;->d:I

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    :try_start_1
    invoke-virtual {v2, v4}, Ln4;->d(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v2, v4}, Ln4;->f(I)Z

    invoke-virtual {v1, v6}, Lo4;->j(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Leg;->h(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_5
    iput v5, v1, Lo4;->d:I

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_6

    invoke-static {v6}, Landroidx/recyclerview/widget/RecyclerView;->N(Landroid/view/View;)LEg;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView;->c:Lug;

    invoke-virtual {v2, v1}, Lug;->l(LEg;)V

    invoke-virtual {v2, v1}, Lug;->i(LEg;)V

    sget-boolean v1, Landroidx/recyclerview/widget/RecyclerView;->B0:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "after removing animated view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->m0(Z)V

    if-nez v0, :cond_8

    invoke-virtual {p1}, LEg;->m()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_4

    :goto_3
    iput v5, v1, Lo4;->d:I

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeViewIfHidden within removeViewIfHidden"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    return-void
.end method

.method public abstract d(LEg;)V
.end method

.method public abstract e()V
.end method

.method public abstract f()Z
.end method
