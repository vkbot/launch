.class public abstract Lzh;
.super LI8;
.source "SourceFile"


# instance fields
.field public c:Lj6;


# virtual methods
.method public final g(Le6;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lzh;->c:Lj6;

    sget-object p1, Lj6;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object p1, LCj;->g:LTh;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lj6;->b(Ljava/lang/Runnable;LTh;Z)V

    return-void
.end method
