.class public abstract Lf;
.super LHb;
.source "SourceFile"

# interfaces
.implements LS5;
.implements Lk6;


# instance fields
.field public final c:Le6;


# direct methods
.method public constructor <init>(Le6;Z)V
    .locals 0

    invoke-direct {p0, p2}, LHb;-><init>(Z)V

    sget-object p2, LT7;->f:LT7;

    invoke-interface {p1, p2}, Le6;->b(Ld6;)Lc6;

    move-result-object p2

    check-cast p2, Lyb;

    invoke-virtual {p0, p2}, LHb;->B(Lyb;)V

    invoke-interface {p1, p0}, Le6;->f(Le6;)Le6;

    move-result-object p1

    iput-object p1, p0, Lf;->c:Le6;

    return-void
.end method


# virtual methods
.method public final A(Lc5;)V
    .locals 0

    iget-object p0, p0, Lf;->c:Le6;

    invoke-static {p0, p1}, Lfm;->q(Le6;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final G(Ljava/lang/Object;)V
    .locals 0

    instance-of p0, p1, La5;

    if-eqz p0, :cond_0

    check-cast p1, La5;

    iget-object p0, p1, La5;->a:Ljava/lang/Throwable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, La5;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    :cond_0
    return-void
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
    invoke-virtual {p0, p1}, LHb;->D(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, LC6;->k:LL;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lf;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()Le6;
    .locals 0

    iget-object p0, p0, Lf;->c:Le6;

    return-object p0
.end method

.method public final i()Le6;
    .locals 0

    iget-object p0, p0, Lf;->c:Le6;

    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " was cancelled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
