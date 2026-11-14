.class public LBb;
.super LHb;
.source "SourceFile"


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>(Lyb;)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LHb;-><init>(Z)V

    invoke-virtual {p0, p1}, LHb;->B(Lyb;)V

    sget-object p1, LHb;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll4;

    instance-of v2, v1, Lm4;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lm4;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LCb;->n()LHb;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, LHb;->v()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll4;

    instance-of v4, v1, Lm4;

    if-eqz v4, :cond_2

    check-cast v1, Lm4;

    goto :goto_2

    :cond_2
    move-object v1, v3

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, LCb;->n()LHb;

    move-result-object v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, LBb;->c:Z

    return-void
.end method


# virtual methods
.method public final v()Z
    .locals 0

    iget-boolean p0, p0, LBb;->c:Z

    return p0
.end method

.method public final w()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
