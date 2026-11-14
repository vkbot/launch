.class public final LCa;
.super Lg6;
.source "SourceFile"

# interfaces
.implements Lb7;


# instance fields
.field private volatile _immediate:LCa;

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:LCa;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-direct {p0, p1, v1, v0}, LCa;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg6;-><init>()V

    .line 2
    iput-object p1, p0, LCa;->c:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, LCa;->d:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, LCa;->e:Z

    if-eqz p3, :cond_0

    move-object p3, p0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 5
    :goto_0
    iput-object p3, p0, LCa;->_immediate:LCa;

    .line 6
    iget-object p3, p0, LCa;->_immediate:LCa;

    if-nez p3, :cond_1

    .line 7
    new-instance p3, LCa;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, LCa;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, LCa;->_immediate:LCa;

    .line 8
    :cond_1
    iput-object p3, p0, LCa;->f:LCa;

    return-void
.end method


# virtual methods
.method public final c(JLN3;)V
    .locals 4

    new-instance v0, Lj0;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p3, p0, v1, v2}, Lj0;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    move-wide p1, v1

    :cond_0
    iget-object v1, p0, LCa;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, LN2;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2, v0}, LN2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p3, p1}, LN3;->n(Lda;)V

    goto :goto_0

    :cond_1
    iget-object p1, p3, LN3;->e:Le6;

    invoke-virtual {p0, p1, v0}, LCa;->i(Le6;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LCa;

    if-eqz v0, :cond_0

    check-cast p1, LCa;

    iget-object p1, p1, LCa;->c:Landroid/os/Handler;

    iget-object p0, p0, LCa;->c:Landroid/os/Handler;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g(Le6;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, LCa;->c:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, LCa;->i(Le6;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, LCa;->e:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, LCa;->c:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {v0, p0}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LCa;->c:Landroid/os/Handler;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final i(Le6;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' was closed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    sget-object p0, LT7;->f:LT7;

    invoke-interface {p1, p0}, Le6;->b(Ld6;)Lc6;

    move-result-object p0

    check-cast p0, Lyb;

    if-eqz p0, :cond_0

    check-cast p0, LHb;

    invoke-virtual {p0, v0}, LHb;->m(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    sget-object p0, Lv7;->b:LJ6;

    invoke-virtual {p0, p1, p2}, LJ6;->g(Le6;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lv7;->a:LT6;

    sget-object v0, Lcd;->a:LCa;

    if-ne p0, v0, :cond_0

    const-string v0, "Dispatchers.Main"

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v0, LCa;->f:LCa;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_1

    const-string v0, "Dispatchers.Main.immediate"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, LCa;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, LCa;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-boolean p0, p0, LCa;->e:Z

    if-eqz p0, :cond_3

    const-string p0, ".immediate"

    invoke-static {v0, p0}, Lpi;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_3
    return-object v0
.end method
