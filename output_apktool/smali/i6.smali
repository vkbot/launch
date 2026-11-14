.class public final Li6;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final a:LKo;

.field public final b:LKg;

.field public c:I

.field public d:J

.field public e:J

.field public f:I

.field public g:Z

.field public final synthetic h:Lj6;

.field private volatile indexInArray:I

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field private volatile workerCtl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Li6;

    const-string v1, "workerCtl"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Li6;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lj6;I)V
    .locals 0

    iput-object p1, p0, Li6;->h:Lj6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    new-instance p1, LKo;

    invoke-direct {p1}, LKo;-><init>()V

    iput-object p1, p0, Li6;->a:LKo;

    new-instance p1, LKg;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li6;->b:LKg;

    const/4 p1, 0x4

    iput p1, p0, Li6;->c:I

    sget-object p1, Lj6;->k:LL;

    iput-object p1, p0, Li6;->nextParkedWorker:Ljava/lang/Object;

    sget-object p1, Lcg;->a:Lbg;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcg;->b:Li;

    invoke-virtual {p1}, Li;->a()Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, p0, Li6;->f:I

    invoke-virtual {p0, p2}, Li6;->f(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lij;
    .locals 11

    iget v0, p0, Li6;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Li6;->a:LKo;

    iget-object v4, p0, Li6;->h:Lj6;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lj6;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_1
    iget-object v6, p0, Li6;->h:Lj6;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v7

    const-wide v9, 0x7ffffc0000000000L

    and-long/2addr v9, v7

    const/16 v5, 0x2a

    shr-long/2addr v9, v5

    long-to-int v5, v9

    if-nez v5, :cond_a

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    sget-object p1, LKo;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lij;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lij;->b:LTh;

    iget v5, v5, LTh;->a:I

    if-ne v5, v1, :cond_5

    :cond_3
    invoke-virtual {p1, v3, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v2, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v0, :cond_3

    goto :goto_0

    :cond_5
    :goto_1
    sget-object p1, LKo;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    sget-object v0, LKo;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    :cond_6
    if-eq p1, v0, :cond_8

    sget-object v5, LKo;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0, v1}, LKo;->c(IZ)Lij;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object v2, v5

    :cond_8
    :goto_2
    if-nez v2, :cond_9

    iget-object p1, v4, Lj6;->f:Lwa;

    invoke-virtual {p1}, LMc;->d()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lij;

    if-nez v2, :cond_9

    invoke-virtual {p0, v1}, Li6;->i(I)Lij;

    move-result-object v2

    :cond_9
    return-object v2

    :cond_a
    const-wide v9, 0x40000000000L

    sub-long v9, v7, v9

    sget-object v5, Lj6;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual/range {v5 .. v10}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    iput v1, p0, Li6;->c:I

    :goto_3
    if-eqz p1, :cond_f

    iget p1, v4, Lj6;->a:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Li6;->d(I)I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_c

    invoke-virtual {p0}, Li6;->e()Lij;

    move-result-object p1

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, LKo;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lij;

    if-nez p1, :cond_d

    invoke-virtual {v3}, LKo;->b()Lij;

    move-result-object p1

    :cond_d
    if-eqz p1, :cond_e

    goto :goto_5

    :cond_e
    if-nez v1, :cond_10

    invoke-virtual {p0}, Li6;->e()Lij;

    move-result-object p1

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_f
    invoke-virtual {p0}, Li6;->e()Lij;

    move-result-object p1

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_10
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Li6;->i(I)Lij;

    move-result-object p1

    :goto_5
    return-object p1
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Li6;->indexInArray:I

    return p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Li6;->nextParkedWorker:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(I)I
    .locals 2

    iget v0, p0, Li6;->f:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Li6;->f:I

    add-int/lit8 p0, p1, -0x1

    and-int v1, p0, p1

    if-nez v1, :cond_0

    and-int/2addr p0, v0

    return p0

    :cond_0
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    rem-int/2addr p0, p1

    return p0
.end method

.method public final e()Lij;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Li6;->d(I)I

    move-result v0

    iget-object p0, p0, Li6;->h:Lj6;

    if-nez v0, :cond_1

    iget-object v0, p0, Lj6;->e:Lwa;

    invoke-virtual {v0}, LMc;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lij;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lj6;->f:Lwa;

    invoke-virtual {p0}, LMc;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lij;

    return-object p0

    :cond_1
    iget-object v0, p0, Lj6;->f:Lwa;

    invoke-virtual {v0}, LMc;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lij;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p0, p0, Lj6;->e:Lwa;

    invoke-virtual {p0}, LMc;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lij;

    return-object p0
.end method

.method public final f(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Li6;->h:Lj6;

    iget-object v1, v1, Lj6;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Li6;->indexInArray:I

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Li6;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final h(I)Z
    .locals 6

    iget v0, p0, Li6;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lj6;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v3, 0x40000000000L

    iget-object v5, p0, Li6;->h:Lj6;

    invoke-virtual {v2, v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput p1, p0, Li6;->c:I

    :cond_2
    return v1
.end method

.method public final i(I)Lij;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lj6;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v3, v0, Li6;->h:Lj6;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v2, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ge v2, v4, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {v0, v2}, Li6;->d(I)I

    move-result v6

    const/4 v10, 0x0

    const-wide v11, 0x7fffffffffffffffL

    :goto_0
    if-ge v10, v2, :cond_10

    const/4 v15, 0x1

    add-int/2addr v6, v15

    if-le v6, v2, :cond_1

    move v6, v15

    :cond_1
    iget-object v4, v3, Lj6;->g:LVg;

    invoke-virtual {v4, v6}, LVg;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li6;

    if-eqz v4, :cond_e

    if-eq v4, v0, :cond_e

    const/4 v7, 0x3

    iget-object v4, v4, Li6;->a:LKo;

    if-ne v1, v7, :cond_2

    invoke-virtual {v4}, LKo;->b()Lij;

    move-result-object v7

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, LKo;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v7

    sget-object v8, LKo;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v8, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v8

    if-ne v1, v15, :cond_3

    move v9, v15

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eq v7, v8, :cond_4

    if-eqz v9, :cond_5

    sget-object v13, LKo;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v13, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v13

    if-nez v13, :cond_5

    :cond_4
    move-object v7, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v4, v7, v9}, LKo;->c(IZ)Lij;

    move-result-object v7

    if-nez v7, :cond_6

    move v7, v13

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v13, v0, Li6;->b:LKg;

    if-eqz v7, :cond_7

    iput-object v7, v13, LKg;->a:Ljava/lang/Object;

    move/from16 v19, v6

    :goto_3
    const-wide/16 v6, -0x1

    :goto_4
    const-wide/16 v8, -0x1

    goto :goto_8

    :cond_7
    :goto_5
    sget-object v7, LKo;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lij;

    const-wide/16 v18, -0x2

    if-nez v14, :cond_8

    :goto_6
    move-wide/from16 v21, v18

    move/from16 v19, v6

    move-wide/from16 v6, v21

    goto :goto_4

    :cond_8
    iget-object v8, v14, Lij;->b:LTh;

    iget v8, v8, LTh;->a:I

    if-ne v8, v15, :cond_9

    move v8, v15

    goto :goto_7

    :cond_9
    const/4 v8, 0x2

    :goto_7
    and-int/2addr v8, v1

    if-nez v8, :cond_a

    goto :goto_6

    :cond_a
    sget-object v8, LCj;->f:LT7;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move/from16 v19, v6

    iget-wide v5, v14, Lij;->a:J

    sub-long/2addr v8, v5

    sget-wide v5, LCj;->b:J

    cmp-long v20, v8, v5

    if-gez v20, :cond_b

    sub-long v4, v5, v8

    move-wide v6, v4

    const/4 v5, 0x0

    goto :goto_4

    :cond_b
    const/4 v5, 0x0

    invoke-virtual {v7, v4, v14, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iput-object v14, v13, LKg;->a:Ljava/lang/Object;

    goto :goto_3

    :goto_8
    cmp-long v4, v6, v8

    if-nez v4, :cond_c

    iget-object v0, v13, LKg;->a:Ljava/lang/Object;

    check-cast v0, Lij;

    iput-object v5, v13, LKg;->a:Ljava/lang/Object;

    return-object v0

    :cond_c
    const-wide/16 v16, 0x0

    cmp-long v4, v6, v16

    if-lez v4, :cond_f

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_9

    :cond_d
    const-wide/16 v8, -0x1

    const-wide/16 v16, 0x0

    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v14, :cond_b

    move/from16 v6, v19

    const/4 v5, 0x0

    goto :goto_5

    :cond_e
    move/from16 v19, v6

    :cond_f
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move/from16 v6, v19

    const/4 v4, 0x2

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_10
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v16, 0x0

    cmp-long v1, v11, v4

    if-eqz v1, :cond_11

    goto :goto_a

    :cond_11
    move-wide/from16 v11, v16

    :goto_a
    iput-wide v11, v0, Li6;->e:J

    const/4 v0, 0x0

    return-object v0
.end method

.method public final run()V
    .locals 20

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    move v0, v2

    :cond_1
    :goto_1
    iget-object v3, v1, Li6;->h:Lj6;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lj6;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_3

    :cond_2
    move v2, v4

    goto/16 :goto_a

    :cond_3
    iget v3, v1, Li6;->c:I

    if-eq v3, v4, :cond_2

    iget-boolean v3, v1, Li6;->g:Z

    invoke-virtual {v1, v3}, Li6;->a(Z)Lij;

    move-result-object v3

    const/4 v5, 0x3

    const-wide/32 v6, -0x200000

    const-wide/16 v8, 0x0

    if-eqz v3, :cond_a

    iput-wide v8, v1, Li6;->e:J

    iget-object v0, v3, Lij;->b:LTh;

    iget v10, v0, LTh;->a:I

    iput-wide v8, v1, Li6;->d:J

    iget v0, v1, Li6;->c:I

    const/4 v8, 0x2

    if-ne v0, v5, :cond_4

    iput v8, v1, Li6;->c:I

    :cond_4
    iget-object v5, v1, Li6;->h:Lj6;

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v8}, Li6;->h(I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v5}, Lj6;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, Lj6;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lj6;->d(J)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Lj6;->e()Z

    :cond_8
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v3, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v8

    invoke-interface {v8, v0, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_3
    if-nez v10, :cond_9

    goto :goto_0

    :cond_9
    sget-object v0, Lj6;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget v0, v1, Li6;->c:I

    if-eq v0, v4, :cond_0

    const/4 v0, 0x4

    iput v0, v1, Li6;->c:I

    goto :goto_0

    :cond_a
    iput-boolean v2, v1, Li6;->g:Z

    iget-wide v10, v1, Li6;->e:J

    cmp-long v3, v10, v8

    const/4 v10, 0x1

    if-eqz v3, :cond_c

    if-nez v0, :cond_b

    move v0, v10

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v1, v5}, Li6;->h(I)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v3, v1, Li6;->e:J

    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v8, v1, Li6;->e:J

    goto/16 :goto_0

    :cond_c
    iget-object v3, v1, Li6;->nextParkedWorker:Ljava/lang/Object;

    sget-object v11, Lj6;->k:LL;

    if-eq v3, v11, :cond_d

    move v3, v10

    goto :goto_4

    :cond_d
    move v3, v2

    :goto_4
    const-wide/32 v12, 0x1fffff

    if-nez v3, :cond_f

    iget-object v3, v1, Li6;->h:Lj6;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Li6;->nextParkedWorker:Ljava/lang/Object;

    if-eq v4, v11, :cond_e

    goto/16 :goto_1

    :cond_e
    sget-object v14, Lj6;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v14, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v16

    and-long v4, v16, v12

    long-to-int v4, v4

    const-wide/32 v8, 0x200000

    add-long v8, v16, v8

    and-long/2addr v8, v6

    iget v5, v1, Li6;->indexInArray:I

    iget-object v10, v3, Lj6;->g:LVg;

    invoke-virtual {v10, v4}, LVg;->b(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v1, Li6;->nextParkedWorker:Ljava/lang/Object;

    int-to-long v4, v5

    or-long v18, v8, v4

    move-object v15, v3

    invoke-virtual/range {v14 .. v19}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v4

    if-eqz v4, :cond_e

    goto/16 :goto_1

    :cond_f
    sget-object v3, Li6;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v6, -0x1

    invoke-virtual {v3, v1, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    :goto_5
    iget-object v3, v1, Li6;->nextParkedWorker:Ljava/lang/Object;

    sget-object v7, Lj6;->k:LL;

    if-eq v3, v7, :cond_1

    sget-object v3, Li6;->i:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v6, :cond_1

    iget-object v7, v1, Li6;->h:Lj6;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lj6;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v11, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v7

    if-eqz v7, :cond_10

    goto/16 :goto_1

    :cond_10
    iget v7, v1, Li6;->c:I

    if-ne v7, v4, :cond_11

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v1, v5}, Li6;->h(I)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v14, v1, Li6;->d:J

    cmp-long v7, v14, v8

    if-nez v7, :cond_12

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    iget-object v7, v1, Li6;->h:Lj6;

    iget-wide v4, v7, Lj6;->c:J

    add-long/2addr v14, v4

    iput-wide v14, v1, Li6;->d:J

    :cond_12
    iget-object v4, v1, Li6;->h:Lj6;

    iget-wide v4, v4, Lj6;->c:J

    invoke-static {v4, v5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-wide v14, v1, Li6;->d:J

    sub-long/2addr v4, v14

    cmp-long v4, v4, v8

    if-ltz v4, :cond_18

    iput-wide v8, v1, Li6;->d:J

    iget-object v4, v1, Li6;->h:Lj6;

    iget-object v5, v4, Lj6;->g:LVg;

    monitor-enter v5

    :try_start_1
    invoke-virtual {v11, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_13

    move v7, v10

    goto :goto_6

    :cond_13
    move v7, v2

    :goto_6
    if-eqz v7, :cond_14

    monitor-exit v5

    goto :goto_9

    :cond_14
    :try_start_2
    sget-object v7, Lj6;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v14

    and-long/2addr v14, v12

    long-to-int v11, v14

    iget v14, v4, Lj6;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gt v11, v14, :cond_15

    monitor-exit v5

    goto :goto_9

    :cond_15
    :try_start_3
    invoke-virtual {v3, v1, v6, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v3, :cond_16

    monitor-exit v5

    goto :goto_9

    :cond_16
    :try_start_4
    iget v3, v1, Li6;->indexInArray:I

    invoke-virtual {v1, v2}, Li6;->f(I)V

    invoke-virtual {v4, v1, v3, v2}, Lj6;->c(Li6;II)V

    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v14

    and-long/2addr v14, v12

    long-to-int v7, v14

    if-eq v7, v3, :cond_17

    iget-object v11, v4, Lj6;->g:LVg;

    invoke-virtual {v11, v7}, LVg;->b(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lnb;->o(Ljava/lang/Object;)V

    check-cast v11, Li6;

    iget-object v14, v4, Lj6;->g:LVg;

    invoke-virtual {v14, v3, v11}, LVg;->c(ILi6;)V

    invoke-virtual {v11, v3}, Li6;->f(I)V

    invoke-virtual {v4, v11, v7, v3}, Lj6;->c(Li6;II)V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_17
    :goto_7
    iget-object v3, v4, Lj6;->g:LVg;

    const/4 v4, 0x0

    invoke-virtual {v3, v7, v4}, LVg;->c(ILi6;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v5

    const/4 v3, 0x5

    iput v3, v1, Li6;->c:I

    goto :goto_9

    :goto_8
    monitor-exit v5

    throw v0

    :cond_18
    :goto_9
    const/4 v4, 0x5

    const/4 v5, 0x3

    goto/16 :goto_5

    :goto_a
    invoke-virtual {v1, v2}, Li6;->h(I)Z

    return-void
.end method
