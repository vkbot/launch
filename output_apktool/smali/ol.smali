.class public final Lol;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:I

.field public final synthetic f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic g:Lcom/omoda/launcher/data/RemoteApp;

.field public final synthetic h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic i:LB4;

.field public final synthetic j:Lhl;

.field public final synthetic k:LJl;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/RemoteApp;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LB4;Lhl;LJl;LS5;)V
    .locals 0

    iput-object p1, p0, Lol;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, Lol;->g:Lcom/omoda/launcher/data/RemoteApp;

    iput-object p3, p0, Lol;->h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p4, p0, Lol;->i:LB4;

    iput-object p5, p0, Lol;->j:Lhl;

    iput-object p6, p0, Lol;->k:LJl;

    invoke-direct {p0, p7}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 8

    new-instance p2, Lol;

    iget-object v5, p0, Lol;->j:Lhl;

    iget-object v6, p0, Lol;->k:LJl;

    iget-object v4, p0, Lol;->i:LB4;

    iget-object v1, p0, Lol;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v2, p0, Lol;->g:Lcom/omoda/launcher/data/RemoteApp;

    iget-object v3, p0, Lol;->h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    move-object v0, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lol;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/RemoteApp;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LB4;Lhl;LJl;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ll6;->a:Ll6;

    iget v1, p0, Lol;->e:I

    sget-object v2, Lsm;->a:Lsm;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lol;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    :cond_2
    iget-object v5, p0, Lol;->g:Lcom/omoda/launcher/data/RemoteApp;

    invoke-virtual {v5}, Lcom/omoda/launcher/data/RemoteApp;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, "_"

    invoke-static {v6, v7, v8}, LSi;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/omoda/launcher/data/RemoteApp;->getId()I

    move-result v4

    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B()LLm;

    move-result-object v5

    invoke-virtual {v5}, LLm;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v6, LN2;

    iget-object v7, p0, Lol;->i:LB4;

    const/4 v8, 0x3

    invoke-direct {v6, v1, v8, v7}, LN2;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v4, v5, p1, v6}, LT0;->b(ILjava/lang/String;Ljava/io/File;Lda;)Z

    move-result v1

    iget-object v7, p0, Lol;->j:Lhl;

    if-nez v1, :cond_4

    sget-object p1, Lv7;->a:LT6;

    sget-object p1, Lcd;->a:LCa;

    new-instance v1, Lkl;

    const/4 v4, 0x0

    invoke-direct {v1, v7, v4}, Lkl;-><init>(Lhl;LS5;)V

    iput v3, p0, Lol;->e:I

    invoke-static {p1, v1, p0}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    return-object v2

    :cond_4
    sget-object v0, Ljb;->a:Landroid/os/Handler;

    new-instance v0, Lml;

    iget-object v8, p0, Lol;->k:LJl;

    iget-object v6, p0, Lol;->g:Lcom/omoda/launcher/data/RemoteApp;

    iget-object v1, p0, Lol;->h:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v10, p0, Lol;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    move-object v4, v0

    move-object v5, v1

    move-object v9, p1

    invoke-direct/range {v4 .. v10}, Lml;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/RemoteApp;Lhl;LJl;Ljava/io/File;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    invoke-static {v1, p1, v3, v3, v0}, Ljb;->a(Landroid/content/Context;Ljava/io/File;ZZLha;)V

    return-object v2
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lol;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lol;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lol;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
