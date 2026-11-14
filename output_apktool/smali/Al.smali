.class public final LAl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:I

.field public final synthetic f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V
    .locals 0

    iput-object p1, p0, LAl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p0, p2}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 0

    new-instance p2, LAl;

    iget-object p0, p0, LAl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p2, p0, p1}, LAl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ll6;->a:Ll6;

    iget v1, p0, LAl;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, LAl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

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

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v4}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y()Lmf;

    move-result-object p1

    iput v3, p0, LAl;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lv7;->b:LJ6;

    new-instance v3, Llf;

    invoke-direct {v3, p1, v2}, Llf;-><init>(Lmf;LS5;)V

    invoke-static {v1, v3, p0}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v4, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->b1:LXk;

    if-eqz p0, :cond_4

    iget-object p1, p0, LXk;->c:LNb;

    invoke-interface {p1}, LS9;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v2, p0

    :cond_3
    if-eqz v2, :cond_4

    const/4 p0, 0x0

    invoke-virtual {v4, v2, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V(LXk;Z)V

    :cond_4
    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, LAl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, LAl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, LAl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
