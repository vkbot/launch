.class public final Lkf;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Lmf;

.field public final synthetic f:Lhf;


# direct methods
.method public constructor <init>(Lmf;Lhf;LS5;)V
    .locals 0

    iput-object p1, p0, Lkf;->e:Lmf;

    iput-object p2, p0, Lkf;->f:Lhf;

    invoke-direct {p0, p3}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance p2, Lkf;

    iget-object v0, p0, Lkf;->e:Lmf;

    iget-object p0, p0, Lkf;->f:Lhf;

    invoke-direct {p2, v0, p0, p1}, Lkf;-><init>(Lmf;Lhf;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    iget-object p1, p0, Lkf;->e:Lmf;

    iget-object v0, p0, Lkf;->f:Lhf;

    invoke-virtual {p1, v0}, Lmf;->a(Lhf;)Z

    move-result p1

    iget-object v0, p0, Lkf;->e:Lmf;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, v0, Lmf;->b:Ljava/util/Set;

    iget-object v3, p0, Lkf;->f:Lhf;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5}, Lid;->p0(I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    iget-object v2, v0, Lmf;->b:Ljava/util/Set;

    iget-object v3, p0, Lkf;->f:Lhf;

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Lid;->p0(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    move v6, v5

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_2

    invoke-static {v7, v3}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v1

    move v8, v5

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    if-eqz v8, :cond_1

    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_2
    iput-object v4, v0, Lmf;->b:Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkf;->f:Lhf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " tapped, session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    const-string v1, "on"

    goto :goto_3

    :cond_4
    const-string v1, "off"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneProjection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    iget-object p1, p0, Lkf;->e:Lmf;

    iget-object p0, p0, Lkf;->f:Lhf;

    invoke-virtual {p1, p0}, Lmf;->d(Lhf;)Lrf;

    move-result-object p0

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lkf;->e:Lmf;

    iget-object p0, p0, Lkf;->f:Lhf;

    invoke-virtual {p1, p0}, Lmf;->c(Lhf;)Lrf;

    move-result-object p0

    :goto_4
    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lkf;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lkf;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lkf;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
