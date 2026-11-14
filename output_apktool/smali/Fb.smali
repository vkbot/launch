.class public final LFb;
.super La3;
.source "SourceFile"


# instance fields
.field public final b:LCb;

.field public c:LCe;

.field public final synthetic d:LHb;

.field public final synthetic e:LQa;


# direct methods
.method public constructor <init>(LCb;LHb;LQa;)V
    .locals 0

    iput-object p2, p0, LFb;->d:LHb;

    iput-object p3, p0, LFb;->e:LQa;

    invoke-direct {p0}, La3;-><init>()V

    iput-object p1, p0, LFb;->b:LCb;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, LLc;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, LFb;->b:LCb;

    if-eqz p2, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, LFb;->c:LCe;

    :goto_1
    if-eqz v1, :cond_4

    sget-object v2, LLc;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_2
    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_4

    iget-object p0, p0, LFb;->c:LCe;

    invoke-static {p0}, Lnb;->o(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, LLc;->j(LLc;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_2

    :cond_4
    :goto_2
    return-void
.end method

.method public final c(Ljava/lang/Object;)LL;
    .locals 0

    check-cast p1, LLc;

    iget-object p1, p0, LFb;->d:LHb;

    invoke-virtual {p1}, LHb;->y()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, LFb;->e:LQa;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lnb;->g:LL;

    :goto_0
    return-object p0
.end method
