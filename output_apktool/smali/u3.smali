.class public final synthetic Lu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lu3;->a:I

    iput p1, p0, Lu3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lu3;->b:I

    const/4 v1, 0x1

    iget p0, p0, Lu3;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lv3;->a:Landroid/os/Handler;

    add-int/2addr v0, v1

    invoke-static {v0}, Lv3;->a(I)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/omoda/launcher/service/TopOverlayAccessibilityService;->n1:Lcom/omoda/launcher/service/TopOverlayAccessibilityService;

    invoke-static {}, Lgf;->j()Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lv3;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "app"

    if-eqz p0, :cond_1

    invoke-static {p0}, LC6;->t(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-static {p0}, LC6;->d(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-interface {v4, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lv3;->b:Landroid/content/Context;

    if-eqz p0, :cond_0

    sget-object v2, Lv3;->a:Landroid/os/Handler;

    invoke-static {p0, v2}, LC6;->h(Landroid/content/Context;Landroid/os/Handler;)V

    new-instance p0, Lu3;

    invoke-direct {p0, v0, v1}, Lu3;-><init>(II)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Lnb;->j0(Ljava/lang/String;)V

    throw v2

    :cond_2
    add-int/2addr v0, v1

    invoke-static {v0}, Lv3;->a(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
