.class public final LIa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Lcom/omoda/launcher/data/PrefsAppOrderStore;


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/data/PrefsAppOrderStore;I)V
    .locals 0

    iput p2, p0, LIa;->a:I

    iput-object p1, p0, LIa;->b:Lcom/omoda/launcher/data/PrefsAppOrderStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 5

    iget v0, p0, LIa;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "installed"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LIa;->b:Lcom/omoda/launcher/data/PrefsAppOrderStore;

    invoke-interface {p0}, Lcom/omoda/launcher/data/AppOrderStore;->load()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, LG0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LG0;-><init>(I)V

    invoke-static {p1, p0}, LL4;->A0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_2

    :cond_0
    new-instance v0, LTa;

    new-instance v1, LS4;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, LS4;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x0

    invoke-direct {v0, p0, v1}, LTa;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result p0

    invoke-static {p0}, Lid;->p0(I)I

    move-result p0

    const/16 v1, 0x10

    if-ge p0, v1, :cond_1

    move p0, v1

    :cond_1
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, LTa;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, LUa;

    iget-object v2, v0, LUa;->a:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, LUa;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSa;

    iget-object v2, v0, LSa;->b:Ljava/lang/Object;

    iget v0, v0, LSa;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v3}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p1, LHa;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, LHa;-><init>(Ljava/util/LinkedHashMap;I)V

    invoke-static {p0, p1}, LL4;->A0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    new-instance p1, LG0;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, LG0;-><init>(I)V

    invoke-static {v0, p1}, LL4;->A0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, LL4;->z0(Ljava/util/List;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_2
    return-object p0

    :pswitch_0
    const-string v0, "installed"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LIa;->b:Lcom/omoda/launcher/data/PrefsAppOrderStore;

    invoke-interface {p0}, Lcom/omoda/launcher/data/AppOrderStore;->load()Ljava/util/List;

    move-result-object p0

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LTa;

    new-instance v1, LS4;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, LS4;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x0

    invoke-direct {v0, p0, v1}, LTa;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result p0

    invoke-static {p0}, Lid;->p0(I)I

    move-result p0

    const/16 v1, 0x10

    if-ge p0, v1, :cond_5

    move p0, v1

    :cond_5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, LTa;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    move-object v0, p0

    check-cast v0, LUa;

    iget-object v2, v0, LUa;->a:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, LUa;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSa;

    iget-object v2, v0, LSa;->b:Ljava/lang/Object;

    iget v0, v0, LSa;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v3}, Lcom/omoda/launcher/data/AppInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v4}, Lcom/omoda/launcher/data/AppInfo;->getTile()LP8;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    new-instance v0, LHa;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, LHa;-><init>(Ljava/util/LinkedHashMap;I)V

    invoke-static {p0, v0}, LL4;->A0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, LL4;->z0(Ljava/util/List;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance p1, LG0;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, LG0;-><init>(I)V

    invoke-static {v2, p1}, LL4;->A0(Ljava/util/List;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, LL4;->z0(Ljava/util/List;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
