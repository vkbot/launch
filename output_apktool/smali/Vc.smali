.class public final synthetic LVc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/omoda/launcher/MainActivity;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/omoda/launcher/MainActivity;II)V
    .locals 0

    iput p3, p0, LVc;->a:I

    iput-object p1, p0, LVc;->b:Lcom/omoda/launcher/MainActivity;

    iput p2, p0, LVc;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "MainActivity"

    iget v1, p0, LVc;->c:I

    const-string v2, "this$0"

    iget-object v3, p0, LVc;->b:Lcom/omoda/launcher/MainActivity;

    const/4 v4, 0x1

    iget p0, p0, LVc;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v3, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {}, Lgf;->j()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Service still not connected after enable, retry full recovery"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lcom/omoda/launcher/MainActivity;->M(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v1}, Lcom/omoda/launcher/MainActivity;->D(I)V

    :goto_0
    return-void

    :pswitch_0
    sget-object p0, Lcom/omoda/launcher/MainActivity;->O:Lcom/omoda/launcher/MainActivity;

    invoke-static {v3, v2}, Lnb;->r(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, LC6;->t(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    new-instance v2, Landroid/content/ComponentName;

    const-class v5, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-direct {v2, v3, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Recovery: installed="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ours="

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    add-int/2addr v1, v4

    invoke-virtual {v3, v1}, Lcom/omoda/launcher/MainActivity;->M(I)V

    goto :goto_1

    :cond_1
    iget-object p0, v3, Lcom/omoda/launcher/MainActivity;->F:Landroid/os/Handler;

    invoke-static {v3, p0}, LC6;->h(Landroid/content/Context;Landroid/os/Handler;)V

    new-instance v0, LVc;

    invoke-direct {v0, v3, v1, v4}, LVc;-><init>(Lcom/omoda/launcher/MainActivity;II)V

    const-wide/16 v1, 0x898

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
