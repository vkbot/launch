.class public final Lec;
.super Lg6;
.source "SourceFile"

# interfaces
.implements Lb7;


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field public final c:Ltm;

.field public final d:I

.field public final synthetic e:Lb7;

.field public final f:LMc;

.field public final g:Ljava/lang/Object;

.field private volatile runningWorkers:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lec;

    const-string v1, "runningWorkers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lec;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ltm;I)V
    .locals 0

    invoke-direct {p0}, Lg6;-><init>()V

    iput-object p1, p0, Lec;->c:Ltm;

    iput p2, p0, Lec;->d:I

    instance-of p2, p1, Lb7;

    if-eqz p2, :cond_0

    check-cast p1, Lb7;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    sget-object p1, LH6;->a:Lb7;

    :cond_1
    iput-object p1, p0, Lec;->e:Lb7;

    new-instance p1, LMc;

    invoke-direct {p1}, LMc;-><init>()V

    iput-object p1, p0, Lec;->f:LMc;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lec;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(JLN3;)V
    .locals 0

    iget-object p0, p0, Lec;->e:Lb7;

    invoke-interface {p0, p1, p2, p3}, Lb7;->c(JLN3;)V

    return-void
.end method

.method public final g(Le6;Ljava/lang/Runnable;)V
    .locals 2

    iget-object p1, p0, Lec;->f:LMc;

    invoke-virtual {p1, p2}, LMc;->a(Ljava/lang/Runnable;)Z

    sget-object p1, Lec;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p2

    iget v0, p0, Lec;->d:I

    if-ge p2, v0, :cond_2

    iget-object p2, p0, Lec;->g:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lec;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    monitor-exit p2

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p2

    invoke-virtual {p0}, Lec;->i()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lj0;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0, p1}, Lj0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lec;->c:Ltm;

    invoke-virtual {p1, p0, p2}, Ltm;->g(Le6;Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public final i()Ljava/lang/Runnable;
    .locals 3

    :goto_0
    iget-object v0, p0, Lec;->f:LMc;

    invoke-virtual {v0}, LMc;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lec;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lec;->h:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, Lec;->f:LMc;

    invoke-virtual {v2}, LMc;->c()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method
