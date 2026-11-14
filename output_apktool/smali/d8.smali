.class public final Ld8;
.super Lfm;
.source "SourceFile"


# instance fields
.field public final synthetic q:Lfm;

.field public final synthetic r:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lfm;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld8;->q:Lfm;

    iput-object p2, p0, Ld8;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final y(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Ld8;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_0
    iget-object p0, p0, Ld8;->q:Lfm;

    invoke-virtual {p0, p1}, Lfm;->y(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    throw p0
.end method

.method public final z(Lr7;)V
    .locals 1

    iget-object v0, p0, Ld8;->r:Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_0
    iget-object p0, p0, Ld8;->q:Lfm;

    invoke-virtual {p0, p1}, Lfm;->z(Lr7;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    throw p0
.end method
