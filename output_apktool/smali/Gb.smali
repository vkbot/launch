.class public final LGb;
.super Lih;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public c:LCe;

.field public d:LLc;

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:LHb;


# direct methods
.method public constructor <init>(LHb;LS5;)V
    .locals 0

    iput-object p1, p0, LGb;->g:LHb;

    invoke-direct {p0, p2}, Lih;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance v0, LGb;

    iget-object p0, p0, LGb;->g:LHb;

    invoke-direct {v0, p0, p1}, LGb;-><init>(LHb;LS5;)V

    iput-object p2, v0, LGb;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ll6;->a:Ll6;

    iget v1, p0, LGb;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, LGb;->d:LLc;

    iget-object v3, p0, LGb;->c:LCe;

    iget-object v4, p0, LGb;->f:Ljava/lang/Object;

    check-cast v4, LMh;

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    iget-object p1, p0, LGb;->f:Ljava/lang/Object;

    check-cast p1, LMh;

    iget-object v1, p0, LGb;->g:LHb;

    invoke-virtual {v1}, LHb;->y()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lm4;

    if-eqz v4, :cond_3

    check-cast v1, Lm4;

    iget-object v1, v1, Lm4;->e:LHb;

    iput v3, p0, LGb;->e:I

    invoke-virtual {p1, v1, p0}, LMh;->b(Ljava/lang/Object;Lih;)V

    return-object v0

    :cond_3
    instance-of v3, v1, LQa;

    if-eqz v3, :cond_5

    check-cast v1, LQa;

    invoke-interface {v1}, LQa;->b()LCe;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, LLc;->k()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    invoke-static {v3, v4}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, LLc;

    move-object v4, p1

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    instance-of p1, v1, Lm4;

    if-eqz p1, :cond_4

    move-object p1, v1

    check-cast p1, Lm4;

    iput-object v4, p0, LGb;->f:Ljava/lang/Object;

    iput-object v3, p0, LGb;->c:LCe;

    iput-object v1, p0, LGb;->d:LLc;

    iput v2, p0, LGb;->e:I

    iget-object p1, p1, Lm4;->e:LHb;

    invoke-virtual {v4, p1, p0}, LMh;->b(Ljava/lang/Object;Lih;)V

    return-object v0

    :cond_4
    :goto_1
    invoke-virtual {v1}, LLc;->l()LLc;

    move-result-object v1

    goto :goto_0

    :cond_5
    :goto_2
    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LMh;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, LGb;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, LGb;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, LGb;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
