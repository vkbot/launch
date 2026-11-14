.class public final synthetic LPe;
.super Lra;
.source "SourceFile"

# interfaces
.implements LS9;


# instance fields
.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p6, p0, LPe;->i:I

    invoke-direct/range {p0 .. p5}, Lra;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 11

    sget-object v0, Lsm;->a:Lsm;

    iget-object v1, p0, LI3;->b:Ljava/lang/Object;

    iget p0, p0, LPe;->i:I

    packed-switch p0, :pswitch_data_0

    check-cast v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast v1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LO8;->a:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B()LLm;

    move-result-object p0

    sget-object v0, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v9, LA4;

    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y()Lmf;

    move-result-object v4

    const-class v5, Lmf;

    const-string v6, "isConnected"

    const/4 v3, 0x1

    const-string v7, "isConnected(Lcom/omoda/launcher/factory/Phone;)Z"

    const/4 v8, 0x2

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, LA4;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "FactoryPrograms"

    const-string v3, "programs ("

    const-string v4, "vhal"

    invoke-static {p0, v4}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-boolean v4, LD3;->b:Z

    if-eqz v4, :cond_0

    invoke-static {v1, p0, v0, v9}, LO8;->g(Landroid/content/Context;LLm;Ljava/lang/String;LA4;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v1, p0, v0, v9}, LO8;->f(Landroid/content/Context;LLm;Ljava/lang/String;LA4;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    sget-object v9, Lz4;->g:Lz4;

    const/16 v10, 0x1f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, LL4;->y0(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lda;I)Ljava/lang/String;

    move-result-object v0

    sget-object v5, LO8;->m:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sput-object v0, LO8;->m:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_1

    const-string v3, "Fun"

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-string v3, "classic"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v0, "stock programs failed"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lv8;->a:Lv8;

    :cond_2
    :goto_3
    invoke-virtual {v1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->A()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, LL4;->z0(Ljava/util/List;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast v1, Landroidx/activity/b;

    invoke-virtual {v1}, Landroidx/activity/b;->d()V

    return-object v0

    :pswitch_2
    check-cast v1, Landroidx/activity/b;

    invoke-virtual {v1}, Landroidx/activity/b;->d()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
