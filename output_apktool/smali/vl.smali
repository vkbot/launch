.class public final Lvl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:I

.field public f:I

.field public g:Ljava/util/List;

.field public h:Ljava/util/List;

.field public i:Ljava/util/Iterator;

.field public j:Lcom/omoda/launcher/data/RemoteApp;

.field public k:Ljava/lang/String;

.field public l:I

.field public final synthetic m:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic n:Z


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;ZLS5;)V
    .locals 0

    iput-object p1, p0, Lvl;->m:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-boolean p2, p0, Lvl;->n:Z

    invoke-direct {p0, p3}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance p2, Lvl;

    iget-object v0, p0, Lvl;->m:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-boolean p0, p0, Lvl;->n:Z

    invoke-direct {p2, v0, p0, p1}, Lvl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;ZLS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Ll6;->a:Ll6;

    iget v1, p0, Lvl;->l:I

    sget-object v2, Lsm;->a:Lsm;

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    iget-boolean v6, p0, Lvl;->n:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lvl;->m:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v1, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget v1, p0, Lvl;->e:I

    iget-object v5, p0, Lvl;->k:Ljava/lang/String;

    iget-object v6, p0, Lvl;->j:Lcom/omoda/launcher/data/RemoteApp;

    iget-object v7, p0, Lvl;->i:Ljava/util/Iterator;

    iget-object v10, p0, Lvl;->h:Ljava/util/List;

    iget-object v11, p0, Lvl;->g:Ljava/util/List;

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_2
    iget v1, p0, Lvl;->f:I

    iget v5, p0, Lvl;->e:I

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget v1, p0, Lvl;->e:I

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f060058

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-nez v6, :cond_5

    iput v1, p0, Lvl;->e:I

    iput v7, p0, Lvl;->l:I

    invoke-static {v9, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LT5;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    :goto_0
    const/4 p1, 0x0

    if-nez v6, :cond_6

    iget-object v10, v9, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e:Ljava/util/List;

    if-eqz v10, :cond_6

    move v10, v7

    goto :goto_1

    :cond_6
    move v10, p1

    :goto_1
    if-nez v6, :cond_a

    sget-object v11, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v11, "connectivity"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Landroid/net/ConnectivityManager;

    if-eqz v12, :cond_7

    check-cast v11, Landroid/net/ConnectivityManager;

    goto :goto_2

    :cond_7
    move-object v11, v8

    :goto_2
    if-nez v11, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v11

    if-eqz v11, :cond_9

    goto :goto_3

    :cond_9
    move v11, p1

    goto :goto_4

    :cond_a
    :goto_3
    move v11, v7

    :goto_4
    if-nez v10, :cond_b

    if-eqz v11, :cond_b

    sget-object v12, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v9}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w0()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, LXk;

    iget-object v13, v13, LXk;->a:Lz2;

    iget-object v13, v13, Lz2;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v13, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_b
    if-nez v11, :cond_c

    move-object p1, v8

    goto :goto_7

    :cond_c
    sget-object p1, Lv7;->b:LJ6;

    new-instance v11, Lul;

    invoke-direct {v11, v9, v6, v8}, Lul;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;ZLS5;)V

    iput v1, p0, Lvl;->e:I

    iput v10, p0, Lvl;->f:I

    iput v5, p0, Lvl;->l:I

    invoke-static {p1, v11, p0}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_d

    return-object v0

    :cond_d
    move v5, v1

    move v1, v10

    :goto_6
    check-cast p1, Ljava/util/List;

    move v10, v1

    move v1, v5

    :goto_7
    sget-object v5, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v9}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w0()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LXk;

    iget-object v6, v6, LXk;->a:Lz2;

    const/16 v11, 0x8

    iget-object v6, v6, Lz2;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    :cond_e
    if-nez p1, :cond_11

    if-nez v10, :cond_10

    invoke-virtual {v9}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w0()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LXk;

    iget-object v0, v9, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e:Ljava/util/List;

    if-nez v0, :cond_f

    invoke-virtual {v9, p1, v8}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->u0(LXk;Ljava/util/List;)V

    :cond_f
    iget-object p1, p1, LXk;->a:Lz2;

    sget-object v0, LKi;->a:LKi;

    invoke-static {}, LKi;->e()LOg;

    move-result-object v0

    iget-object v0, v0, LOg;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lz2;->b(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    return-object v2

    :cond_11
    iput-object p1, v9, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->e:Ljava/util/List;

    iput-boolean v7, v9, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->f:Z

    invoke-virtual {v9}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w0()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LXk;

    invoke-virtual {v9, v6, p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->u0(LXk;Ljava/util/List;)V

    goto :goto_a

    :cond_12
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v7}, Lcom/omoda/launcher/data/RemoteApp;->getIconUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    invoke-static {v5}, LL4;->v0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v9, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-static {v5}, LL4;->F0(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v11, p1

    move-object v10, v5

    move-object v7, v6

    :cond_15
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v6}, Lcom/omoda/launcher/data/RemoteApp;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_16

    goto :goto_c

    :cond_16
    iget-object p1, v9, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-nez p1, :cond_19

    sget-object p1, Lv7;->b:LJ6;

    new-instance v12, Ltl;

    invoke-direct {v12, v9, v5, v1, v8}, Ltl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/lang/String;ILS5;)V

    iput-object v11, p0, Lvl;->g:Ljava/util/List;

    iput-object v10, p0, Lvl;->h:Ljava/util/List;

    iput-object v7, p0, Lvl;->i:Ljava/util/Iterator;

    iput-object v6, p0, Lvl;->j:Lcom/omoda/launcher/data/RemoteApp;

    iput-object v5, p0, Lvl;->k:Ljava/lang/String;

    iput v1, p0, Lvl;->e:I

    iput v4, p0, Lvl;->l:I

    invoke-static {p1, v12, p0}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_17

    return-object v0

    :cond_17
    :goto_d
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_18

    iget-object v12, v9, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v12, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_18
    move-object p1, v8

    :goto_e
    if-nez p1, :cond_19

    goto :goto_c

    :cond_19
    sget-object v5, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v9}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w0()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, LXk;

    iget-object v12, v12, LXk;->a:Lz2;

    invoke-virtual {v6}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result v13

    iget-object v12, v12, Lz2;->h:LY0;

    invoke-virtual {v12, v13, p1}, LY0;->k(ILandroid/graphics/Bitmap;)V

    goto :goto_f

    :cond_1a
    sget-object p1, Lv7;->b:LJ6;

    new-instance v1, Lsl;

    invoke-direct {v1, v9, v11, v10, v8}, Lsl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Ljava/util/List;Ljava/util/List;LS5;)V

    iput-object v8, p0, Lvl;->g:Ljava/util/List;

    iput-object v8, p0, Lvl;->h:Ljava/util/List;

    iput-object v8, p0, Lvl;->i:Ljava/util/Iterator;

    iput-object v8, p0, Lvl;->j:Lcom/omoda/launcher/data/RemoteApp;

    iput-object v8, p0, Lvl;->k:Ljava/lang/String;

    iput v3, p0, Lvl;->l:I

    invoke-static {p1, v1, p0}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_1b

    return-object v0

    :cond_1b
    :goto_10
    return-object v2
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lvl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lvl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lvl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
