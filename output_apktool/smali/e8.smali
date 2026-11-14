.class public final Le8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Le8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v0, 0x0

    iget v1, p0, Le8;->a:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "VoiceMic"

    :try_start_0
    invoke-static {}, LNn;->a()Z

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    if-eqz v2, :cond_0

    sput-wide v3, LNn;->d:J

    :cond_0
    if-eqz v2, :cond_1

    sget-boolean v5, LNn;->b:Z

    if-eqz v5, :cond_1

    const-string v2, "the navigator records: the microphone is its again"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, LNn;->b:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    sget-boolean v0, LNn;->b:Z

    if-nez v0, :cond_2

    sget-wide v5, LNn;->d:J

    sub-long v5, v3, v5

    const-wide/16 v7, 0x1388

    cmp-long v0, v5, v7

    if-ltz v0, :cond_2

    sget-wide v5, LNn;->c:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    invoke-static {}, LNn;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "check: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    sget-object v0, LNn;->a:Landroid/net/Uri;

    sget-object v0, LNn;->h:Lfj;

    invoke-virtual {v0}, Lfj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_0
    sget-boolean v0, Lnk;->f:Z

    if-eqz v0, :cond_3

    sget-object v0, Lnk;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lt3;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lt3;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    sget-object v0, Lnk;->d:Landroid/os/Handler;

    const-wide/32 v1, 0xdbba0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_1
    :try_start_1
    const-string p0, "EmojiCompat.EmojiCompatInitializer.run"

    invoke-static {p0}, LTl;->a(Ljava/lang/String;)V

    sget-object p0, Lb8;->j:Lb8;

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {}, Lb8;->a()Lb8;

    move-result-object p0

    invoke-virtual {p0}, Lb8;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {}, LTl;->b()V

    return-void

    :goto_3
    invoke-static {}, LTl;->b()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
