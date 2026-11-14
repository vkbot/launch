.class public final LRl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:Ljava/io/File;

.field public f:I

.field public final synthetic g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic h:Lcom/omoda/launcher/data/RemoteApp;

.field public final synthetic i:Landroid/widget/TextView;

.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/RemoteApp;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;LS5;)V
    .locals 0

    iput-object p1, p0, LRl;->g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, LRl;->h:Lcom/omoda/launcher/data/RemoteApp;

    iput-object p3, p0, LRl;->i:Landroid/widget/TextView;

    iput-object p4, p0, LRl;->j:Landroid/widget/TextView;

    iput-object p5, p0, LRl;->k:Landroid/widget/LinearLayout;

    invoke-direct {p0, p6}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 7

    new-instance p2, LRl;

    iget-object v4, p0, LRl;->j:Landroid/widget/TextView;

    iget-object v5, p0, LRl;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, LRl;->g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v2, p0, LRl;->h:Lcom/omoda/launcher/data/RemoteApp;

    iget-object v3, p0, LRl;->i:Landroid/widget/TextView;

    move-object v0, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, LRl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/RemoteApp;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ll6;->a:Ll6;

    iget v1, p0, LRl;->f:I

    iget-object v5, p0, LRl;->j:Landroid/widget/TextView;

    iget-object v4, p0, LRl;->i:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v0, p0, LRl;->e:Ljava/io/File;

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, LRl;->g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    :cond_3
    iget-object v7, p0, LRl;->h:Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v7}, Lcom/omoda/launcher/data/RemoteApp;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, " "

    const-string v10, "_"

    invoke-static {v8, v9, v10}, LSi;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ".apk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p1, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result v6

    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B()LLm;

    move-result-object v7

    invoke-virtual {v7}, LLm;->b()Ljava/lang/String;

    move-result-object v7

    new-instance v8, LN2;

    const/4 v9, 0x5

    invoke-direct {v8, v1, v9, v4}, LN2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v6, v7, p1, v8}, LT0;->b(ILjava/lang/String;Ljava/io/File;Lda;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_5

    sget-object v1, Lv7;->a:LT6;

    sget-object v1, Lcd;->a:LCa;

    new-instance v2, LNl;

    invoke-direct {v2, v4, v6}, LNl;-><init>(Landroid/widget/TextView;LS5;)V

    iput-object p1, p0, LRl;->e:Ljava/io/File;

    iput v3, p0, LRl;->f:I

    invoke-static {v1, v2, p0}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, p1

    :goto_0
    sget-object p1, Ljb;->a:Landroid/os/Handler;

    new-instance p1, LOl;

    iget-object v3, p0, LRl;->k:Landroid/widget/LinearLayout;

    iget-object v6, p0, LRl;->h:Lcom/omoda/launcher/data/RemoteApp;

    iget-object p0, p0, LRl;->g:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, LOl;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/data/RemoteApp;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, p1, v1}, Ljb;->b(Landroid/content/Context;Ljava/io/File;ZLha;I)V

    goto :goto_1

    :cond_5
    sget-object p1, Lv7;->a:LT6;

    sget-object p1, Lcd;->a:LCa;

    new-instance v1, LPl;

    invoke-direct {v1, v4, v5, v6}, LPl;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V

    iput v2, p0, LRl;->f:I

    invoke-static {p1, v1, p0}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, LRl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, LRl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, LRl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
