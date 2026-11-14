.class public final LMl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:I

.field public final synthetic f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic g:Lcom/omoda/launcher/data/AppInfo;

.field public final synthetic h:Landroid/widget/TextView;

.field public final synthetic i:LR2;

.field public final synthetic j:Landroid/widget/TextView;

.field public final synthetic k:Landroid/widget/TextView;

.field public final synthetic l:Landroid/widget/TextView;

.field public final synthetic m:Landroid/widget/TextView;

.field public final synthetic n:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/AppInfo;Landroid/widget/TextView;LR2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V
    .locals 0

    iput-object p1, p0, LMl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, LMl;->g:Lcom/omoda/launcher/data/AppInfo;

    iput-object p3, p0, LMl;->h:Landroid/widget/TextView;

    iput-object p4, p0, LMl;->i:LR2;

    iput-object p5, p0, LMl;->j:Landroid/widget/TextView;

    iput-object p6, p0, LMl;->k:Landroid/widget/TextView;

    iput-object p7, p0, LMl;->l:Landroid/widget/TextView;

    iput-object p8, p0, LMl;->m:Landroid/widget/TextView;

    iput-object p9, p0, LMl;->n:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p0, p10}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 11

    new-instance p2, LMl;

    iget-object v8, p0, LMl;->m:Landroid/widget/TextView;

    iget-object v9, p0, LMl;->n:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v1, p0, LMl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v2, p0, LMl;->g:Lcom/omoda/launcher/data/AppInfo;

    iget-object v3, p0, LMl;->h:Landroid/widget/TextView;

    iget-object v4, p0, LMl;->i:LR2;

    iget-object v5, p0, LMl;->j:Landroid/widget/TextView;

    iget-object v6, p0, LMl;->k:Landroid/widget/TextView;

    iget-object v7, p0, LMl;->l:Landroid/widget/TextView;

    move-object v0, p2

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, LMl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/data/AppInfo;Landroid/widget/TextView;LR2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    sget-object v2, Ll6;->a:Ll6;

    iget v0, v1, LMl;->e:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lgf;->v(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object v0, LQ2;->a:Landroid/os/Handler;

    iget-object v0, v1, LMl;->g:Lcom/omoda/launcher/data/AppInfo;

    invoke-virtual {v0}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, LMl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const-string v5, "context"

    invoke-static {v0, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "packageName"

    invoke-static {v4, v5}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v5, "storagestats"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v5, "null cannot be cast to non-null type android.app.usage.StorageStatsManager"

    invoke-static {v0, v5}, Lnb;->p(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    sget-object v5, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v0, v5, v4, v6}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    const-string v5, "queryStatsForPackage(...)"

    invoke-static {v0, v5}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, LM2;

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getAppBytes()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v9

    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v11

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-gez v6, :cond_2

    move-wide v9, v11

    :cond_2
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v11

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, LM2;-><init>(JJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v9, v5

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "query("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") failed: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AppStorage"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_0

    :goto_1
    sget-object v0, Lv7;->a:LT6;

    sget-object v0, Lcd;->a:LCa;

    new-instance v4, LLl;

    iget-object v7, v1, LMl;->h:Landroid/widget/TextView;

    iget-object v8, v1, LMl;->i:LR2;

    iget-object v10, v1, LMl;->j:Landroid/widget/TextView;

    iget-object v11, v1, LMl;->k:Landroid/widget/TextView;

    iget-object v12, v1, LMl;->l:Landroid/widget/TextView;

    iget-object v13, v1, LMl;->m:Landroid/widget/TextView;

    iget-object v14, v1, LMl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v15, v1, LMl;->n:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const/16 v16, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v16}, LLl;-><init>(Landroid/widget/TextView;LR2;LM2;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    iput v3, v1, LMl;->e:I

    invoke-static {v0, v4, v1}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_3

    return-object v2

    :cond_3
    :goto_2
    sget-object v0, Lsm;->a:Lsm;

    return-object v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, LMl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, LMl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, LMl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
