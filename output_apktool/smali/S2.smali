.class public final LS2;
.super Lff;
.source "SourceFile"


# static fields
.field public static volatile b:LS2;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LS2;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, LS2;-><init>(I)V

    iput-object p1, p0, LS2;->a:Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS2;->a:Ljava/lang/Object;

    new-instance p0, La7;

    invoke-direct {p0}, La7;-><init>()V

    const/4 p1, 0x4

    invoke-static {p1, p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static H()LS2;
    .locals 3

    sget-object v0, LS2;->b:LS2;

    if-eqz v0, :cond_0

    sget-object v0, LS2;->b:LS2;

    return-object v0

    :cond_0
    const-class v0, LS2;

    monitor-enter v0

    :try_start_0
    sget-object v1, LS2;->b:LS2;

    if-nez v1, :cond_1

    new-instance v1, LS2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, LS2;-><init>(I)V

    sput-object v1, LS2;->b:LS2;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, LS2;->b:LS2;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
