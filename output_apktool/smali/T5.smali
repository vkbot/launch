.class public abstract LT5;
.super Lj3;
.source "SourceFile"


# instance fields
.field public final b:Le6;

.field public transient c:LS5;


# direct methods
.method public constructor <init>(LS5;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, LS5;->i()Le6;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, LT5;-><init>(LS5;Le6;)V

    return-void
.end method

.method public constructor <init>(LS5;Le6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj3;-><init>(LS5;)V

    .line 2
    iput-object p2, p0, LT5;->b:Le6;

    return-void
.end method


# virtual methods
.method public final i()Le6;
    .locals 0

    iget-object p0, p0, LT5;->b:Le6;

    invoke-static {p0}, Lnb;->o(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, LT5;->c:LS5;

    if-eqz v0, :cond_3

    if-eq v0, p0, :cond_3

    iget-object v1, p0, LT5;->b:Le6;

    invoke-static {v1}, Lnb;->o(Ljava/lang/Object;)V

    sget-object v2, LT7;->b:LT7;

    invoke-interface {v1, v2}, Le6;->b(Ld6;)Lc6;

    move-result-object v1

    invoke-static {v1}, Lnb;->o(Ljava/lang/Object;)V

    check-cast v1, LU5;

    check-cast v0, Ls7;

    :cond_0
    sget-object v1, Ls7;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lfm;->g:LL;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LN3;

    if-eqz v1, :cond_1

    check-cast v0, LN3;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    sget-object v1, LN3;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly7;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ly7;->c()V

    sget-object v2, LDe;->a:LDe;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    sget-object v0, LZ4;->a:LZ4;

    iput-object v0, p0, LT5;->c:LS5;

    return-void
.end method
