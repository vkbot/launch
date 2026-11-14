.class public final Ldl;
.super LNb;
.source "SourceFile"

# interfaces
.implements Lda;


# instance fields
.field public final synthetic b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Z)V
    .locals 0

    iput-object p1, p0, Ldl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-boolean p2, p0, Ldl;->c:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/omoda/launcher/data/AppInfo;

    const-string v0, "app"

    invoke-static {p1, v0}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ldl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v1, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V0:LB4;

    iget-boolean p0, p0, Ldl;->c:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getTile()LP8;

    move-result-object p0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->F()V

    invoke-virtual {v1, p1}, LB4;->h(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1
    if-eqz p0, :cond_b

    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getLabel()Ljava/lang/String;

    move-result-object p1

    sget-object v1, LO8;->a:Ljava/util/Set;

    iget-boolean v1, p0, LP8;->d:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B()LLm;

    move-result-object v1

    invoke-static {p0, v1}, LO8;->e(LP8;LLm;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object p0, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, LO8;->i(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "no_igon"

    invoke-static {p0, p1}, LO8;->j(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    :cond_3
    iget-object v1, p0, LP8;->f:Lhf;

    if-eqz v1, :cond_4

    new-instance p0, Lzl;

    invoke-direct {p0, v0, v1, p1, v2}, Lzl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lhf;Ljava/lang/String;LS5;)V

    const/4 p1, 0x3

    iget-object v0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    invoke-static {v0, v2, p0, p1}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    goto/16 :goto_4

    :cond_4
    const/4 p1, 0x1

    iget-object v4, p0, LP8;->b:Landroid/content/ComponentName;

    if-nez v4, :cond_5

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move p1, v3

    :goto_1
    const-string v1, "TopOverlayA11y"

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B()LLm;

    move-result-object p0

    const-string p1, "vhal"

    invoke-static {p0, p1}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [B

    fill-array-data p1, :array_0

    invoke-virtual {p0}, LLm;->a()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object p0, p0, LLm;->b:Ljava/lang/Object;

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setProperty"

    const-class v4, Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    filled-new-array {v4, v5, v5, v6}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v2, [B

    const v4, 0x2170c000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v4, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    :goto_2
    const-string p0, "360 camera command not sent"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    if-eqz v4, :cond_a

    :try_start_1
    iget-boolean p1, p0, LP8;->c:Z

    if-eqz p1, :cond_9

    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_3

    :cond_9
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_3
    invoke-static {p1}, Lnb;->o(Ljava/lang/Object;)V

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v2, 0x10200000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    :cond_a
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Stock program "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LP8;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :cond_b
    invoke-virtual {p1}, Lcom/omoda/launcher/data/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->P(Ljava/lang/String;Landroid/content/Intent;)V

    :goto_4
    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method
