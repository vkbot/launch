.class public final LBl;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V
    .locals 0

    iput-object p1, p0, LBl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p0, p2}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 0

    new-instance p2, LBl;

    iget-object p0, p0, LBl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p2, p0, p1}, LBl;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    sget-object p1, LSb;->a:LSb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p1}, LSb;->b(Z)V

    sget-object p1, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, LBl;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a0()V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, LBl;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, LBl;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, LBl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
