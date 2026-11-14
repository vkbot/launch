.class public final Lul;
.super Ldj;
.source "SourceFile"

# interfaces
.implements Lha;


# instance fields
.field public e:I

.field public final synthetic f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;ZLS5;)V
    .locals 0

    iput-object p1, p0, Lul;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-boolean p2, p0, Lul;->g:Z

    invoke-direct {p0, p3}, Ldj;-><init>(LS5;)V

    return-void
.end method


# virtual methods
.method public final a(LS5;Ljava/lang/Object;)LS5;
    .locals 1

    new-instance p2, Lul;

    iget-object v0, p0, Lul;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-boolean p0, p0, Lul;->g:Z

    invoke-direct {p2, v0, p0, p1}, Lul;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;ZLS5;)V

    return-object p2
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ll6;->a:Ll6;

    iget v1, p0, Lul;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lgf;->v(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lul;->g:Z

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    :goto_0
    iput v2, p0, Lul;->e:I

    iget-object v1, p0, Lul;->f:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {v1, p1, p0}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->a(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;ILT5;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lk6;

    check-cast p2, LS5;

    invoke-virtual {p0, p2, p1}, Lul;->a(LS5;Ljava/lang/Object;)LS5;

    move-result-object p0

    check-cast p0, Lul;

    sget-object p1, Lsm;->a:Lsm;

    invoke-virtual {p0, p1}, Lul;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
