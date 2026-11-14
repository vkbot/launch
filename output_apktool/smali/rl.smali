.class public final Lrl;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;


# direct methods
.method public synthetic constructor <init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V
    .locals 0

    iput p1, p0, Lrl;->a:I

    iput-object p2, p0, Lrl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 p1, 0x0

    iget-object v0, p0, Lrl;->b:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    iget p0, p0, Lrl;->a:I

    packed-switch p0, :pswitch_data_0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p2, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->Q0:Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->P0:LWk;

    if-eqz p2, :cond_3

    iget-object p2, p2, LWk;->a:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/omoda/launcher/data/Preset;

    invoke-virtual {v1}, Lcom/omoda/launcher/data/Preset;->getLeftApp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/omoda/launcher/data/Preset;->getRightApp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lnb;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    iput-object p1, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->P0:LWk;

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_5

    const-string p0, "android.intent.extra.hardkey.keycode"

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string v2, "android.intent.extra.hardkey.down"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    const/16 v2, 0xa4

    if-ne p0, v2, :cond_4

    if-nez p2, :cond_4

    iget-object v2, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->w:Landroid/os/Handler;

    new-instance v3, LJk;

    const/16 v4, 0xb

    invoke-direct {v3, v4, v0}, LJk;-><init>(ILcom/omoda/launcher/service/TopOverlayAccessibilityService;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    const/16 v2, 0x126

    if-ne p0, v2, :cond_5

    if-nez p2, :cond_5

    sget-object p0, Ljm;->a:Ljm;

    invoke-static {}, Ljm;->d()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string p2, "sport_key_enabled"

    invoke-interface {p0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "SWC star up: sportKeyEnabled="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TopOverlayA11y"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->x:LP5;

    sget-object p2, Lv7;->b:LJ6;

    new-instance v1, Lql;

    invoke-direct {v1, v0, p1}, Lql;-><init>(Lcom/omoda/launcher/service/TopOverlayAccessibilityService;LS5;)V

    const/4 p1, 0x2

    invoke-static {p0, p2, v1, p1}, Lnb;->M(Lk6;Lg6;Lha;I)LCi;

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
