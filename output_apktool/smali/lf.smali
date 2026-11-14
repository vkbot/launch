.class public final Llf;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Lmf;


# direct methods
.method public constructor <init>(Lmf;LS5;)V
    .locals 0

    iput-object p1, p0, Llf;->e:Lmf;

    invoke-direct {p0, p2}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 0

    new-instance p2, Llf;

    iget-object p0, p0, Llf;->e:Lmf;

    invoke-direct {p2, p0, p1}, Llf;-><init>(Lmf;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    iget-object p1, p0, Llf;->e:Lmf;

    iget-object p1, p1, Lmf;->a:Ljava/lang/Object;

    iget-object v0, p0, Llf;->e:Lmf;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lhf;

    invoke-virtual {v0, v3}, Lmf;->a(Lhf;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, LL4;->F0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Llf;->e:Lmf;

    iget-object v0, v0, Lmf;->b:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Llf;->e:Lmf;

    iput-object p1, p0, Lmf;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Llf;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Llf;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Llf;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
