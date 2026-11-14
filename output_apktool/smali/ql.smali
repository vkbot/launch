.class public final Lql;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public final synthetic e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V
    .locals 0

    iput-object p1, p0, Lql;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p0, p2}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 0

    new-instance p2, Lql;

    iget-object p0, p0, Lql;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p2, p0, p1}, Lql;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, p0, Lql;->e:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object p0, p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->v:Lfj;

    invoke-virtual {p0}, Lfj;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LE7;

    invoke-virtual {p0}, LE7;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TopOverlayA11y"

    const-string v0, "Sport toggle failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-object p0, Lsm;->a:Lsm;

    return-object p0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lql;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lql;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lql;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
