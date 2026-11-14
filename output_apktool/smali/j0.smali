.class public final Lj0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V
    .locals 0

    const/4 p3, 0x6

    iput p3, p0, Lj0;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0;->c:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lj0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lj0;->a:I

    iput-object p1, p0, Lj0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lj0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V
    .locals 0

    .line 2
    iput p3, p0, Lj0;->a:I

    iput-object p1, p0, Lj0;->b:Ljava/lang/Object;

    iput-object p2, p0, Lj0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lvb;Lsb;I)V
    .locals 0

    const/4 p3, 0x3

    iput p3, p0, Lj0;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lj0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lj0;->c:Ljava/lang/Object;

    iget v2, p0, Lj0;->a:I

    packed-switch v2, :pswitch_data_0

    check-cast v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Lkn;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkn;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lhn;->a:Ljava/util/WeakHashMap;

    iget-object v0, p0, Lj0;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p0}, LRm;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lj0;->b:Ljava/lang/Object;

    check-cast p0, Lj9;

    invoke-virtual {p0, v1}, Lj9;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    :pswitch_1
    :try_start_0
    iget-object v2, p0, Lj0;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget-object v3, Lt8;->a:Lt8;

    invoke-static {v3, v2}, Lfm;->q(Le6;Ljava/lang/Throwable;)V

    :goto_0
    move-object v2, v1

    check-cast v2, Lec;

    invoke-virtual {v2}, Lec;->i()Ljava/lang/Runnable;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lj0;->b:Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    iget-object v0, v2, Lec;->c:Ltm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2, p0}, Ltm;->g(Le6;Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :pswitch_2
    check-cast v1, Lvb;

    iget-object v2, v1, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_7

    iget-boolean v2, v2, Landroidx/recyclerview/widget/RecyclerView;->s:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lj0;->b:Ljava/lang/Object;

    check-cast v2, Lsb;

    iget-boolean v3, v2, Lsb;->k:Z

    if-nez v3, :cond_7

    iget-object v2, v2, Lsb;->e:LEg;

    invoke-virtual {v2}, LEg;->b()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    iget-object v3, v1, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Ljg;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljg;->f()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iget-object v3, v1, Lvb;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_2
    if-ge v0, v4, :cond_6

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsb;

    iget-boolean v5, v5, Lsb;->l:Z

    if-nez v5, :cond_5

    :cond_4
    iget-object v0, v1, Lvb;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object p0, v1, Lvb;->m:Lvj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "vh"

    invoke-static {v2, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lvj;->b:Ljava/lang/Object;

    check-cast p0, Lzj;

    invoke-virtual {v2}, LEg;->c()I

    move-result v0

    invoke-static {p0, v0}, Lzj;->b(Lzj;I)V

    :cond_7
    :goto_3
    return-void

    :pswitch_3
    iget-object p0, p0, Lj0;->b:Ljava/lang/Object;

    check-cast p0, LN3;

    check-cast v1, LCa;

    invoke-virtual {p0, v1}, LN3;->s(Lg6;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lj0;->b:Ljava/lang/Object;

    check-cast p0, LL;

    iget-object p0, p0, LL;->b:Ljava/lang/Object;

    check-cast p0, Lff;

    if-eqz p0, :cond_8

    check-cast v1, Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Lff;->A(Landroid/graphics/Typeface;)V

    :cond_8
    return-void

    :pswitch_5
    check-cast v1, Ll0;

    iget-object v2, v1, Ll0;->c:LLd;

    if-eqz v2, :cond_9

    iget-object v3, v2, LLd;->e:LJd;

    if-eqz v3, :cond_9

    invoke-interface {v3, v2}, LJd;->t(LLd;)V

    :cond_9
    iget-object v2, v1, Ll0;->h:Lge;

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object p0, p0, Lj0;->b:Ljava/lang/Object;

    check-cast p0, Lh0;

    invoke-virtual {p0}, LXd;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    iget-object v2, p0, LXd;->e:Landroid/view/View;

    if-nez v2, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v0, v0, v0, v0}, LXd;->d(IIZZ)V

    :goto_4
    iput-object p0, v1, Ll0;->s:Lh0;

    :cond_c
    :goto_5
    const/4 p0, 0x0

    iput-object p0, v1, Ll0;->u:Lj0;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
