.class public abstract LR4;
.super LQ4;
.source "SourceFile"


# direct methods
.method public static s0(Ljava/util/ArrayList;Ljava/util/Collection;)V
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static t0(Ljava/util/ArrayList;Lda;)V
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lmb;

    invoke-static {p0}, LM4;->o0(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3}, Lkb;-><init>(III)V

    iget v0, v0, Lkb;->b:I

    if-ltz v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    move v5, v2

    :goto_2
    if-eqz v1, :cond_6

    if-ne v4, v0, :cond_3

    if-eqz v1, :cond_2

    move v1, v2

    move v6, v4

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_3
    add-int/lit8 v6, v4, 0x1

    :goto_3
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Lda;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v8, v3, :cond_4

    :goto_4
    move v4, v6

    goto :goto_2

    :cond_4
    if-eq v5, v4, :cond_5

    invoke-virtual {p0, v5, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v5, p1, :cond_7

    invoke-static {p0}, LM4;->o0(Ljava/util/List;)I

    move-result p1

    if-gt v5, p1, :cond_7

    :goto_5
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eq p1, v5, :cond_7

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_7
    return-void
.end method
