.class public final LW7;
.super Lfm;
.source "SourceFile"


# instance fields
.field public final synthetic q:LX7;


# direct methods
.method public constructor <init>(LX7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW7;->q:LX7;

    return-void
.end method


# virtual methods
.method public final y(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, LW7;->q:LX7;

    iget-object p0, p0, LX7;->a:Lb8;

    invoke-virtual {p0, p1}, Lb8;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final z(Lr7;)V
    .locals 3

    iget-object p0, p0, LW7;->q:LX7;

    iput-object p1, p0, LX7;->c:Lr7;

    new-instance p1, LK1;

    iget-object v0, p0, LX7;->c:Lr7;

    new-instance v1, LT7;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, LT7;-><init>(I)V

    iget-object v2, p0, LX7;->a:Lb8;

    iget-object v2, v2, Lb8;->h:LI6;

    invoke-direct {p1, v0, v1, v2}, LK1;-><init>(Lr7;LT7;LI6;)V

    iput-object p1, p0, LX7;->b:LK1;

    iget-object p0, p0, LX7;->a:Lb8;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lb8;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lb8;->c:I

    iget-object v0, p0, Lb8;->b:LY2;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lb8;->b:LY2;

    invoke-virtual {v0}, LY2;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lb8;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object v0, p0, Lb8;->d:Landroid/os/Handler;

    new-instance v1, LJ3;

    iget p0, p0, Lb8;->c:I

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, LJ3;-><init>(Ljava/util/List;ILjava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lb8;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
