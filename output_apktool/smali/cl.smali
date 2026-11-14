.class public final Lcl;
.super LNb;
.source "SourceFile"

# interfaces
.implements LS9;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

.field public final synthetic d:LKg;


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LKg;I)V
    .locals 0

    iput p3, p0, Lcl;->b:I

    iput-object p1, p0, Lcl;->c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iput-object p2, p0, Lcl;->d:LKg;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LNb;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "list"

    const/4 v2, 0x1

    iget-object v3, p0, Lcl;->c:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget-object v4, p0, Lcl;->d:LKg;

    iget p0, p0, Lcl;->b:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, v4, LKg;->a:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, LXk;

    sget-object v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-virtual {v3, p0, v2}, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->V(LXk;Z)V

    sget-object p0, Lsm;->a:Lsm;

    return-object p0

    :cond_0
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean p0, v3, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->T0:Z

    if-eqz p0, :cond_2

    iget-object p0, v3, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->U0:LXk;

    iget-object v3, v4, LKg;->a:Ljava/lang/Object;

    if-eqz v3, :cond_1

    check-cast v3, LXk;

    if-ne p0, v3, :cond_2

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lnb;->j0(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
