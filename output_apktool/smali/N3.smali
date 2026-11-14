.class public final LN3;
.super Lu7;
.source "SourceFile"

# interfaces
.implements LS5;
.implements Lm6;


# static fields
.field public static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decisionAndIndex:I

.field private volatile _parentHandle:Ljava/lang/Object;

.field private volatile _state:Ljava/lang/Object;

.field public final d:LS5;

.field public final e:Le6;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_decisionAndIndex"

    const-class v1, LN3;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, LN3;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_state"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LN3;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, LN3;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(LS5;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lu7;-><init>(I)V

    iput-object p1, p0, LN3;->d:LS5;

    invoke-interface {p1}, LS5;->i()Le6;

    move-result-object p1

    iput-object p1, p0, LN3;->e:Le6;

    const p1, 0x1fffffff

    iput p1, p0, LN3;->_decisionAndIndex:I

    sget-object p1, Lr0;->a:Lr0;

    iput-object p1, p0, LN3;->_state:Ljava/lang/Object;

    return-void
.end method

.method public static p(Lz7;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static r(LN3;Ljava/lang/Object;I)V
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    sget-object v0, LN3;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LEe;

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, LEe;

    instance-of v3, p1, La5;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, LC6;->v(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lz7;

    if-nez v3, :cond_2

    :goto_1
    move-object v3, p1

    goto :goto_4

    :cond_2
    new-instance v3, LY4;

    instance-of v4, v2, Lz7;

    if-eqz v4, :cond_3

    check-cast v2, Lz7;

    :goto_2
    move-object v6, v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :goto_3
    const/16 v9, 0x10

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, LY4;-><init>(Ljava/lang/Object;Lz7;Lda;Ljava/util/concurrent/CancellationException;I)V

    :cond_4
    :goto_4
    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, LN3;->o()Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, LN3;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly7;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-interface {v0}, Ly7;->c()V

    sget-object v0, LDe;->a:LDe;

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    :goto_5
    invoke-virtual {p0, p2}, LN3;->l(I)V

    goto :goto_6

    :cond_7
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_4

    goto :goto_0

    :cond_8
    instance-of p0, v1, LQ3;

    if-eqz p0, :cond_9

    check-cast v1, LQ3;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LQ3;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v1, p2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p0

    if-eqz p0, :cond_9

    :goto_6
    return-void

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Already resumed, but proposed with update "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 8

    :goto_0
    sget-object p1, LN3;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v0, v6, LEe;

    if-nez v0, :cond_9

    instance-of v0, v6, La5;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, v6, LY4;

    if-eqz v0, :cond_6

    move-object v0, v6

    check-cast v0, LY4;

    iget-object v1, v0, LY4;->e:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v1}, LY4;->a(LY4;Lz7;Ljava/util/concurrent/CancellationException;I)LY4;

    move-result-object v1

    :cond_1
    invoke-virtual {p1, p0, v6, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, v0, LY4;->b:Lz7;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p2}, LN3;->j(Lz7;Ljava/lang/Throwable;)V

    :cond_2
    iget-object p1, v0, LY4;->c:Lda;

    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1, p2}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    new-instance p2, Lc5;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, LN3;->e:Le6;

    invoke-static {p0, p2}, Lfm;->q(Le6;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v6, :cond_1

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called at most once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance v7, LY4;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v5, 0xe

    move-object v0, v7

    move-object v1, v6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, LY4;-><init>(Ljava/lang/Object;Lz7;Lda;Ljava/util/concurrent/CancellationException;I)V

    :cond_7
    invoke-virtual {p1, p0, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v6, :cond_7

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not completed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()LS5;
    .locals 0

    iget-object p0, p0, LN3;->d:LS5;

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lkh;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, La5;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, La5;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget v0, p0, Lu7;->c:I

    invoke-static {p0, p1, v0}, LN3;->r(LN3;Ljava/lang/Object;I)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Lu7;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, LY4;

    if-eqz p0, :cond_0

    check-cast p1, LY4;

    iget-object p1, p1, LY4;->a:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final g()Lm6;
    .locals 1

    iget-object p0, p0, LN3;->d:LS5;

    instance-of v0, p0, Lm6;

    if-eqz v0, :cond_0

    check-cast p0, Lm6;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final h()Ljava/lang/Object;
    .locals 1

    sget-object v0, LN3;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i()Le6;
    .locals 0

    iget-object p0, p0, LN3;->e:Le6;

    return-object p0
.end method

.method public final j(Lz7;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2}, Lz7;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, Lc5;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, LN3;->e:Le6;

    invoke-static {p0, p2}, Lfm;->q(Le6;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 4

    :goto_0
    sget-object v0, LN3;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LEe;

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, LQ3;

    instance-of v3, v1, Lz7;

    invoke-direct {v2, p0, p1, v3}, LQ3;-><init>(LN3;Ljava/lang/Throwable;Z)V

    :cond_1
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v1

    check-cast v0, LEe;

    instance-of v0, v0, Lz7;

    if-eqz v0, :cond_2

    check-cast v1, Lz7;

    invoke-virtual {p0, v1, p1}, LN3;->j(Lz7;Ljava/lang/Throwable;)V

    :cond_2
    invoke-virtual {p0}, LN3;->o()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, LN3;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly7;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ly7;->c()V

    sget-object v0, LDe;->a:LDe;

    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    iget p1, p0, Lu7;->c:I

    invoke-virtual {p0, p1}, LN3;->l(I)V

    return-void

    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_1

    goto :goto_0
.end method

.method public final l(I)V
    .locals 7

    :cond_0
    sget-object v0, LN3;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    if-ne v2, v0, :cond_7

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LN3;->d:LS5;

    if-nez v1, :cond_6

    instance-of v3, v2, Ls7;

    if-eqz v3, :cond_6

    invoke-static {p1}, LC6;->v(I)Z

    move-result p1

    iget v3, p0, Lu7;->c:I

    invoke-static {v3}, LC6;->v(I)Z

    move-result v3

    if-ne p1, v3, :cond_6

    move-object p1, v2

    check-cast p1, Ls7;

    iget-object p1, p1, Ls7;->d:Lg6;

    move-object v1, v2

    check-cast v1, Ls7;

    iget-object v1, v1, Ls7;->e:LT5;

    iget-object v1, v1, LT5;->b:Le6;

    invoke-static {v1}, Lnb;->o(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lg6;->h()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1, p0}, Lg6;->g(Le6;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lgk;->a()LH8;

    move-result-object p1

    iget-wide v3, p1, LH8;->c:J

    const-wide v5, 0x100000000L

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    iget-object v0, p1, LH8;->e:LT2;

    if-nez v0, :cond_3

    new-instance v0, LT2;

    invoke-direct {v0}, LT2;-><init>()V

    iput-object v0, p1, LH8;->e:LT2;

    :cond_3
    invoke-virtual {v0, p0}, LT2;->c(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, LH8;->k(Z)V

    :try_start_0
    invoke-static {p0, v2, v0}, LC6;->N(LN3;LS5;Z)V

    :cond_5
    invoke-virtual {p1}, LH8;->l()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    :goto_1
    invoke-virtual {p1}, LH8;->i()V

    goto :goto_2

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lu7;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, LH8;->i()V

    throw p0

    :cond_6
    invoke-static {p0, v2, v1}, LC6;->N(LN3;LS5;Z)V

    :goto_2
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    const v2, 0x1fffffff

    and-int/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    add-int/2addr v3, v2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final m()Ly7;
    .locals 5

    sget-object v0, LT7;->f:LT7;

    iget-object v1, p0, LN3;->e:Le6;

    invoke-interface {v1, v0}, Le6;->b(Ld6;)Lc6;

    move-result-object v0

    check-cast v0, Lyb;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lk4;

    invoke-direct {v2, p0}, Lk4;-><init>(LN3;)V

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v4, v2, v3}, Lnb;->J(Lyb;ZLCb;I)Ly7;

    move-result-object v0

    :cond_1
    sget-object v2, LN3;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0
.end method

.method public final n(Lda;)V
    .locals 9

    instance-of v0, p1, Lz7;

    if-eqz v0, :cond_0

    check-cast p1, Lz7;

    goto :goto_0

    :cond_0
    new-instance v0, Lz7;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lz7;-><init>(ILjava/lang/Object;)V

    move-object p1, v0

    :goto_0
    sget-object v0, LN3;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lr0;

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {v0, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lz7;

    const/4 v3, 0x0

    if-nez v2, :cond_10

    instance-of v2, v1, La5;

    if-eqz v2, :cond_7

    move-object v0, v1

    check-cast v0, La5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    sget-object v4, La5;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_6

    instance-of v2, v1, LQ3;

    if-eqz v2, :cond_e

    instance-of v1, v1, La5;

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_5

    iget-object v3, v0, La5;->a:Ljava/lang/Throwable;

    :cond_5
    invoke-virtual {p0, p1, v3}, LN3;->j(Lz7;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-static {p1, v1}, LN3;->p(Lz7;Ljava/lang/Object;)V

    throw v3

    :cond_7
    instance-of v2, v1, LY4;

    if-eqz v2, :cond_c

    move-object v2, v1

    check-cast v2, LY4;

    iget-object v4, v2, LY4;->b:Lz7;

    if-nez v4, :cond_b

    iget-object v4, v2, LY4;->e:Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    invoke-virtual {p0, p1, v4}, LN3;->j(Lz7;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    const/16 v4, 0x1d

    invoke-static {v2, p1, v3, v4}, LY4;->a(LY4;Lz7;Ljava/util/concurrent/CancellationException;I)LY4;

    move-result-object v2

    :cond_9
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_9

    goto :goto_0

    :cond_b
    invoke-static {p1, v1}, LN3;->p(Lz7;Ljava/lang/Object;)V

    throw v3

    :cond_c
    new-instance v8, LY4;

    const/4 v5, 0x0

    const/16 v7, 0x1c

    const/4 v6, 0x0

    move-object v2, v8

    move-object v3, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, LY4;-><init>(Ljava/lang/Object;Lz7;Lda;Ljava/util/concurrent/CancellationException;I)V

    :cond_d
    invoke-virtual {v0, p0, v1, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    :goto_2
    return-void

    :cond_f
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_d

    goto/16 :goto_0

    :cond_10
    invoke-static {p1, v1}, LN3;->p(Lz7;Ljava/lang/Object;)V

    throw v3
.end method

.method public final o()Z
    .locals 2

    iget v0, p0, Lu7;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    iget-object p0, p0, LN3;->d:LS5;

    invoke-static {p0, v0}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ls7;

    sget-object v0, Ls7;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final q()V
    .locals 5

    iget-object v0, p0, LN3;->d:LS5;

    instance-of v1, v0, Ls7;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Ls7;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_9

    :goto_1
    sget-object v1, Ls7;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lfm;->g:LL;

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-virtual {v1, v0, v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_3
    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_8

    :goto_2
    invoke-virtual {v1, v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    :goto_3
    if-nez v2, :cond_4

    goto :goto_5

    :cond_4
    sget-object v0, LN3;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly7;

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v1}, Ly7;->c()V

    sget-object v1, LDe;->a:LDe;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {p0, v2}, LN3;->k(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_5
    return-void
.end method

.method public final s(Lg6;)V
    .locals 4

    sget-object v0, Lsm;->a:Lsm;

    iget-object v1, p0, LN3;->d:LS5;

    instance-of v2, v1, Ls7;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ls7;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Ls7;->d:Lg6;

    :cond_1
    if-ne v3, p1, :cond_2

    const/4 p1, 0x4

    goto :goto_1

    :cond_2
    iget p1, p0, Lu7;->c:I

    :goto_1
    invoke-static {p0, v0, p1}, LN3;->r(LN3;Ljava/lang/Object;I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CancellableContinuation("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LN3;->d:LS5;

    invoke-static {v1}, LC6;->V(LS5;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, LN3;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LEe;

    if-eqz v2, :cond_0

    const-string v1, "Active"

    goto :goto_0

    :cond_0
    instance-of v1, v1, LQ3;

    if-eqz v1, :cond_1

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v1, "Completed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, LC6;->p(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
