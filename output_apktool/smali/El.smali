.class public final LEl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:I

.field public final synthetic f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic g:Landroid/widget/TextView;

.field public final synthetic h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V
    .locals 0

    iput-object p1, p0, LEl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, LEl;->g:Landroid/widget/TextView;

    iput-object p3, p0, LEl;->h:Landroid/widget/TextView;

    invoke-direct {p0, p4}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 2

    new-instance p2, LEl;

    iget-object v0, p0, LEl;->g:Landroid/widget/TextView;

    iget-object v1, p0, LEl;->h:Landroid/widget/TextView;

    iget-object p0, p0, LEl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p2, p0, v0, v1, p1}, LEl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ll6;->a:Ll6;

    iget v1, p0, LEl;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, p0, LEl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->B()LLm;

    move-result-object p1

    invoke-virtual {p1}, LLm;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "license_key"

    const-string v3, ""

    invoke-static {p1}, LT0;->a(Ljava/lang/String;)Lrc;

    move-result-object p1

    const-string v4, "https://omoda-c5-launcher.ru/api/activate"

    invoke-static {v4, p1}, LT0;->d(Ljava/lang/String;Ljava/util/AbstractList;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_2

    new-instance p1, LQ0;

    const-string v1, "network"

    invoke-direct {p1, v4, v1, v5}, LQ0;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v4, p1

    goto :goto_3

    :cond_2
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "activated"

    invoke-virtual {v6, p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v7, "status"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "optString(...)"

    invoke-static {v7, v8}, Lnb;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :goto_1
    move-object v1, v5

    goto :goto_2

    :cond_3
    invoke-virtual {v6, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LSi;->M(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v3, LQ0;

    invoke-direct {v3, p1, v7, v1}, LQ0;-><init>(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "activateOnline parse failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ApiClient"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, LQ0;

    const-string v1, "parse"

    invoke-direct {p1, v4, v1, v5}, LQ0;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_3
    sget-object p1, Lv7;->a:LT6;

    sget-object p1, Lcd;->a:LCa;

    new-instance v1, LDl;

    iget-object v7, p0, LEl;->h:Landroid/widget/TextView;

    iget-object v6, p0, LEl;->g:Landroid/widget/TextView;

    iget-object v5, p0, LEl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, LDl;-><init>(LQ0;Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Landroid/widget/TextView;Landroid/widget/TextView;LS5;)V

    iput v2, p0, LEl;->e:I

    invoke-static {p1, v1, p0}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    return-object v0

    :cond_5
    :goto_4
    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, LEl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, LEl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, LEl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
