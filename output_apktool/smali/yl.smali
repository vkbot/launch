.class public final Lyl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:I

.field public final synthetic f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic g:Lif;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lif;LS5;)V
    .locals 0

    iput-object p1, p0, Lyl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, Lyl;->g:Lif;

    invoke-direct {p0, p3}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance p2, Lyl;

    iget-object v0, p0, Lyl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, Lyl;->g:Lif;

    invoke-direct {p2, v0, p0, p1}, Lyl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;Lif;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ll6;->a:Ll6;

    iget v1, p0, Lyl;->e:I

    sget-object v2, Lsm;->a:Lsm;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p1, p0, Lyl;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p1}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->y()Lmf;

    move-result-object p1

    iput v3, p0, Lyl;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lv7;->b:LJ6;

    new-instance v3, Ljf;

    iget-object v4, p0, Lyl;->g:Lif;

    const/4 v5, 0x0

    invoke-direct {v3, p1, v4, v5}, Ljf;-><init>(Lmf;Lif;LS5;)V

    invoke-static {v1, v3, p0}, Lnb;->l0(Lg6;Lha;LS5;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object v2
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lyl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lyl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lyl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
