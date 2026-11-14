.class public final Lzl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:I

.field public final synthetic f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic g:Lhf;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lhf;Ljava/lang/String;LS5;)V
    .locals 0

    iput-object p1, p0, Lzl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, Lzl;->g:Lhf;

    iput-object p3, p0, Lzl;->h:Ljava/lang/String;

    invoke-direct {p0, p4}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 2

    new-instance p2, Lzl;

    iget-object v0, p0, Lzl;->g:Lhf;

    iget-object v1, p0, Lzl;->h:Ljava/lang/String;

    iget-object p0, p0, Lzl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p2, p0, v0, v1, p1}, Lzl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lhf;Ljava/lang/String;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x1

    sget-object v1, Ll6;->a:Ll6;

    iget v2, p0, Lzl;->e:I

    const/4 v3, 0x0

    iget-object v4, p0, Lzl;->g:Lhf;

    iget-object v5, p0, Lzl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    if-eqz v2, :cond_1

    if-ne v2, v0, :cond_0

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v5}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y()Lmf;

    move-result-object p1

    iput v0, p0, Lzl;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lv7;->b:LJ6;

    new-instance v6, Lkf;

    invoke-direct {v6, p1, v4, v3}, Lkf;-><init>(Lmf;Lhf;LS5;)V

    invoke-static {v2, v6, p0}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    check-cast p1, Lrf;

    instance-of v1, p1, Lnf;

    if-nez v1, :cond_7

    instance-of v1, p1, Lqf;

    if-eqz v1, :cond_3

    :try_start_0
    check-cast p1, Lqf;

    iget-object p0, p1, Lqf;->a:Landroid/content/Intent;

    invoke-virtual {v5, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": stock screen failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TopOverlayA11y"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    instance-of v1, p1, Lpf;

    if-eqz v1, :cond_4

    sget-object p0, LO8;->a:Ljava/util/Set;

    sget-object p0, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "context"

    invoke-static {v5, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, p0}, LO8;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "aa_no_connected"

    invoke-static {p0, p1}, LO8;->j(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-static {v5, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_4
    instance-of v1, p1, Lof;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Lof;

    iget-object v1, v1, Lof;->a:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, LN4;->r0(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    if-ltz v4, :cond_5

    check-cast v6, Lif;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v6, Lif;->a:Ljava/lang/String;

    new-instance v8, Laf;

    invoke-direct {v8, v4, v6}, Laf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_1

    :cond_5
    invoke-static {}, LM4;->q0()V

    throw v3

    :cond_6
    new-instance v0, LN2;

    check-cast p1, Lof;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1, v5}, LN2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, Lzl;->h:Ljava/lang/String;

    const-string p1, ""

    invoke-virtual {v5, p0, v2, p1, v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->t0(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lda;)V

    :cond_7
    :goto_2
    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lzl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lzl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lzl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
