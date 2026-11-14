.class public final Ls7;
.super Lu7;
.source "SourceFile"

# interfaces
.implements Lm6;
.implements LS5;


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;

.field public final d:Lg6;

.field public final e:LT5;

.field public f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation"

    const-class v2, Ls7;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ls7;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lg6;LT5;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lu7;-><init>(I)V

    iput-object p1, p0, Ls7;->d:Lg6;

    iput-object p2, p0, Ls7;->e:LT5;

    sget-object p1, Lfm;->f:LL;

    iput-object p1, p0, Ls7;->f:Ljava/lang/Object;

    iget-object p1, p2, LT5;->b:Le6;

    invoke-static {p1}, Lnb;->o(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object v0, LV4;->g:LV4;

    invoke-interface {p1, p2, v0}, Le6;->e(Ljava/lang/Object;Lha;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnb;->o(Ljava/lang/Object;)V

    iput-object p1, p0, Ls7;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/CancellationException;)V
    .locals 0

    instance-of p0, p1, Lb5;

    if-eqz p0, :cond_0

    check-cast p1, Lb5;

    iget-object p0, p1, Lb5;->b:Lda;

    invoke-interface {p0, p2}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final b()LS5;
    .locals 0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Ls7;->e:LT5;

    iget-object v1, v0, LT5;->b:Le6;

    invoke-static {v1}, Lnb;->o(Ljava/lang/Object;)V

    invoke-static {p1}, Lkh;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, p1

    goto :goto_0

    :cond_0
    new-instance v4, La5;

    invoke-direct {v4, v2, v3}, La5;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget-object v2, p0, Ls7;->d:Lg6;

    invoke-virtual {v2}, Lg6;->h()Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object v4, p0, Ls7;->f:Ljava/lang/Object;

    iput v3, p0, Lu7;->c:I

    invoke-virtual {v2, v1, p0}, Lg6;->g(Le6;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_1
    invoke-static {}, Lgk;->a()LH8;

    move-result-object v1

    iget-wide v5, v1, LH8;->c:J

    const-wide v7, 0x100000000L

    cmp-long v2, v5, v7

    if-ltz v2, :cond_3

    iput-object v4, p0, Ls7;->f:Ljava/lang/Object;

    iput v3, p0, Lu7;->c:I

    iget-object p1, v1, LH8;->e:LT2;

    if-nez p1, :cond_2

    new-instance p1, LT2;

    invoke-direct {p1}, LT2;-><init>()V

    iput-object p1, v1, LH8;->e:LT2;

    :cond_2
    invoke-virtual {p1, p0}, LT2;->c(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LH8;->k(Z)V

    :try_start_0
    iget-object v2, v0, LT5;->b:Le6;

    invoke-static {v2}, Lnb;->o(Ljava/lang/Object;)V

    iget-object v3, p0, Ls7;->g:Ljava/lang/Object;

    invoke-static {v2, v3}, Lfm;->P(Le6;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p1}, Lj3;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v3}, Lfm;->K(Le6;Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v1}, LH8;->l()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    :goto_1
    invoke-virtual {v1}, LH8;->i()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v2, v3}, Lfm;->K(Le6;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Lu7;->f(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_3
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v1}, LH8;->i()V

    throw p0
.end method

.method public final g()Lm6;
    .locals 0

    iget-object p0, p0, Ls7;->e:LT5;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ls7;->f:Ljava/lang/Object;

    sget-object v1, Lfm;->f:LL;

    iput-object v1, p0, Ls7;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()Le6;
    .locals 0

    iget-object p0, p0, Ls7;->e:LT5;

    iget-object p0, p0, LT5;->b:Le6;

    invoke-static {p0}, Lnb;->o(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ls7;->d:Lg6;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ls7;->e:LT5;

    invoke-static {p0}, LC6;->V(LS5;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
